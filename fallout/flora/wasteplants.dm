//Fallout 13 general flora directory

/obj/structure/flora/grass/wasteland
	icon = 'fallout/icons/flora/flora.dmi'
	desc = "Some dry, virtually dead grass."
	icon_state = "tall_grass_1"

/obj/structure/flora/grass/wasteland/New()
	..()
	icon_state = "tall_grass_[rand(5,8)]"

/obj/structure/flora/grass/wasteland/attackby(obj/item/W, mob/user, params) //we dont use /weapon any more
	if(W.sharpness && W.force > 0 && !(NODECONSTRUCT_1 in flags_1))
		to_chat(user, "You begin to harvest [src]...")
		if(do_after(user, 100/W.force, target = user))
			to_chat(user, "<span class='notice'>You've collected [src]</span>")
			var/obj/item/stack/sheet/hay/H = user.get_inactive_held_item()
			if(istype(H))
				H.add(1)
			else
				new /obj/item/stack/sheet/hay/(get_turf(src))
			qdel(src)
			return 1
	else
		. = ..()

/obj/structure/flora/grass/wasteland/snow
	icon = 'fallout/icons/flora/flora.dmi'
	desc = "Some frozen, virtually dead grass."
	icon_state = "snowgrass_1"

/obj/structure/flora/grass/wasteland/snow/New()
	..()
	icon_state = "snowgrass_[rand(1,8)]"

//Fallout Trees/Foliage

//shrubs
/obj/structure/flora/fallout/shrub
	name = "shrub"
	desc = "An evergreen bush."
	anchored = TRUE
	pixel_x = -16
	layer = FLY_LAYER
	icon = 'fallout/icons/flora/trees.dmi'
	icon_state = "snowshrub_1"
	obj_integrity = 50
	max_integrity = 50
	var/proj_pass_rate = 100

/obj/structure/flora/fallout/shrub/New()
	icon_state = "snowshrub_[rand(1,3)]"
	..()

/obj/structure/flora/bush/fallout
	name = "bush"
	desc = "Some type of shrub."
	icon = 'fallout/icons/flora/flora.dmi'
	icon_state = "snowbush1"
	anchored = TRUE

/obj/structure/flora/bush/fallout/Initialize()
	icon_state = "snowbush_[rand(1,3)]"
	. = ..()

/obj/structure/flora/fallout/shrub/CanAllowThrough(atom/movable/mover, turf/target)//So bullets will fly over and stuff.
	. = ..()
	if(locate(/obj/structure/flora/fallout/shrub) in get_turf(mover))
		return TRUE
	else if(istype(mover, /obj/projectile))
		if(!anchored)
			return TRUE
		var/obj/projectile/proj = mover
		if(proj.firer && Adjacent(proj.firer))
			return TRUE
		if(prob(proj_pass_rate))
			return TRUE
		return FALSE

//trees
/obj/structure/flora/tree/fallout/attackby(obj/item/W, mob/user, params)
	if(log_amount && (!(flags_1 & NODECONSTRUCT_1)))
		if(W.sharpness == IS_SHARP_AXE)
			if(W.hitsound)
				playsound(get_turf(src), 'fallout/sound/f13effects/wood_cutting.ogg', 100, FALSE, FALSE)
				user.visible_message("<span class='notice'>[user] begins to cut down [src] with [W].</span>","<span class='notice'>You begin to cut down [src] with [W].</span>", "<span class='hear'>You hear the sound of chopping.</span>")
				if(do_after(user, 1000/W.force, target = src)) //5 seconds with 20 force, 8 seconds with a hatchet, 20 seconds with a shard.
					user.visible_message("<span class='notice'>[user] fells [src] with the [W].</span>","<span class='notice'>You fell [src] with the [W].</span>", "<span class='hear'>You hear the sound of a tree falling.</span>")
					playsound(get_turf(src), 'sound/effects/meteorimpact.ogg', 100 , FALSE, FALSE)
					user.log_message("cut down [src] at [AREACOORD(src)]", LOG_ATTACK)
					for(var/i=1 to log_amount)
						new /obj/item/grown/log/tree(get_turf(src))
					var/obj/structure/flora/stump/S = new(loc)
					S.name = "[name]_stump"
					qdel(src)
		else
			user.visible_message("<span class='notice'>The [W] is uncapable of cutting down the [src].</span>")
			return ..()

/obj/structure/flora/tree/fallout/deadsnow
	name = "dead tree"
	desc = "It's a tree. Useful for combustion and/or construction."
	icon = 'fallout/icons/flora/trees.dmi'
	icon_state = "snowtree_1"
	log_amount = 3
	obj_integrity = 400
	max_integrity = 400

/obj/structure/flora/tree/fallout/deadsnow/New()
	icon_state = "snowtree_[rand(1,3)]"
	..()

/obj/structure/flora/tree/fallout/pine
	name = "pine tree"
	desc = "An small evergreen, Evergreen even when the bombs dropped."
	icon = 'fallout/icons/flora/trees.dmi'
	icon_state = "pine_1"
	log_amount = 1
	obj_integrity = 400
	max_integrity = 400

/obj/structure/flora/tree/fallout/pine/New()
	icon_state = "pine_[rand(1,2)]"
	..()

/obj/structure/flora/tree/fallout/tallpine
	name = "pine tree"
	desc = "An tall evergreen, Evergreen even when the bombs dropped."
	icon = 'fallout/icons/flora/talltrees.dmi'
	icon_state = "pine_1"
	log_amount = 4
	obj_integrity = 400
	max_integrity = 400

/obj/structure/flora/tree/fallout/tallpine/New()
	icon_state = "pine_[rand(1,3)]"
	..()

/obj/structure/flora/tree/fallout/wasteland
	name = "dead tree"
	desc = "It's a tree. Useful for combustion and/or construction."
	icon = 'fallout/icons/flora/trees.dmi'
	icon_state = "deadtree_1"
	log_amount = 4
	obj_integrity = 400
	max_integrity = 400

/obj/structure/flora/tree/fallout/wasteland/New()
	icon_state = "deadtree_[rand(1,6)]"
	..()

/obj/structure/flora/tree/fallout/joshua
	name = "joshua tree"
	desc = "A tree named by mormons, who said it's branches mimiced the biblical Joshua, raising his hands in prayer."
	icon = 'fallout/icons/flora/trees.dmi'
	log_amount = 3
	icon_state = "joshua_1"
	obj_integrity = 400
	max_integrity = 400

/obj/structure/flora/tree/joshua/fallout/Initialize()
	. = ..()
	icon_state = "joshua_[rand(1,4)]"

/obj/structure/flora/tree/fallout/cactus
	name = "cactus"
	desc = "It's a giant cowboy hat! It's waving hello! It wants you to hug it!"
	icon = 'fallout/icons/flora/trees.dmi'
	icon_state = "cactus"
	log_amount = 2
	obj_integrity = 400
	max_integrity = 400

//for more fallout snow plants (grass etc. search /obj/structure/flora/grass)
