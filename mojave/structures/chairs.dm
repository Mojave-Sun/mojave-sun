/obj/structure/chair/ms13
    name = "base class Mojave Sun chair"
    desc = "Scream at the coders if you see this."
    icon = 'mojave/icons/structure/chairs.dmi'
    item_chair = /obj/item/chair/ms13

/obj/structure/chair/ms13/metal
    name = "metal chair"
    desc = "An uncomfortable chair."
    icon_state = "metal_chair"
    item_chair = /obj/item/chair/ms13/metal

/obj/structure/chair/ms13/metal/broken
    name = "broken metal chair"
    desc = "A broken chair that is somehow more comfortable than a regular one."
    icon_state = "metal_chair_broken"
    item_chair = /obj/item/chair/ms13/metal/broken

/obj/structure/chair/ms13/metal/unfinished
    name = "unfinished metal chair"
    desc = "Without a backrest, this chair is essentially a stool with rods."
    icon_state = "metal_chair_unfinished"
    item_chair = /obj/item/chair/ms13/metal/unfinished

/obj/structure/chair/ms13/metal/folding
    name = "metal folding chair"
    desc = "Before the war, These were viewed as the lowest form of seat. Now? What's not to love. It's a chair that's easily moveable. Genius!"
    icon_state = "metal_chair_folding"
    item_chair = /obj/item/chair/ms13/metal/folding

/obj/structure/chair/ms13/wood
    name = "wooden chair"
    desc = "An antique wooden chair with a small green cushion."
    icon_state = "wood_chair"
    item_chair = /obj/item/chair/ms13/wood

/obj/structure/chair/ms13/wood/padded
    name = "padded wooden chair"
    desc = "An antique wooden chair with a large, plush red cushion"
    icon_state = "wood_chair_padded"
    item_chair = /obj/item/chair/ms13/wood/padded

/obj/structure/chair/comfy/ms13
    name = "base class Mojave Sun comfy chair"
    desc = "Scream at the coders if you see this."
    icon = 'mojave/icons/structure/chairs.dmi'
    color = null

/obj/structure/chair/comfy/ms13/armchair
    name = "armchair"
    desc = "A once plush velour accent piece, this chair's upholstery has faded."
    icon_state = "armchair"
    armrest_icon = "armchair_armrest"

/obj/structure/chair/comfy/ms13/retro
    name = "retro chair"
    desc = "With a fiberglass body, this chair harkens to a future that never came."
    icon_state = "retro_chair"
    armrest_icon = "retro_chair_armrest"

/obj/structure/chair/comfy/ms13/captain
    name = "captain's chair"
    desc = "Show everyone who is in charge."
    icon_state = "captain_chair"
    armrest_icon = "captain_chair_armrest"

/obj/structure/chair/comfy/ms13/ergo
    name = "ergonomic chair"
    desc = "Even in a nuclear wasteland, one should never neglect their back."
    icon_state = "ergo_chair"
    armrest_icon = "ergo_chair_armrest"
    anchored = FALSE

/obj/structure/chair/comfy/ms13/ergo/Moved()
	. = ..()
	if(has_gravity())
		playsound(src, 'sound/effects/roll.ogg', 100, TRUE)

/obj/structure/chair/office/ms13
    name = "base class Mojave sun office chair"
    desc = "Scream at the coders if you see this."
    icon = 'mojave/icons/structure/chairs.dmi'

/obj/structure/chair/office/ms13/standard
    name = "office chair"
    desc = "Still spins."
    icon_state = "office_chair"

/obj/structure/chair/office/ms13/standard/blue
    icon_state = "office_chair_blue"

/obj/structure/chair/office/ms13/standard/broken
    name = "office chair"
    desc = "Hardly spins."
    icon_state = "office_chair_broken"

/obj/structure/chair/ms13/overlaypickup/plastic
    name = "plastic chair"
    desc = "The most generic chair known to pre-war man."
    icon_state = "plastic_chair"
    armrest_icon = "plastic_chair_armrest"
    item_chair = /obj/item/chair/ms13/plastic

/obj/structure/chair/ms13/overlaypickup //overlay chairs you can pick up
	var/mutable_appearance/armrest
	var/armrest_icon = "comfychair_armrest"

/obj/structure/chair/ms13/overlaypickup/Initialize()
	. = ..()
	armrest = GetArmrest()
	armrest.layer = ABOVE_MOB_LAYER
	return

/obj/structure/chair/ms13/overlaypickup/proc/GetArmrest()
	return mutable_appearance(icon, armrest_icon)

/obj/structure/chair/ms13/overlaypickup/Destroy()
	. = ..()
	QDEL_NULL(armrest)
	return

