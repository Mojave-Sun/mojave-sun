//This file contains all axes and their subtypes, like Sledgehammers.

/obj/item/fireaxe/ms13
	name = "fire Axe"
	desc = "A pre-war fireaxe, once used by firemen, now used by maniacs."
	icon = 'mojave/icons/objects/melee/melee_world.dmi'
	lefthand_file = 'mojave/icons/mob/inhands/weapons/melee_inhand_left.dmi'
	righthand_file = 'mojave/icons/mob/inhands/weapons/melee_inhand_right.dmi'
	icon_state = "fire_axe"
	inhand_icon_state = "fire_axe"
	sharpness = IS_SHARP_AXE
	log_pickup_and_drop = TRUE

/obj/item/fireaxe/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/two_handed, force_unwielded=5, force_wielded=45, icon_wielded="[initial(icon_state)]_wielded")

/obj/item/fireaxe/ms13/attack_self(mob/user)
	. = ..()
	wielded = !wielded
	if(wielded)
		icon_state = "[initial(icon_state)]"
		inhand_icon_state = "[initial(inhand_icon_state)]"
	return

/obj/item/fireaxe/ms13/sword
	name = "bumper sword"
	desc = "A sword, made from the bumper of a car. It's got a rough edge, but it will work just fine."
	icon_state = "bumper_sword"
	sharpness = SHARP_EDGED

/obj/item/fireaxe/ms13/hammer
	name = "sledge hammer"
	desc = "An incredibly heavy sledge hammer. Hard to swing with one hand, It'd take your full power to be able to weild it."
	icon_state = "hammer_power"
	sharpness = SHARP_NONE

/obj/item/fireaxe/ms13/hammer/rebar
	name = "rebar club"
	desc = "A rebar club straight out of the ground"
	icon_state = "rebar_club"

/obj/item/fireaxe/ms13/hammer/super
	name = "super sledge"
	desc = "Using the power of science and engineering, They packed 66% more sledge in this hammer. It's a pain to weild outside of power armor, though."
	icon_state = "hammer_power"

/datum/component/two_handed
