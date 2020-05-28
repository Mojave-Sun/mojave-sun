//todo: handle moving sunlight turfs - see various uses of get_turf in lighting_object


/*

Sunlight System

	Objects + Details
		Sunlight Objects (this file)
			- Grayscale version of lighting_object
			- Has 3 states
				- SUNLIGHT_INDOOR  (0)
					- Turfs that are indoors. Has no light themselves but is affected by SUNLIGHT_BORDER
				- SUNLIGHT_OUTDOOR (1)
					- Turfs that are outdoors, with no neighbouring SUNLIGHT_INDOOR tiles
					  Emits no light, but is fully white to display the overlay colour
				- SUNLIGHT_BORDER  (2)
					-Turfs that are outdoors, which neighbour at least one SUNLIGHT_INDOOR tile.
				     Emits light to indoor tiles, and fully white to display the overlay colour

		Sunlight Overlay
			- per client screen overlay. This handles the actual sunlight colour.

		Sunlight Subsystem
			- Handles the sunlight object update queue, and the sunlight overlay colours


	todo:
	Investigate having SUNLIGHT_INDOOR also place themselves on a different layer of the sunlight plane,
	so that we can have a weather effect overlay without displaying indoors

*/

/atom/movable/sunlight_object
	name = ""
	mouse_opacity = 0
	anchored = 1
	blend_mode		    	= BLEND_OVERLAY
	icon                	= LIGHTING_ICON
	icon_state          	= null
	plane 					= SUNLIGHTING_PLANE /* we put this on a lower level than lighting so we dont multiply anything */
	layer 					= SUNLIGHTING_LAYER
	invisibility 			= INVISIBILITY_LIGHTING
	color 					= LIGHTING_BASE_MATRIX

	var/hasCalcedSunlightSpread = TRUE

	// render_target 			= SUNLIGHTING_RENDER_TARGET

	/* misc vars */
	var/list/turf/neighbourTurfs = list()
	var/state 					 = SUNLIGHT_OUTDOOR
	var/turf/roofTurf
	var/turf/source_turf
	// var/list/datum/lighting_corner/affectingCorners
	var/list/turf/affectingTurfs


/atom/movable/sunlight_object/Destroy(var/force)
	if (force)
		var/turf/badTurf = get_turf(source_turf)
		stack_trace("A sunlighting object has been deleted [COORD(badTurf)]")
		return ..()

	else
		return QDEL_HINT_LETMELIVE


/atom/movable/sunlight_object/Initialize(mapload)
	. = ..()
	source_turf = src.loc
	// source_turf.vis_contents += src
	if (source_turf.sunlight_object)
		qdel(source_turf.sunlight_object, force = TRUE)
	source_turf.sunlight_object = src
	GLOB.sunlight_objects += src
	neighbourTurfs = GetNeighbours()

/atom/movable/sunlight_object/proc/GetState()
	var/oldState = state
	if(!src.HasRoof())
		state = SUNLIGHT_OUTDOOR
		for(var/turf/CT in neighbourTurfs)
			if(CT.sunlight_object && CT.sunlight_object.HasRoof()) /* update our unroofed, unlighty friends */
				state = SUNLIGHT_BORDER
				break
	else /* roofed, so turn off the lights*/
		state = SUNLIGHT_INDOOR

	if(oldState != state)
		DisableSunlight()



/atom/movable/sunlight_object/proc/GetNeighbours()
	return RANGE_TURFS(1, source_turf)

/* yoinked from look up - should make a getCeiling proc or some such to combine */
/atom/movable/sunlight_object/proc/HasRoof()
	if(source_turf.GetCeilingTurf())
		return TRUE
	return FALSE

/* run up the Z column until we hit a non openspace turf, or the top of the map */
/turf/proc/GetCeilingTurf()
	var/turf/ceiling = get_step_multiz(src, UP)
	if(!ceiling) //We are at the highest z-level.
		return null
		//todo: handle roofed turfs at top Z level - likely will have a an effect or something that adds hasRoof()
	else if(!isopenspace(ceiling)) //There is no openspace turf above us.
		return ceiling
	return ceiling.GetCeilingTurf()


/atom/movable/sunlight_object/proc/DisableSunlight()
	for(var/turf/T in affectingTurfs)
		LAZYREMOVE(T.globAffect, src)
		for(var/datum/lighting_corner/C in T.get_corners())
			C.getSunFalloff()
			GLOB.SUNLIGHT_QUEUE_CORNER += C.masters

/atom/movable/sunlight_object/proc/ProcessState()
	switch(state)
		if(SUNLIGHT_INDOOR)
			color = SUNLIGHT_DARK_MATRIX //get the dark thing
			luminosity = 0
		if(SUNLIGHT_OUTDOOR)
			color = SSsunlight.color //transparent
			luminosity = 1
		if(SUNLIGHT_BORDER)
			CalcSunlightSpread()
			color = SSsunlight.color //transparent
			luminosity = GLOB.GLOBAL_LIGHT_RANGE

