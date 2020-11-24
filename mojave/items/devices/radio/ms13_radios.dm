/obj/item/radio/ms13
	icon = 'mojave/icons/objects/hamradio.dmi'
	name = "walkie-talkie"
	icon_state = "handradio"
	inhand_icon_state = "handradio_"
	desc = "A basic handheld radio that communicates over a relatively long range, and is proven to be 254% better than yelling loudly."
	dog_fashion = /datum/dog_fashion/back

	flags_1 = CONDUCT_1 | HEAR_1
	throw_speed = 3
	throw_range = 7
	w_class = WEIGHT_CLASS_SMALL
	custom_materials = list(/datum/material/iron=75, /datum/material/glass=25)
	obj_flags = USES_TGUI
