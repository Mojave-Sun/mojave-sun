/obj/item/ms13/hammer
	name = "claw hammer"
	desc = "A standard claw hammer. While it is a simple tool, the uses are limitless."
	hitsound = 'mojave/sound/ms13items/axe_1.ogg'
	icon_state = "hammer"
	inhand_icon_state = "hammer"
	force = 20
	armour_penetration = 5
	wound_bonus = 10
	attack_verb_continuous = list("smacks", "slashes", "deconstructs", "slaps", "pounds", "beats", "bonks", "hammers", "nails")
	attack_verb_simple = list("smacked", "slashed", "deconstructed", "slapped", "pounded", "beat", "bonked", "hammered", "nailed")
	sharpness = SHARP_NONE
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/ms13/shovel
	name = "shovel"
	desc = "A shovel for digging up the ground, commonly used for farming or gravedigging."
	hitsound = 'sound/weapons/genhit.ogg'
	icon_state = "shovel"
	inhand_icon_state = "shovel"
	force = 20
	armour_penetration = 5
	attack_verb_continuous = list("smacks", "slashes", "jabs", "slaps", "pounds", "beats", "bonks", "digs", "buries")
	attack_verb_simple = list("smacked", "slased", "jabed", "slapped", "pounded", "beat", "bonked", "dug", "buried")
	sharpness = SHARP_NONE
	w_class = WEIGHT_CLASS_BULKY

/obj/item/ms13/shovel/spade
	name = "spade"
	desc = "A small spade for digging up the ground. It's easily transportable, due to its size"
	icon_state = "spade"
	inhand_icon_state = "spade"
	force = 15
	armour_penetration = 5
	sharpness = SHARP_NONE
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/ms13/shovel/snow
	name = "snow shovel"
	desc = "A shovel used primarily for cleaning paths of any snow obstructions. Could probably be applied to other things as well."
	icon_state = "shovel_snow"
	inhand_icon_state = "shovel_snow"
	force = 20
	armour_penetration = 0

/obj/item/ms13/rake
	name = "rake"
	desc = "A rake. Used for raking. Go figure."
	icon_state = "rake"
	inhand_icon_state = "rake"
	force = 15
	bare_wound_bonus = 5
	armour_penetration = -5
	attack_verb_continuous = list("smacks", "slashes", "jabs", "slaps", "pounds", "beats", "bonks", "rakes", "assaults")
	attack_verb_simple = list("smacked", "slashed", "jabbed", "slapped", "pounded", "beat", "bonked", "raked", "assaulted")
	hitsound = 'sound/weapons/genhit.ogg'
	sharpness = SHARP_POINTY
	w_class = WEIGHT_CLASS_BULKY

/obj/item/ms13/brick
	name = "brick"
	desc = "A literal brick. Nothing more. State of the art clay brick, in the typical pale red colour."
	icon = 'mojave/icons/objects/melee/melee_world.dmi'
	lefthand_file = 'mojave/icons/mob/inhands/weapons/melee_inhand_left.dmi'
	righthand_file = 'mojave/icons/mob/inhands/weapons/melee_inhand_right.dmi'
	icon_state = "brick"
	inhand_icon_state = "brick"
	attack_verb_continuous = list("clonks", "smacks", "clocks", "nails", "bludgeons", "whacks", "bonks")
	attack_verb_simple = list("clonk", "smack", "clock", "nail", "bludgeon", "whack", "bonk")
	force = 10
	sharpness = SHARP_NONE
	w_class = WEIGHT_CLASS_NORMAL
	throwforce = 15 //brick

/obj/item/flashlight/flare/ms13
	name = "flare"
	desc = "A red Nanotrasen issued flare. There are instructions on the side, it reads 'pull cord, make light'."
	icon = 'mojave/icons/objects/melee/melee_world.dmi'
	lefthand_file = 'mojave/icons/mob/inhands/weapons/melee_inhand_left.dmi'
	righthand_file = 'mojave/icons/mob/inhands/weapons/melee_inhand_right.dmi'
	icon_state = "flare"
	inhand_icon_state = "flare"
	light_range = 5 // Somewhat bright.
