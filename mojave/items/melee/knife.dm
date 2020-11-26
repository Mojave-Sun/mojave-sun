//This folder contains all knives and children of knives, like cleavers

/obj/item/kitchen/knife/ms13
	name = "kitchen knife"
	desc = "A standard kitchen knife. A decent improvised weapon."
	force = 15
	throwforce = 15
	wound_bonus = 0
	sharpness = SHARP_EDGED

/obj/item/kitchen/knife/ms13/combat
	name = "combat knife"
	desc = "A well made, serrated combat knife. Very effective at wounding."
	force = 30
	armour_penetration = 10
	wound_bonus = 4
	throwforce = 30

/obj/item/kitchen/knife/ms13/combat/bayonet
	name = "combat bayonet"
	desc = "A smaller, lighter combat knife with an attached rifle lug. Intended to be used as a bayonet, but makes a fine knife all the same."
	armour_penetration = 5
	wound_bonus = -2

/obj/item/kitchen/knife/ms13/combat/bowie
	name = "bowie knife"
	desc = "A heavy duty bowie knife. Not as good at wounding as it's serrated counterparts, but can kill just as well."
	force = 35
	armour_penetration = 5
	wound_bonus = -4
	throwforce = 35

/obj/item/kitchen/knife/butcher/ms13
	name = "cleaver"
	desc = "A large butcher's cleaver normally used for chopping limbs and meat off of animals. But it was later discovered this works just as well on other humans."
	force = 25
	armour_penetration = 5
	wound_bonus = 3
	bare_wound_bonus = 10
	sharpness = SHARP_EDGED

/obj/item/kitchen/knife/butcher/ms13/unique
	name = "\improper Chopper"
	desc = "A cleaver that has definitely seen a lot of use and is heavily rusted. Though it still looks like it could chop off a limb, or give a case of tetanus while trying."
	force = 30
	wound_bonus = 6
