//This file contains all machetes and children of machetes, like pipes.

/obj/item/claymore/ms13/machete
	name = "machete"
	desc = "A makeshift machete made of a lawn mower blade."
	icon = 'mojave/icons/objects/items_and_weapons.dmi'
	icon_state = "imp_machete"
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
	icon_state = "machete"
	inhand_icon_state = "machete"
	slot_flags = ITEM_SLOT_BELT
	force = 35
	armour_penetration = 5
	wound_bonus = 5

/obj/item/claymore/ms13/machete/pipe
	name = "lead pipe"
	desc = "A heavy rusted pipe, good for smashing heads. "
	icon_state = "pipe"
	inhand_icon_state = "pipe"
	attack_verb_continuous = list("mashes", "bashes", "pipes", "hits", "bludgeons", "whacks", "bonks") /* wtf is piped */
	attack_verb_simple = list("mashed", "bashed", "piped", "hit", "bludgeoned", "whacked", "bonked")
	force = 25
	sharpness = SHARP_NONE
	armour_penetration = 5
	wound_bonus = 6

/obj/item/claymore/ms13/machete/pipe/unique
	name = "\improper Humble Cudgel"
	desc = "A heavier, reinforced lead pipe with some more care taken on it's maintenance. It's clear this was not an improvised weapon, but a honed weapon of war."
	icon_state = "pipe"
	inhand_icon_state = "pipe"
	attack_verb_continuous = list("mashes", "bashes", "pipes", "hits", "bludgeons", "whacks", "bonks") /* wtf is piped */
	attack_verb_simple = list("mashed", "bashed", "piped", "hit", "bludgeoned", "whacked", "bonked")
	force = 30
	sharpness = SHARP_NONE
	armour_penetration = 10
	wound_bonus = 8

/obj/item/claymore/ms13/machete/pipe/tireiron
	name = "tire iron"
	desc = "A rusty old tire iron, normally used for loosening nuts from car tires.<br>Though it has a short reach, it has decent damage and a fast swing."
	icon_state = "tire"
	inhand_icon_state = "tire"
	force = 20
	wound_bonus = 4
