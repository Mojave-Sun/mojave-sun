//This file contains all hatchets and children of hatchets, like icepicks.

/obj/item/hatchet/ms13
	name = "hatchet"
	desc = "A compact but deadly axe. Useful for chopping wood or heads in a pinch."
	icon = 'mojave/icons/objects/melee/melee_world.dmi'
	lefthand_file = 'mojave/icons/mob/inhands/weapons/melee_inhand_left.dmi'
	righthand_file = 'mojave/icons/mob/inhands/weapons/melee_inhand_right.dmi'
	icon_state = "hatchet"
	force = 30
	throwforce = 30
	w_class = WEIGHT_CLASS_NORMAL
	wound_bonus = 0
	bare_wound_bonus = 5
	sharpness = IS_SHARP_AXE
	log_pickup_and_drop = TRUE

/obj/item/hatchet/ms13/broad
	name = "hatchet"
	desc = "A broad headed hatchet. Nice and hefty, could cleave just about anything in two."
	icon_state = "hatchet_broad"
	bare_wound_bonus = 10
	armour_penetration = 5

/obj/item/hatchet/ms13/icepick
	name = "ice pick"
	desc = "A standard ice pick that is as good at breaking up ice as it is at breaking skulls."
	icon_state = "ice_pick"
	sharpness = SHARP_POINTY
	armour_penetration = 10
