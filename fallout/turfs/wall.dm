/turf/closed/wall/f13
	name = "base class wall"
	desc = "God has abandoned us"
	smooth = SMOOTH_TRUE|SMOOTH_OLD
	canSmoothWith = list(/obj/structure/table/low_wall, /turf/closed/wall/f13)

/turf/closed/wall/f13/metal
	name = "metal wall"
	desc = ""
	icon = 'fallout/icons/turf/walls/metal.dmi'
	icon_state = "metal0"
	icon_type_smooth = "metal"
	canSmoothWith = list(/obj/structure/table/low_wall/metal, /turf/closed/wall/f13/metal,
	/obj/structure/table/low_wall/metal/rust, /turf/closed/wall/f13/metal/rust,
	/obj/structure/table/low_wall/reinforced/bunker, /turf/closed/wall/r_wall/f13/bunker,
	/obj/structure/table/low_wall/reinforced/metal/rust, /turf/closed/wall/r_wall/f13/metal/rust,
	/obj/structure/table/low_wall/reinforced/metal, /turf/closed/wall/r_wall/f13/metal)

/turf/closed/wall/f13/metal/rust
	name = "rusted metal wall"
	desc = ""
	icon = 'fallout/icons/turf/walls/rust.dmi'
	icon_state = "rust0"
	icon_type_smooth = "rust"

/turf/closed/wall/f13/wood
	name = "wood wall"
	desc = ""
	icon = 'fallout/icons/turf/walls/wood.dmi'
	icon_state = "wood0"
	icon_type_smooth = "wood"
	canSmoothWith = list(/obj/structure/table/low_wall/wood, /turf/closed/wall/f13/wood)

/turf/closed/wall/f13/scrap
	name = "scrap wall"
	desc = ""
	icon = 'fallout/icons/turf/walls/scrap.dmi'
	icon_state = "scrap0"
	icon_type_smooth = "scrap"
	canSmoothWith = list(/obj/structure/table/low_wall/scrap, /turf/closed/wall/f13/scrap)

/turf/closed/wall/f13/adobe
	name = "adobe wall"
	desc = ""
	icon = 'fallout/icons/turf/walls/adobe.dmi'
	icon_state = "adobe0"
	icon_type_smooth = "adobe"
	canSmoothWith = list(/obj/structure/table/low_wall/adobe, /turf/closed/wall/f13/adobe)

/turf/closed/wall/f13/brick
	name = "brick wall"
	desc = ""
	icon = 'fallout/icons/turf/walls/brick.dmi'
	icon_state = "brick0"
	icon_type_smooth = "brick"
	canSmoothWith = list(/obj/structure/table/low_wall/brick, /turf/closed/wall/f13/brick)

/turf/closed/wall/r_wall/f13
	name = "base class wall"
	desc = "AHHH FUCK A BASE CLASS WALL"
	smooth = SMOOTH_TRUE|SMOOTH_OLD
	canSmoothWith = list(/obj/structure/table/low_wall/reinforced, /turf/closed/wall/r_wall/f13)

/turf/closed/wall/r_wall/f13/metal
	name = "reinforced metal wall"
	desc = ""
	icon = 'fallout/icons/turf/walls/reinforced_metal.dmi'
	icon_state = "reinforced_metal0"
	icon_type_smooth = "reinforced_metal"
	canSmoothWith = list(/obj/structure/table/low_wall/metal, /turf/closed/wall/f13/metal,
	/obj/structure/table/low_wall/metal/rust, /turf/closed/wall/f13/metal/rust,
	/obj/structure/table/low_wall/reinforced/bunker, /turf/closed/wall/r_wall/f13/bunker,
	/obj/structure/table/low_wall/reinforced/metal/rust, /turf/closed/wall/r_wall/f13/metal/rust,
	/obj/structure/table/low_wall/reinforced/metal, /turf/closed/wall/r_wall/f13/metal)

/turf/closed/wall/r_wall/f13/metal/rust
	name = "rusted reinforced metal wall"
	desc = ""
	icon = 'fallout/icons/turf/walls/reinforced_rust.dmi'
	icon_state = "reinforced_rust0"
	icon_type_smooth = "reinforced_rust"