/obj/structure/chair/ms13/overlaypickup/post_buckle_mob(mob/living/M)
	. = ..()
	update_armrest()

/obj/structure/chair/ms13/overlaypickup/proc/update_armrest()
	if(has_buckled_mobs())
		add_overlay(armrest)
	else
		cut_overlay(armrest)

/obj/structure/chair/ms13/overlaypickup/post_unbuckle_mob()
	. = ..()
	update_armrest()

////ITEM VARIANTS////

/obj/item/chair/ms13
	name = "base class Mojave Sun chair"
	desc = "Scream at the coders if you see this."
	icon = 'mojave/icons/structure/chairs.dmi'
	icon_state = "metal_chair_toppled"
	inhand_icon_state = "metal_chair"
	lefthand_file = 'mojave/icons/mob/inhands/misc/chairs_lefthand.dmi'
	righthand_file = 'mojave/icons/mob/inhands/misc/chairs_righthand.dmi'
	custom_materials = null
	origin_type = /obj/structure/chair/ms13

/obj/item/chair/ms13/metal
	name = "metal chair"
	desc = "An uncomfortable chair."
	icon_state = "metal_chair_toppled"
	inhand_icon_state = "metal_chair"
	custom_materials = list(/datum/material/iron = 2000)
	origin_type = /obj/structure/chair/ms13/metal

/obj/item/chair/ms13/metal/broken
	name = "broken metal chair"
	desc = "A broken chair that is somehow more comfortable than a regular one."
	icon_state = "metal_chair_broken_toppled"
	inhand_icon_state = "metal_chair_broken"
	custom_materials = list(/datum/material/iron = 1000)
	origin_type = /obj/structure/chair/ms13/metal/broken

/obj/item/chair/ms13/metal/unfinished
	name = "unfinished metal chair"
	desc = "Without a backrest, this chair is essentially a stool with rods."
	icon_state = "metal_chair_unfinished_toppled"
	inhand_icon_state = "metal_chair_unfinished"
	custom_materials = list(/datum/material/iron = 1000)
	origin_type = /obj/structure/chair/ms13/metal/unfinished

/obj/item/chair/ms13/metal/folding
	name = "metal folding chair"
	desc = "Before the war, These were viewed as the lowest form of seat. Now? What's not to love. It's a chair that's easily moveable. Genius!"
	icon_state = "metal_chair_folding_toppled"
	inhand_icon_state = "metal_chair_folding"
	custom_materials = list(/datum/material/iron = 1500)
	origin_type = /obj/structure/chair/ms13/metal/folding

/obj/item/chair/ms13/metal/office
	name = "office chair"
	desc = "Still spins, but not like this."
	icon_state = "office_chair_toppled"
	inhand_icon_state = "office_chair"
	origin_type = /obj/structure/chair/office/ms13/standard

/obj/item/chair/ms13/metal/office/broken
	name = "office chair"
	desc = "Hardly spins. Especially not like this."
	icon_state = "office_chair_broken_toppled"
	inhand_icon_state = "office_chair_broken"
	custom_materials = list(/datum/material/iron = 1000)
	origin_type = /obj/structure/chair/office/ms13/standard/broken

/obj/item/chair/ms13/metal/office/blue
	name = "office chair"
	desc = "Still spins, but not like this."
	icon_state = "office_chair_blue_toppled"
	inhand_icon_state = "office_chair_blue"
	origin_type = /obj/structure/chair/office/ms13/standard/blue

/obj/item/chair/ms13/wood
	name = "wooden chair"
	desc = "An antique wooden chair with a small green cushion."
	icon_state = "wood_chair_toppled"
	inhand_icon_state = "wood_chair"
	custom_materials = list(/datum/material/wood = 2000)
	origin_type = /obj/structure/chair/ms13/wood

/obj/item/chair/ms13/wood/padded
	name = "padded wooden chair"
	desc = "An antique wooden chair with a large, plush red cushion"
	icon_state = "wood_chair_padded_toppled"
	inhand_icon_state = "wood_chair_padded"
	origin_type = /obj/structure/chair/ms13/wood/padded

/obj/item/chair/ms13/plastic
	name = "plastic chair"
	desc = "The most generic chair known to pre-war man."
	hitsound = "mojave/sound/ms13weapons/meleesounds/plastic_slam.ogg"
	w_class = WEIGHT_CLASS_NORMAL
	force = 7
	throw_range = 5
	break_chance = 5
	icon_state = "plastic_chair_toppled"
	inhand_icon_state = "plastic_chair"
	origin_type = /obj/structure/chair/ms13/overlaypickup/plastic
