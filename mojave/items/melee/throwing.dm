//This file contains all throwing weapons

/obj/item/spear/ms13/spear
	name = "throwing spear"
	desc = "An heavy hefty ancient weapon used to this day, due to its ease of lodging itself into its victim's body parts."
	icon = 'mojave/icons/objects/melee/melee_world.dmi'
	lefthand_file = 'mojave/icons/mob/inhands/weapons/melee_inhand_left.dmi'
	righthand_file = 'mojave/icons/mob/inhands/weapons/melee_inhand_right.dmi'
	icon_state = "spear"
	inhand_icon_state = "spear"
	icon_prefix = "spear"
	force = 30
	throwforce = 35
	embedding = list("embedded_pain_multiplier" = 3, "embed_chance" = 40, "embedded_fall_chance" = 20)
	w_class = WEIGHT_CLASS_NORMAL
	sharpness = SHARP_POINTY
	armour_penetration = 5
	wound_bonus = 0
	log_pickup_and_drop = TRUE

/obj/item/spear/ms13/spear/knife
	name = "knife spear"
	desc = "A rough spear, made from a knife and a pole. Don't look past it, it can still kill, wether it be by jab or throw."
	icon_state = "spear_knife"
	inhand_icon_state = "spear_knife"
	icon_prefix = "spear_knife"
	force = 25
	throwforce = 20

/obj/item/spear/explosive/ms13
	name = "thunderstick"
	desc = "A long stick, with an explosive charge stuck on the end. You could probably pull the cord on the front to activate the timer."
	icon = 'mojave/icons/objects/melee/melee_world.dmi'
	lefthand_file = 'mojave/icons/mob/inhands/weapons/melee_inhand_left.dmi'
	righthand_file = 'mojave/icons/mob/inhands/weapons/melee_inhand_right.dmi'
	icon_state = "spear_thunder"
	icon_prefix = "spear_thunder"

/obj/item/throwing_star/ms13/throwingknife
	name = "throwing knife"
	desc = "A knife, weighted and designed to be thrown. Looks pretty sharp."
	icon = 'mojave/icons/objects/melee/melee_world.dmi'
	lefthand_file = 'mojave/icons/mob/inhands/weapons/melee_inhand_left.dmi'
	righthand_file = 'mojave/icons/mob/inhands/weapons/melee_inhand_right.dmi'
	icon_state = "knife_throwing"
	inhand_icon_state = "knife_throwing"
	force = 15
	throwforce = 25
	embedding = list("embedded_pain_multiplier" = 3, "embed_chance" = 25, "embedded_fall_chance" = 10)
	w_class = WEIGHT_CLASS_SMALL
	sharpness = SHARP_POINTY
	wound_bonus = 0
	log_pickup_and_drop = TRUE
