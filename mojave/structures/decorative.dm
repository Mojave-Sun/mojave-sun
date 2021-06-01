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

//signs/flags//

/obj/structure/fluff/ms13/
	name = "fluff ms13 basetype"
	desc = "CALL A CODER. CALL A CODER. But not for me. :reachforthesky:"
	icon = 'mojave/icons/structure/64x64_misc.dmi'
	icon_state = "fluff"

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

////Interactive Fluff////

/obj/structure/fluff/ms13/wartable
	name = "holo-table"
	desc = "A fancy high tech table, used to project plans up above its surface. Perfect for acting like you're a high ranking man who is very busy."
	icon_state = "wartable_on"
	layer = HIGH_OBJ_LAYER
	density = 1
	bound_height = 64
	bound_width = 64
	light_color = "#50afee"
	light_range = 4
	light_power = 0.3