/atom/movable/sunlight_object/proc/UpdateColour()

	if (state != SUNLIGHT_INDOOR)
		return /* full bright, not for me sorry */

	/* check if we are globally affected or not */
	var/static/datum/lighting_corner/dummy/dummy_lighting_corner = new


	var/datum/lighting_corner/cr = dummy_lighting_corner
	var/datum/lighting_corner/cg = dummy_lighting_corner
	var/datum/lighting_corner/cb = dummy_lighting_corner
	var/datum/lighting_corner/ca = dummy_lighting_corner

	cr = source_turf.corners[3] || dummy_lighting_corner
	cg = source_turf.corners[2] || dummy_lighting_corner
	cb = source_turf.corners[4] || dummy_lighting_corner
	ca = source_turf.corners[1] || dummy_lighting_corner

	var/fr = cr.sunFalloff
	var/fg = cg.sunFalloff
	var/fb = cb.sunFalloff
	var/fa = ca.sunFalloff

	#if LIGHTING_SOFT_THRESHOLD != 0
	luminosity = max(fr, fg, fb, fa) > LIGHTING_SOFT_THRESHOLD
	#else
	luminosity = max(fr, fg, fb, fa) > 1e-6
	#endif

	//anything that passes the first case is very likely to pass the second, and addition is a little faster in this case
	if((fr & fg & fb & fa) && (fr + fg + fb + fa == 4)) /* this will likely never happen */
		color = null
	else if(!luminosity)
		color = SUNLIGHT_DARK_MATRIX
	else
		color = list(
					fr, fr, fr,  00 ,
					fg, fg, fg,  00 ,
					fb, fb, fb,  00 ,
					fa, fa, fa,  00 ,
					00, 00, 00,  01 )


/* calculate the indoor corners we are affecting */
#define SUN_FALLOFF(C, T) (1 - CLAMP01(sqrt((C.x - T.x) ** 2 + (C.y - T.y) ** 2 + LIGHTING_HEIGHT) / max(1, GLOB.GLOBAL_LIGHT_RANGE)))
/atom/movable/sunlight_object/proc/CalcSunlightSpread()

	// var/list/datum/lighting_corner/corners = list()
	var/list/turf/turfs                    = list()
	var/list/datum/lighting_corner/corners  = list() /* corners we are now affecting */
	var/thing
	var/datum/lighting_corner/C
	var/turf/T
	var/list/tempMasterList = list() /* to mimimize double ups */

	for(T in view(CEILING(GLOB.GLOBAL_LIGHT_RANGE, 1), source_turf))
		for (thing in T.get_corners(source_turf))
			C = thing
			corners[C] = 0
		turfs += T

	/* fix up the lists */
	/* add ourselves and our distance to the corner */
	LAZYINITLIST(affectingTurfs)
	var/list/L = turfs - affectingTurfs
	affectingTurfs += L
	for (thing in L)
		T = thing
		LAZYSET(T.globAffect, src, SUN_FALLOFF(T,source_turf))
		/* check if we need to update child corners */
		for(C in T.get_corners())
			if(T.globAffect[src] > C.sunFalloff) /* if are closer than current dist, update the corner */
				C.sunFalloff = T.globAffect[src]
				tempMasterList |= C.masters

	L = affectingTurfs - turfs // Now-gone corners, remove us from the affecting.
	affectingTurfs -= L
	for (thing in L)
		T = thing
		LAZYREMOVE(T.globAffect, src)
		for(C in T.get_corners())
			C.getSunFalloff()
			tempMasterList |= C.masters /* update the dudes we just removed  */


	GLOB.SUNLIGHT_QUEUE_CORNER += tempMasterList /* update the boys */

/* Related object changes */
/* I moved this here to consolidate sunlight changes as much as possible, so its easily disabled */

/* turf fuckery */
/turf/var/tmp/atom/movable/sunlight_object/sunlight_object /* a turf's sunlight overlay */
/turf/var/list/globAffect = list() /* list of sunlight objects affecting this turfs */

/* corner fuckery */
/datum/lighting_corner/var/sunFalloff = 0 /* smallest distance to sunlight turf, for sunlight falloff */
/* loop through our masters and find our strongest sunlight value */
/datum/lighting_corner/proc/getSunFalloff()
	sunFalloff = 0

	for(var/turf/T in masters)
		var/atom/movable/sunlight_object/S
		for(S in T.globAffect)
			sunFalloff = sunFalloff < T.globAffect[S] ? T.globAffect[S] : sunFalloff























#undef SUN_FALLOFF
