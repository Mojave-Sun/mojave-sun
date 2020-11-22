/////////////////////////////////////////////////////////////
/////////////////// MOJAVE SUN BACKPACKS ////////////////////
/////////////////////////////////////////////////////////////

/obj/item/storage/fallout
	name = "generic fallout storage"
	desc = "Da error tho, the crazy error yo!!"
	icon = 'mojave/icons/objects/clothing/backpack.dmi'
	worn_icon = null //'mojave/icons/mob/clothing/belt.dmi' or 'mojave/icons/mob/clothing/back.dmi'
	icon_state = ""
	inhand_icon_state = ""
	worn_icon_state = ""
	lefthand_file = 'mojave/icons/mob/inhands/equipment/backpack_lefthand.dmi'
	righthand_file = 'mojave/icons/mob/inhands/equipment/backpack_righthand.dmi'
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = null //ITEM_SLOT_BELT or ITEM_SLOT_BACKPACK
	resistance_flags = NONE
	max_integrity = 300

/obj/item/storage/fallout/ComponentInitialize() //backpacks are smaller but hold larger things
	. = ..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	STR.max_combined_w_class = 40
	STR.max_w_class = WEIGHT_CLASS_NORMAL
	STR.max_items = 12

/obj/item/storage/fallout/sack
	name = "sack"
	desc = "A gnarly weave-sack, very abundant, useful for storage and a carvanners necessity."
	worn_icon = 'mojave/icons/mob/clothing/belt.dmi'
	icon_state = "sack"
	inhand_icon_state = "sack"
	worn_icon_state = "sack"
	slot_flags = ITEM_SLOT_BELT
