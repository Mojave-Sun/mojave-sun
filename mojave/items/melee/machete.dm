//This file contains all machetes and children of machetes, like pipes.

/obj/item/claymore/ms13/machete
	name = "machete"
	desc = "A makeshift machete made of a lawn mower blade."
	icon = 'mojave/icons/objects/melee/melee_world.dmi'
	lefthand_file = 'mojave/icons/mob/inhands/weapons/melee_inhand_left.dmi'
	righthand_file = 'mojave/icons/mob/inhands/weapons/melee_inhand_right.dmi'
	icon_state = "machete_scrap"
	lefthand_file = null
	righthand_file = null
	inhand_icon_state = "salvagedmachete"
	slot_flags = ITEM_SLOT_BELT
	block_chance = 0
	force = 30
	wound_bonus = 3
	sharpness = SHARP_EDGED
	log_pickup_and_drop = TRUE

/obj/item/claymore/ms13/machete/gladius
	name = "machete gladius"
	desc = "A forged steel machete, the blade has been laborously sharpened and the weight has been evenly distributed for maximum killing power. An image of a bull is burned into the wooden handle."
	icon_state = "machete_gladius"
	inhand_icon_state = "machete"
	slot_flags = ITEM_SLOT_BELT
	force = 35
	armour_penetration = 5
	wound_bonus = 5

/obj/item/claymore/ms13/machete/pipe
	name = "lead pipe"
	desc = "A heavy rusted pipe, good for smashing heads. "
	icon_state = "lead_pipe"
	inhand_icon_state = "lead_pipe"
	attack_verb_continuous = list("mashes", "bashes", "pipes", "hits", "bludgeons", "whacks", "bonks") /* wtf is piped */
	attack_verb_simple = list("mashed", "bashed", "piped", "hit", "bludgeoned", "whacked", "bonked")
	force = 25
	sharpness = SHARP_NONE
	armour_penetration = 5
	wound_bonus = 6


/obj/item/claymore/ms13/machete/pipe/tireiron
	name = "tire iron"
	desc = "A rusty old tire iron, normally used for loosening nuts from car tires.<br>Though it has a short reach, it has decent damage and a fast swing."
	icon_state = "tire_iron"
	inhand_icon_state = "tire_iron"
	force = 20
	wound_bonus = 4
