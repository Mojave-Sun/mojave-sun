/turf/closed/wall/ms13
	name = "base class wall"
	desc = "God has abandoned us"
	icon_state = "wall-0"
	base_icon_state = "wall"
	layer = EDGED_TURF_LAYER
	smoothing_flags = SMOOTH_BITMASK
	smoothing_groups = list(SMOOTH_GROUP_MS13_WALL)
	canSmoothWith= list(SMOOTH_GROUP_MS13_WALL)

/turf/closed/wall/ms13/metal
	name = "metal wall"
	desc = ""
	icon = 'mojave/icons/turf/walls/metal.dmi'

/turf/closed/wall/ms13/metal/rust
	name = "rusted metal wall"
	desc = ""
	icon = 'mojave/icons/turf/walls/rustmetal.dmi'

/turf/closed/wall/ms13/wood
	name = "wood wall"
	desc = ""
	icon = 'mojave/icons/turf/walls/wood.dmi'

/turf/closed/wall/ms13/wood/log
	name = "log wall"
	desc = ""
	icon = 'mojave/icons/turf/walls/woodlog.dmi'

/turf/closed/wall/ms13/scrap
	name = "scrap wall"
	desc = ""
	icon = 'mojave/icons/turf/walls/scrap.dmi'

/turf/closed/wall/ms13/scrap/white
	icon = 'mojave/icons/turf/walls/scrapwhite.dmi'

/turf/closed/wall/ms13/scrap/red
	icon = 'mojave/icons/turf/walls/scrapred.dmi'

/turf/closed/wall/ms13/scrap/blue
	icon = 'mojave/icons/turf/walls/scrapblue.dmi'

/turf/closed/wall/ms13/adobe //need
	name = "adobe wall"
	desc = ""
	icon = 'mojave/icons/turf/walls/adobe.dmi'

/turf/closed/wall/ms13/brick
	name = "brick wall"
	desc = ""
	icon = 'mojave/icons/turf/walls/brick.dmi'

/turf/closed/wall/ms13/brick/alt
	icon = 'mojave/icons/turf/walls/brickalt.dmi'

/turf/closed/wall/ms13/brick/gray
	icon = 'mojave/icons/turf/walls/brickgray.dmi'

/turf/closed/wall/r_wall/ms13
	name = "base class wall"
	desc = "AHHH FUCK A BASE CLASS WALL"
	icon_state = "wall-0"
	base_icon_state = "wall"
	layer = EDGED_TURF_LAYER
	smoothing_flags = SMOOTH_BITMASK
	smoothing_groups = list(SMOOTH_GROUP_MS13_WALL)
	canSmoothWith= list(SMOOTH_GROUP_MS13_WALL)

/turf/closed/wall/r_wall/ms13/metal
	name = "reinforced metal wall"
	desc = ""
	icon = 'mojave/icons/turf/walls/rmetal.dmi'

/turf/closed/wall/r_wall/ms13/metal/rust
	name = "rusted reinforced metal wall"
	desc = ""
	icon = 'mojave/icons/turf/walls/rrustmetal.dmi'

/turf/closed/wall/r_wall/ms13/concrete
	name = "concrete wall"
	icon = 'mojave/icons/turf/walls/concrete.dmi'

/turf/closed/wall/r_wall/ms13/concrete/alt
	icon = 'mojave/icons/turf/walls/concretealt.dmi'

/turf/closed/wall/r_wall/ms13/bunker
	name = "bunker wall"
	desc = ""
	icon = 'mojave/icons/turf/walls/bunker.dmi'

/turf/closed/indestructible/ms13
	layer = EDGED_TURF_LAYER

/turf/closed/indestructible/ms13/metal
	name = "metal wall"
	desc = ""
	icon = 'mojave/icons/turf/walls/metal.dmi'
	icon_state = "wall-0"
	base_icon_state = "wall"
	smoothing_flags = SMOOTH_BITMASK
	smoothing_groups = list(SMOOTH_GROUP_MS13_WALL)
	canSmoothWith= list(SMOOTH_GROUP_MS13_WALL)

/turf/closed/indestructible/ms13/comb
	name = "comb wall"
	desc = "honeybeast comb, lining the walls. They subtly drip a substance."
	icon = 'mojave/icons/turf/walls/comb.dmi'
	icon_state = "wall-0"
	base_icon_state = "wall"
	smoothing_flags = SMOOTH_BITMASK
	smoothing_groups = list(SMOOTH_GROUP_MS13_WALL)
	canSmoothWith= list(SMOOTH_GROUP_MS13_WALL)

/turf/closed/indestructible/ms13/matrix
	name = "the matrix"
	desc = "Looking at this gives you the feeling the physical world is very limited... (Click and drag yourself on this to remove your current character from the round.)"
	icon = 'mojave/icons/turf/walls/matrix.dmi'
	icon_state = "matrix"

/turf/closed/indestructible/ms13/matrix/MouseDrop_T(atom/dropping, mob/user)
	. = ..()
	if(dropping != user)
		return //You can only matrix yourself.
	if(!isliving(user) || user.incapacitated())
		return //No ghosts or incapacitated folk allowed to do this.
	var/mob/living/departing_mob = dropping
	if(alert("Are you sure you want to depart the area for good? Your character will be removed from the current round, if you're playing an important job please adminhelp (F1 button) first to let admins know, or if no admins are available try to promote somebody else in your faction to your job and hand them your gear.", "Departing the Wasteland", "Confirm", "Cancel") != "Confirm")
		return
	if(QDELETED(departing_mob) || departing_mob.incapacitated() || !isliving(departing_mob) || get_dist(src, dropping) > 2)
		return //Things have changed since the alert happened.
	var/dat = "[key_name(user)] has despawned themselves, job [departing_mob.job], at [AREACOORD(src)]. Contents despawned along:"
	var/list/stuff = list()
	for(var/thing in departing_mob.GetAllContents())
		if(isobj(thing))
			stuff += "[thing]"
	dat = "[dat] [stuff.Join(", ")]."
	message_admins(dat)
	log_admin(dat)
	departing_mob.visible_message("<span class='notice'>[departing_mob] crosses the border and departs the wasteland.</span>")
	if(iscyborg(departing_mob))
		var/mob/living/silicon/robot/cyborg = departing_mob
		QDEL_NULL(cyborg.mmi) //When you qdel borgs they drop an MMI, so this is needed.
	qdel(departing_mob)
