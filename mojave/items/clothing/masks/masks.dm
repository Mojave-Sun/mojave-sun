/obj/item/clothing/mask/ms13
	name = "generic ms13 mask"
	desc = "this doesn't even exist"
	icon = 'mojave/icons/objects/clothing/masks.dmi'
	worn_icon = 'mojave/icons/mob/clothing/mask.dmi'

/obj/item/clothing/mask/ms13/facewrap
	name = "tan facewrap"
	desc = "A wrap for your face. A nice sand-coloured cloth."
	icon_state = "facewrap"
	flags_inv = HIDEFACE

/obj/item/clothing/mask/ms13/facewrap/halfwrap
	name = "tan halfwrap"
	desc = "A sturdy wrapping for your face. A bit rough in some places, but overall fair quality."
	icon_state = "halfwrap"

/obj/item/clothing/mask/ms13/facewrap/black
	name = "black facewrap"
	desc = "A wrap for your face. This one is as black as the average soul in these wastes."
	icon_state = "facewrap_bla"

/obj/item/clothing/mask/ms13/facewrap/red
	name = "red facewrap"
	desc = "A wrap for your face. Red representing hatred."
	icon_state = "facewrap_red"

/obj/item/clothing/mask/ms13/facewrap/blue
	name = "blue facewrap"
	desc = "A wrap for your face. The blue colour stands out among the bland surroundings."
	icon_state = "facewrap_blu"

/obj/item/clothing/mask/ms13/legion/clothmask
	name = "cloth mask"
	desc = "A simple cloth mask often used by Legionaries for an assortment of reasons."
	icon_state = "leg_mask"
	flags_inv = HIDEFACE

/obj/item/clothing/mask/ms13/legion/speculatore
	name = "\improper Legion speculatore mask"
	desc = "A mask only worn by the near unheard of Speculatores of the Legion. Whatever metal it's made of is good for deflecting bullets received to the face - if you can hit them."
	icon_state = "leg_spec"
	inhand_icon_state = "owl_mask"
	armor = list("melee" = 10, "bullet" = 5, "laser" = 5, "energy" = 5, "bomb" = 10, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 20)
	flags_inv = HIDEFACE

/obj/item/clothing/mask/ms13/bos
	name = "\improper BoS hood"
	desc = "A heavy hood originally designed to wear under power armor."
	icon_state = "bos_hood"
	inhand_icon_state = "bos_hood"
	flags_inv = HIDEHAIR
