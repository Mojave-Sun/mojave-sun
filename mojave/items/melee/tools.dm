/obj/item/ms13/hammer
	name = "claw hammer"
	desc = "A standard claw hammer. While it is a simple tool, the uses are limitless."
	hitsound = 'mojave/sound/ms13items/axe_1.ogg'
	force = 20
	armour_penetration = 5
	wound_bonus = 5
	attack_verb_continuous = list("smacks", "slashes", "deconstructs", "slaps", "pounds", "beats", "bonks", "hammers", "nails")
	attack_verb_simple = list("smacked", "slashed", "deconstructed", "slapped", "pounded", "beat", "bonked", "hammered", "nailed")
	sharpness = SHARP_NONE
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/ms13/shovel
	name = "shovel"
	desc = "A shovel for digging up the ground, commonly used for farming or gravedigging."
	force = 20
	armour_penetration = 5
	attack_verb_continuous = list("smacks", "slashes", "jabs", "slaps", "pounds", "beats", "bonks", "digs", "buries")
	attack_verb_simple = list("smacked", "slased", "jabed", "slapped", "pounded", "beat", "bonked", "dug", "buried")
	hitsound = 'sound/weapons/genhit.ogg'
	sharpness = SHARP_NONE
	w_class = WEIGHT_CLASS_BULKY

/obj/item/ms13/shovel/spade
	name = "spade"
	desc = "A small spade for digging up the ground. It's easily transportable, due to its size"
	force = 15
	armour_penetration = 5
	sharpness = SHARP_NONE
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/ms13/shovel/snow
	name = "snow shovel"
	desc = "A shovel used primarily for cleaning paths of any snow obstructions. Could probably be applied to other things as well."
	force = 20
	armour_penetration = 0

/obj/item/ms13/rake
	name = "rake"
	desc = "A rake. Used for raking. Go figure."
	force = 15
	bare_wound_bonus = 5
	armour_penetration = -5
	attack_verb_continuous = list("smacks", "slashes", "jabs", "slaps", "pounds", "beats", "bonks", "rakes", "assaults")
	attack_verb_simple = list("smacked", "slashed", "jabbed", "slapped", "pounded", "beat", "bonked", "raked", "assaulted")
	hitsound = 'sound/weapons/genhit.ogg'
	sharpness = SHARP_POINTY
	w_class = WEIGHT_CLASS_BULKY
