//Decorative and flavor/fluff things.

//street//

/obj/structure/filingcabinet/ms13
	name = "wasteland filing cabinet"
	desc = "Perfect for filing your radioactive dust."
	icon = 'mojave/icons/structure/miscellaneous.dmi'

/obj/structure/filingcabinet/ms13/mail
	name = "postbox"
	desc = "Last pickup, October 22nd, 2077."
	icon_state = "mailbox"
	pixel_y = 12
	layer = EDGED_TURF_LAYER

/obj/structure/filingcabinet/ms13/mail/old
	icon_state = "mailbox_old"

//signs/flags//

/obj/structure/fluff/ms13/
	name = "fluff ms13 basetype"
	desc = "CALL A CODER. CALL A CODER. But not for me. :reachforthesky:"
	icon = 'mojave/icons/structure/64x64_misc.dmi'
	icon_state = "base_class"

/obj/structure/fluff/ms13/mammoth_sign
	name = "\improper Mammoth Lakes sign"
	desc = "Welcome to Mammoth Lakes: the town where it's always winter!"
	icon = 'mojave/icons/structure/64x64_misc.dmi'
	icon_state = "mammoth_sign"

/obj/structure/fluff/ms13/largencrbanner
	name = "\improper NCR Banner"
	desc = "A large banner stretched along a somewhat sturdy metal pole. It bears the insignia of a bear, representative of the New California Republic."
	icon = 'mojave/icons/objects/flags32x64.dmi'
	icon_state = "ncrflag"
	layer = EDGED_TURF_LAYER

/obj/structure/fluff/ms13/ncrflag
	name = "\improper NCR flagpole"
	desc = "A very tall flag pole, You can almost see the NCR's flag up there!"
	icon = 'mojave/icons/structure/largeflags.dmi'
	icon_state = "ncrflag"
	pixel_x = -32
	layer = ABOVE_ALL_MOB_LAYER

//Decorative Cable, functional WYCI//

/obj/structure/ms13/cable/
	name = "cable"
	icon = 'mojave/icons/objects/cables.dmi'
	density = FALSE
	layer = WIRE_LAYER

/obj/structure/ms13/cable/red
	icon_state = "cable_red_straight"

/obj/structure/ms13/cable/red/curve
	icon_state = "cable_red_curved"

/obj/structure/ms13/cable/red/intersection
	icon_state = "cable_red_intersect"

/obj/structure/ms13/cable/red/connector
	icon_state = "cable_red_connector"

/obj/structure/ms13/cable/red/splice
	icon_state = "cable_red_spliced"

/obj/structure/ms13/cable/blue
	icon_state = "cable_blue_straight"

/obj/structure/ms13/cable/blue/curve
	icon_state = "cable_blue_curved"

/obj/structure/ms13/cable/blue/intersection
	icon_state = "cable_blue_intersect"

/obj/structure/ms13/cable/blue/connector
	icon_state = "cable_blue_connector"

/obj/structure/ms13/cable/blue/splice
	icon_state = "cable_blue_spliced"

/obj/structure/ms13/cable/green
	icon_state = "cable_green_straight"

/obj/structure/ms13/cable/green/curve
	icon_state = "cable_green_curved"

/obj/structure/ms13/cable/green/intersection
	icon_state = "cable_green_intersect"

/obj/structure/ms13/cable/green/connector
	icon_state = "cable_green_connector"

/obj/structure/ms13/cable/green/splice
	icon_state = "cable_green_spliced"

/obj/structure/ms13/cable/black
	icon_state = "cable_black_straight"

/obj/structure/ms13/cable/black/curve
	icon_state = "cable_black_curved"

/obj/structure/ms13/cable/black/intersection
	icon_state = "cable_black_intersect"

/obj/structure/ms13/cable/black/connector
	icon_state = "cable_black_connector"

/obj/structure/ms13/cable/black/splice
	icon_state = "cable_black_spliced"
