//This file contains all axes and their subtypes, like Sledgehammers.

/obj/item/ms13/twohanded
	name = "wieldable weapon"
	desc = "don't use the damn thing, you animal."
	icon = 'mojave/icons/objects/melee/melee_world.dmi'
	lefthand_file = 'mojave/icons/mob/inhands/weapons/melee_inhand_left.dmi'
	righthand_file = 'mojave/icons/mob/inhands/weapons/melee_inhand_right.dmi'
	icon_state = "tire_iron"
	inhand_icon_state = "tire_iron"
	hitsound = 'sound/effects/hit_punch.ogg'
	attack_verb_continuous = list("attacks", "stabs", "pokes")
	attack_verb_simple = list("attack", "stab", "poke")
	force = 20
	armour_penetration = 5
	wound_bonus = 10
	throwforce = 25
	wound_bonus = 10
	bare_wound_bonus = 20
	sharpness = SHARP_EDGED
	w_class = WEIGHT_CLASS_BULKY
	log_pickup_and_drop = TRUE

/obj/item/ms13/twohanded/Initialize()
	. = ..()
	RegisterSignal(src, COMSIG_TWOHANDED_WIELD, .proc/on_wield)
	RegisterSignal(src, COMSIG_TWOHANDED_UNWIELD, .proc/on_unwield)

/obj/item/ms13/twohanded/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/two_handed, require_twohands=FALSE,)

/obj/item/ms13/twohanded/proc/on_wield(obj/item/source, mob/user)
	SIGNAL_HANDLER
	inhand_icon_state = "[initial(inhand_icon_state)]_wielded"

/// triggered on unwield of two handed item
/obj/item/ms13/twohanded/proc/on_unwield(obj/item/source, mob/user)
	SIGNAL_HANDLER
	inhand_icon_state = "[initial(inhand_icon_state)]"

/obj/item/ms13/twohanded/fireaxe
	name = "fire axe"
	desc = "A pre-war fire axe, once used by firemen, now used by maniacs."
	icon_state = "fire_axe"
	inhand_icon_state = "fire_axe"
	sharpness = IS_SHARP_AXE

/obj/item/ms13/twohanded/sword
	name = "bumper sword"
	desc = "A sword, made from the bumper of a car. It's got a rough edge, but it will work just fine."
	icon_state = "bumper_sword"
	inhand_icon_state = "bumper_sword"
	sharpness = SHARP_EDGED

/obj/item/ms13/twohanded/hammer
	name = "sledge hammer"
	desc = "An incredibly heavy sledge hammer. Hard to swing with one hand, It'd take your full power to be able to weild it."
	icon_state = "hammer_power"
	inhand_icon_state = "hammer_sledge"
	sharpness = SHARP_NONE

/obj/item/ms13/twohanded/hammer/rebar
	name = "rebar club"
	desc = "A piece of rebar with concrete still stuck to it. Might as well use it for something."
	icon_state = "rebar_club"
	inhand_icon_state = "rebar_club"

/obj/item/ms13/twohanded/hammer/super
	name = "super sledge"
	desc = "Using the power of science and engineering, They packed 66% more sledge in this hammer. It's a pain to use unless you're built heavily or in power armor."
	icon_state = "hammer_power"
	inhand_icon_state = "hammer_power"
