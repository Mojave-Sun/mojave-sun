/obj/item/clothing/mask/fallout
	name = "generic fallout mask"
	desc = "this doesn't even exist"
	icon = 'fallout/icons/objects/clothing/masks.dmi'
	worn_icon = 'fallout/icons/mob/clothing/mask.dmi'

/obj/item/clothing/mask/fallout/legion/clothmask
	name = "cloth mask"
	desc = "A simple cloth mask often used by legionares for an assortment of reasons."
	icon_state = "leg_mask"
	flags_inv = HIDEFACE

/obj/item/clothing/mask/fallout/legion/speculatore
	name = "legion speculatore mask"
	desc = "A mask only worn by the near unheard of Speculatores of the Legion. Whatever metal it's made of is good for deflecting bullets received to the face- If you can hit them."
	icon_state = "leg_spec"
	inhand_icon_state = "owl_mask"
	armor = list("melee" = 10, "bullet" = 5, "laser" = 5, "energy" = 5, "bomb" = 10, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 20)
	flags_inv = HIDEFACE
