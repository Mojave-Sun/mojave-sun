/turf/closed/wall/ms13
	name = "base class wall"
	desc = "God has abandoned us"
	smoothing_flags = SMOOTH_BITMASK
	smoothing_groups = list(SMOOTH_GROUP_MS13_WALL,SMOOTH_GROUP_MS13_WINDOW)
	canSmoothWith= list(SMOOTH_GROUP_MS13_WALL,SMOOTH_GROUP_MS13_WINDOW)

/turf/closed/wall/ms13/metal
	name = "metal wall"
	desc = ""
	icon = 'mojave/icons/turf/walls/metal.dmi'
	icon_state = "metal-0"
	base_icon_state = "metal"
	smoothing_groups = list(SMOOTH_GROUP_MS13_WALL_METAL,SMOOTH_GROUP_MS13_WINDOW)
	canSmoothWith= list(SMOOTH_GROUP_MS13_WALL_METAL,SMOOTH_GROUP_MS13_WINDOW)

/turf/closed/wall/ms13/metal/rust
	name = "rusted metal wall"
	desc = ""
	icon = 'mojave/icons/turf/walls/rust.dmi'
	icon_state = "rust-0"
	base_icon_state = "rust"

/turf/closed/wall/ms13/wood
	name = "wood wall"
	desc = ""
	icon = 'mojave/icons/turf/walls/wood.dmi'
	icon_state = "wood-0"
	base_icon_state = "wood"
	smoothing_groups = list(SMOOTH_GROUP_MS13_WALL_WOOD,SMOOTH_GROUP_MS13_WINDOW)
	canSmoothWith= list(SMOOTH_GROUP_MS13_WALL_WOOD,SMOOTH_GROUP_MS13_WINDOW)

/turf/closed/wall/ms13/scrap
	name = "scrap wall"
	desc = ""
	icon = 'mojave/icons/turf/walls/scrap.dmi'
	icon_state = "scrap-0"
	base_icon_state = "scrap"
	smoothing_groups = list(SMOOTH_GROUP_MS13_WALL_SCRAP,SMOOTH_GROUP_MS13_WINDOW)
	canSmoothWith= list(SMOOTH_GROUP_MS13_WALL_SCRAP,SMOOTH_GROUP_MS13_WINDOW)

/turf/closed/wall/ms13/adobe
	name = "adobe wall"
	desc = ""
	icon = 'mojave/icons/turf/walls/adobe.dmi'
	icon_state = "adobe-0"
	base_icon_state = "adobe"
	smoothing_groups = list(SMOOTH_GROUP_MS13_WALL_ADOBE,SMOOTH_GROUP_MS13_WINDOW)
	canSmoothWith= list(SMOOTH_GROUP_MS13_WALL_ADOBE,SMOOTH_GROUP_MS13_WINDOW)

/turf/closed/wall/ms13/brick
	name = "brick wall"
	desc = ""
	icon = 'mojave/icons/turf/walls/tallbrick-dark.dmi'
	icon_state = "brick-0"
	base_icon_state = "brick"
	smoothing_groups = list(SMOOTH_GROUP_MS13_WALL_BRICK,SMOOTH_GROUP_MS13_WINDOW)
	canSmoothWith= list(SMOOTH_GROUP_MS13_WALL_BRICK,SMOOTH_GROUP_MS13_WINDOW)
	layer = EDGED_TURF_LAYER

/turf/closed/wall/ms13/brick/alt
	icon = 'mojave/icons/turf/walls/tallbrick-light.dmi'

/turf/closed/wall/r_wall/ms13
	name = "base class wall"
	desc = "AHHH FUCK A BASE CLASS WALL"
	smoothing_flags = SMOOTH_BITMASK
	smoothing_groups = list(SMOOTH_GROUP_MS13_WALL_REINFORCED,SMOOTH_GROUP_MS13_WINDOW)
	canSmoothWith= list(SMOOTH_GROUP_MS13_WALL_REINFORCED,SMOOTH_GROUP_MS13_WINDOW)

/turf/closed/wall/r_wall/ms13/metal
	name = "reinforced metal wall"
	desc = ""
	icon = 'mojave/icons/turf/walls/reinforced_metal.dmi'
	icon_state = "reinforced_metal-0"
	base_icon_state = "reinforced_metal"
	smoothing_groups = list(SMOOTH_GROUP_MS13_WALL_METAL,SMOOTH_GROUP_MS13_WINDOW)
	canSmoothWith= list(SMOOTH_GROUP_MS13_WALL_METAL,SMOOTH_GROUP_MS13_WINDOW)

/turf/closed/wall/r_wall/ms13/metal/rust
	name = "rusted reinforced metal wall"
	desc = ""
	icon = 'mojave/icons/turf/walls/reinforced_rust.dmi'
	icon_state = "reinforced_rust-0"
	base_icon_state = "reinforced_rust"

/turf/closed/wall/r_wall/ms13/bunker
	name = "bunker wall"
	desc = ""
	icon = 'mojave/icons/turf/walls/bunker.dmi'
	icon_state = "bunker-0"
	base_icon_state = "bunker"
	smoothing_groups = list(SMOOTH_GROUP_MS13_WALL_METAL,SMOOTH_GROUP_MS13_WINDOW)
	canSmoothWith= list(SMOOTH_GROUP_MS13_WALL_METAL,SMOOTH_GROUP_MS13_WINDOW)

/turf/closed/indestructible/ms13

/turf/closed/indestructible/ms13/metal
	name = "metal wall"
	desc = ""
	icon = 'mojave/icons/turf/walls/metal.dmi'
	icon_state = "metal-0"
	base_icon_state = "metal"
	smoothing_groups = list(SMOOTH_GROUP_MS13_WALL_METAL,SMOOTH_GROUP_MS13_WINDOW)
	canSmoothWith= list(SMOOTH_GROUP_MS13_WALL_METAL,SMOOTH_GROUP_MS13_WINDOW)

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