/turf/closed/wall/r_wall/f13/bunker
	name = "bunker wall"
	desc = ""
	icon = 'fallout/icons/turf/walls/bunker.dmi'
	icon_state = "bunker0"
	icon_type_smooth = "bunker"
	canSmoothWith = list(/obj/structure/table/low_wall/metal, /turf/closed/wall/f13/metal,
	/obj/structure/table/low_wall/metal/rust, /turf/closed/wall/f13/metal/rust,
	/obj/structure/table/low_wall/reinforced/bunker, /turf/closed/wall/r_wall/f13/bunker,
	/obj/structure/table/low_wall/reinforced/metal/rust, /turf/closed/wall/r_wall/f13/metal/rust,
	/obj/structure/table/low_wall/reinforced/metal, /turf/closed/wall/r_wall/f13/metal)

/turf/closed/indestructible/f13

/turf/closed/indestructible/f13/metal
	name = "metal wall"
	desc = ""
	icon = 'fallout/icons/turf/walls/metal.dmi'
	icon_state = "metal0"
	icon_type_smooth = "metal"
	canSmoothWith = list(/obj/structure/table/low_wall/metal, /turf/closed/wall/f13/metal,
	/obj/structure/table/low_wall/metal/rust, /turf/closed/wall/f13/metal/rust,
	/obj/structure/table/low_wall/reinforced/bunker, /turf/closed/wall/r_wall/f13/bunker,
	/obj/structure/table/low_wall/reinforced/metal/rust, /turf/closed/wall/r_wall/f13/metal/rust,
	/obj/structure/table/low_wall/reinforced/metal, /turf/closed/wall/r_wall/f13/metal)

/turf/closed/indestructible/f13/matrix
	name = "the matrix"
	desc = "Looking at this gives you the feeling the physical world is very limited... (Click and drag yourself on this to remove your current character from the round.)"
	icon = 'fallout/icons/turf/walls/matrix.dmi'
	icon_state = "matrix"

/turf/closed/indestructible/f13/matrix/MouseDrop_T(atom/dropping, mob/user)
	. = ..()
	if(!isliving(user) || user.incapacitated())
		return //No ghosts or incapacitated folk allowed to do this.
	if(!ishuman(dropping))
		return //Only humans have job slots to be freed.
	var/mob/living/carbon/human/departing_mob = dropping
	if(departing_mob != user && departing_mob.client)
		to_chat(user, "<span class='warning'>This one retains their free will. It's their choice if they want to depart or not.</span>")
		return
	if(alert("Are you sure you want to [departing_mob == user ? "depart the area for good (you" : "send this person away (they"] will be removed from the current round, the job slot freed)?", "Departing the Mojave", "Confirm", "Cancel") != "Confirm")
		return
	if(user.incapacitated() || QDELETED(departing_mob) || (departing_mob != user && departing_mob.client) || get_dist(src, dropping) > 2 || get_dist(src, user) > 2)
		return //Things have changed since the alert happened.
	if(departing_mob.logout_time && departing_mob.logout_time + 5 MINUTES > world.time)
		to_chat(user, "<span class='warning'>This mind has only recently departed. Better give it some more time before taking such a drastic measure.</span>")
		return
	var/dat = "[key_name(user)] has despawned [departing_mob == user ? "themselves" : departing_mob], job [departing_mob.job], at [AREACOORD(src)]. Contents despawned along:"
	if(!length(departing_mob.contents))
		dat += " none."
	else
		var/atom/movable/content = departing_mob.contents[1]
		dat += " [content.name]"
		for(var/i in 2 to length(departing_mob.contents))
			content = departing_mob.contents[i]
			dat += ", [content.name]"
		dat += "."
	message_admins(dat)
	log_admin(dat)
	if(departing_mob.stat == DEAD)
		departing_mob.visible_message("<span class='notice'>[user] pushes the body of [departing_mob] over the border. They're someone else's problem now.</span>")
	else
		departing_mob.visible_message("<span class='notice'>[departing_mob == user ? "Out of their own volition, " : "Ushered by [user], "][departing_mob] crosses the border and departs the Mojave.</span>")
	qdel(departing_mob)
