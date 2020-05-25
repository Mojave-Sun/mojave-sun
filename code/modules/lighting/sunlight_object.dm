// //todo: handle moving sunlight turfs - see various uses of get_turf in lighting_object


// /*

// Sunlight System

// 	Objects + Details
// 		Sunlight Objects (this file)
// 			- Grayscale version of lighting_object
// 			- Has 3 states
// 				- SUNLIGHT_INDOOR  (0)
// 					- Turfs that are indoors. Has no light themselves but is affected by SUNLIGHT_BORDER
// 				- SUNLIGHT_OUTDOOR (1)
// 					- Turfs that are outdoors, with no neighbouring SUNLIGHT_INDOOR tiles
// 					  Emits no light, but is fully white to display the overlay colour
// 				- SUNLIGHT_BORDER  (2)
// 					-Turfs that are outdoors, which neighbour at least one SUNLIGHT_INDOOR tile.
// 				     Emits light to indoor tiles, and fully white to display the overlay colour

// 		Sunlight Overlay
// 			- per client screen overlay. This handles the actual sunlight colour.

// 		Sunlight Subsystem
// 			- Handles the sunlight object update queue, and the sunlight overlay colours


// 	todo:
// 	Investigate having SUNLIGHT_INDOOR also place themselves on a different layer of the sunlight plane,
// 	so that we can have a weather effect overlay without displaying indoors

// */


// /* turf fuckery */
// /turf/var/tmp/atom/movable/sunlight_object/sunlight_object /* a turf's sunlight overlay */


// /atom/movable/sunlight_object
// 	name = ""
// 	mouse_opacity = 0
// 	anchored = 1
// 	// blend_mode		    = BLEND_ADD
// 	icon                	= LIGHTING_ICON
// 	icon_state          	= null
// 	plane 					= SUNLIGHTING_PLANE
// 	layer 					= SUNLIGHTING_LAYER
// 	invisibility 			= INVISIBILITY_LIGHTING
// 	color 					= LIGHTING_BASE_MATRIX
// 	render_target 			= SUNLIGHTING_RENDER_TARGET

// 	/* misc vars */
// 	var/turf/list/neighbourTurfs = list()
// 	var/state 					 = SUNLIGHT_OUTDOOR
// 	var/turf/roofTurf
// 	var/turf/source_turf
// 	var/datum/lighting_corner/list/affectingCorners = list()


// /atom/movable/sunlight_object/Destroy(var/force)
// 	if (force)
// 		var/turf/badTurf = get_turf(source_turf)
// 		stack_trace("A sunlighting object has been deleted [COORD(badTurf)]")
// 		return ..()

// 	else
// 		return QDEL_HINT_LETMELIVE

// /atom/movable/sunlight_object/New(var/turf/ownerTurf)
// 	source_turf = ownerTurf

// /atom/movable/sunlight_object/Initialize()
// 	if (source_turf.sunlight_object)
// 		qdel(source_turf.sunlight_object, force = TRUE)
// 	source_turf.sunlight_object = src
// 	GLOB.sunlight_objects += src
// 	neighbourTurfs = GetNeighbours()

// /atom/movable/sunlight_object/proc/GetState()
// 	var/oldState = state
// 	if(!src.HasRoof())
// 		state = SUNLIGHT_OUTDOOR
// 		for(var/turf/CT in neighbourTurfs)
// 			if(CT.sunlight_object && CT.sunlight_object.HasRoof()) /* update our unroofed, unlighty friends */
// 				state = SUNLIGHT_BORDER
// 				break
// 	else /* roofed, so turn off the lights*/
// 		state = SUNLIGHT_INDOOR

// 	if(oldState != state)
// 		DisableSunlight()



// /atom/movable/sunlight_object/proc/GetNeighbours()
// 	return RANGE_TURFS(1, src)

// /atom/movable/sunlight_object/proc/GetRoof()

// /atom/movable/sunlight_object/proc/HasRoof()
// 	return(!istype(src.source_turf, /turf/open/floor/plating/ground))


// /atom/movable/sunlight_object/proc/DisableSunlight()
// 	for(var/datum/lighting_corner/C in affectingCorners)
// 		LAZYREMOVE(C.globAffect, src)
// 		C.getSunFalloff()
// 		GLOB.SUNLIGHT_QUEUE_CORNER += C.masters

