/obj/item/claymore/machete
	name = "machete"
	desc = "A makeshift machete made of a lawn mower blade."
	icon = 'fallout/icons/objects/items_and_weapons.dmi'
	icon_state = "imp_machete"
	lefthand_file = 'fallout/icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'fallout/icons/mob/inhands/weapons/melee_righthand.dmi'
	item_state = "salvagedmachete"
	slot_flags = ITEM_SLOT_BELT

/obj/item/claymore/machete/gladius
	name = "machete gladius"
	desc = "A forged steel machete, the blade has been laborously sharpened and the weight has been evenly distributed for maximum killing power. An image of a bull is burned into the wooden handle."
	icon_state = "machete"
	item_state = "machete"
	slot_flags = ITEM_SLOT_BELT
	force = 35
	block_chance = 10

/obj/item/claymore/machete/pipe
	name = "pipe"
	desc = "A heavy rusted pipe, good for smashing heads. "
	icon_state = "pipe"
	item_state = "pipe"
	attack_verb = list("mashed", "bashed", "piped", "hit", "bludgeoned", "whacked", "bonked")
	force = 25
	sharpness = IS_BLUNT

/obj/item/claymore/machete/pipe/tireiron
	name = "tire iron"
	desc = "A rusty old tire iron, normally used for loosening nuts from car tires.<br>Though it has a short reach, it has decent damage and a fast swing."
	icon_state = "tire"
	item_state = "tire"


/obj/item/claymore/machete/golf
	name = "9 iron"
	desc = "This old and quite heavy 9 iron is bent and battered after many years of use by anyone who found it good enough to break bones and crash skulls."
	icon_state = "golf9"
	item_state = "golf9"
	attack_verb = list("mashed", "bashed", "piped", "hit", "bludgeoned", "whacked", "bonked")
	force = 25
	sharpness = IS_BLUNT

/obj/item/claymore/machete/golf/teniron
	name = "10 iron"
	desc = "This old and quite deadly 10 iron is bent and battered after many years of use by anyone who found it good enough to break bones and crash skulls."
	icon_state = "golf10"
	item_state = "golf10"
	force = 30

/obj/item/claymore/machete/pipe/pan
	name = "frying pan"
	desc = "An ancient cast iron frying pan.<br>It's heavy, but fairly useful if you need to keep the mutants away, and don't have a better weapon around."
	icon_state = "pan"
	item_state = "pan"
//	hitsound = 'sound/f13weapons/pan.ogg'
	slot_flags = ITEM_SLOT_BELT
	force = 15 //Just try to swing a frying pan
	throw_speed = 1
	throw_range = 2
	throwforce = 10
	w_class = 2

/obj/item/throwing_star/spear
	name = "throwing spear"
	desc = "An heavy hefty ancient weapon used to this day, due to its ease of lodging itself into its victim's body parts."
	lefthand_file = 'fallout/icons/mob/inhands/items_lefthand.dmi'
	righthand_file = 'fallout/icons/mob/inhands/items_righthand.dmi'
	icon = 'fallout/icons/objects/items_and_weapons.dmi'
	icon_state = "throw_spear"
	item_state = "tribalspear"
	force = 20
	throwforce = 35
	item_flags = SLOWS_WHILE_IN_HAND
	slowdown = 0.3
	embedding = list("embedded_pain_multiplier" = 4, "embed_chance" = 60, "embedded_fall_chance" = 20)
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/throwing_star/throwingknife
	name = "throwing knife"
	desc = "A knife, weighted and designed to be thrown. Looks pretty sharp."
	lefthand_file = 'fallout/icons/mob/inhands/equipment/kitchen_lefthand.dmi'
	righthand_file = 'fallout/icons/mob/inhands/equipment/kitchen_righthand.dmi'
	icon = 'fallout/icons/objects/items_and_weapons.dmi'
	icon_state = "throwing"
	item_state = "knife"
	force = 20
	throwforce = 20
	embedding = list("embedded_pain_multiplier" = 4, "embed_chance" = 40, "embedded_fall_chance" = 10)
	w_class = WEIGHT_CLASS_SMALL
