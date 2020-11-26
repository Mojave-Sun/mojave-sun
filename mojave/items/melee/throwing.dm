//This file contains all throwing weapons

/obj/item/throwing_star/ms13/spear
	name = "throwing spear"
	desc = "An heavy hefty ancient weapon used to this day, due to its ease of lodging itself into its victim's body parts."
	lefthand_file = 'mojave/icons/mob/inhands/items_lefthand.dmi'
	righthand_file = 'mojave/icons/mob/inhands/items_righthand.dmi'
	icon = 'mojave/icons/objects/items_and_weapons.dmi'
	icon_state = "throw_spear"
	inhand_icon_state = "tribalspear"
	force = 20
	throwforce = 30
	embedding = list("embedded_pain_multiplier" = 3, "embed_chance" = 40, "embedded_fall_chance" = 20)
	w_class = WEIGHT_CLASS_NORMAL
	sharpness = SHARP_POINTY
	armour_penetration = 5
	wound_bonus = 0

/obj/item/throwing_star/ms13/throwingknife
	name = "throwing knife"
	desc = "A knife, weighted and designed to be thrown. Looks pretty sharp."
	lefthand_file = 'mojave/icons/mob/inhands/equipment/kitchen_lefthand.dmi'
	righthand_file = 'mojave/icons/mob/inhands/equipment/kitchen_righthand.dmi'
	icon = 'mojave/icons/objects/items_and_weapons.dmi'
	icon_state = "throwing"
	inhand_icon_state = "knife"
	force = 15
	throwforce = 25
	embedding = list("embedded_pain_multiplier" = 3, "embed_chance" = 25, "embedded_fall_chance" = 10)
	w_class = WEIGHT_CLASS_SMALL
	sharpness = SHARP_POINTY
	wound_bonus = 0