// /atom/movable/sunlight_object/proc/ProcessState()
// 	switch(state)
// 		if(SUNLIGHT_INDOOR)
// 			color = SUNLIGHT_DARK_MATRIX //get the dark thing
// 			luminosity = 0
// 		if(SUNLIGHT_OUTDOOR)
// 			color = SSsunlight.color //transparent
// 			luminosity = 1
// 		if(SUNLIGHT_BORDER)
// 			CalcSunlightSpread()
// 			color = SSsunlight.color //transparent
// 			luminosity = 1

// /atom/movable/sunlight_object/proc/UpdateColour()

// 	if (state != SUNLIGHT_INDOOR)
// 		return /* full bright, not for me sorry */

// 	/* check if we are globally affected or not */
// 	var/static/datum/lighting_corner/dummy/dummy_lighting_corner = new


// 	var/datum/lighting_corner/cr = dummy_lighting_corner
// 	var/datum/lighting_corner/cg = dummy_lighting_corner
// 	var/datum/lighting_corner/cb = dummy_lighting_corner
// 	var/datum/lighting_corner/ca = dummy_lighting_corner

// 	cr = source_turf.corners[3] || dummy_lighting_corner
// 	cg = source_turf.corners[2] || dummy_lighting_corner
// 	cb = source_turf.corners[4] || dummy_lighting_corner
// 	ca = source_turf.corners[1] || dummy_lighting_corner

// 	var/fr = cr.sunFalloff
// 	var/fg = cg.sunFalloff
// 	var/fb = cb.sunFalloff
// 	var/fa = ca.sunFalloff

// 	#if LIGHTING_SOFT_THRESHOLD != 0
// 	luminosity = max(fr, fg, fb, fa) > LIGHTING_SOFT_THRESHOLD
// 	#else
// 	luminosity = max(fr, fg, fb, fa) > 1e-6
// 	#endif

// 	//anything that passes the first case is very likely to pass the second, and addition is a little faster in this case
// 	if((fr & fg & fb & fa) && (fr + fg + fb + fa == 4)) /* this will likely never happen */
// 		color = null
// 	else if(!luminosity)
// 		color = SUNLIGHT_DARK_MATRIX
// 	else
// 		color = list(
// 					fr, fr, fr,  00 ,
// 					fg, fg, fg,  00 ,
// 					fb, fb, fb,  00 ,
// 					fa, fa, fa,  00 ,
// 					00, 00, 00,  01 )


// /* calculate the indoor corners we are affecting */
// #define SUN_FALLOFF(C, T) (1 - CLAMP01(sqrt((C.x - T.x) ** 2 + (C.y - T.y) ** 2 + LIGHTING_HEIGHT) / max(1, GLOB.GLOBAL_LIGHT_RANGE)))
// /atom/movable/sunlight_object/proc/CalcSunlightSpread()
// 	var/datum/lighting_corner/C
// 	var/turf/T
// 	var/thing
// 	var/list/tempMasterList = list() /* to mimimize double ups */
// 	var/list/cuddlyCorners  = list() /* corners we are currently affecting */

// 	for(T in view(CEILING(GLOB.GLOBAL_LIGHT_RANGE, 1), source_turf))
// 		for (thing in T.get_corners(source_turf))
// 			C = thing
// 			cuddlyCorners  |= C
// 			tempMasterList |= C.masters

// 	/* fix up the lists */
// 	/* add ourselves and distance from the corner */
// 	LAZYINITLIST(affectingCorners)
// 	var/list/L = cuddlyCorners - affectingCorners
// 	affectingCorners += L
// 	for (thing in L)
// 		C = thing
// 		LAZYSET(C.globAffect, src, SUN_FALLOFF(C,source_turf))
// 		if(C.globAffect[src] > C.sunFalloff) /* if are closer than current dist, update the corner */
// 			C.sunFalloff = C.globAffect[src]

// 	L = affectingCorners - cuddlyCorners // Now-gone corners, remove us from the affecting.
// 	affectingCorners -= L
// 	for (thing in L)
// 		C = thing
// 		LAZYREMOVE(C.globAffect, src)
// 		C.getSunFalloff()
// 		tempMasterList |= C.masters /* update the dudes we just removed  */


// 	GLOB.SUNLIGHT_QUEUE_CORNER += tempMasterList /* update the boys */

// #undef SUN_FALLOFF
