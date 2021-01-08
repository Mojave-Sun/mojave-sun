//Ridable power armor suits from the fallout series, meant to protect you from the outside world

/obj/vehicle/sealed/power_armor
	name = "Generic Power Armor"
	desc = "Don't ever use this in the video game please."
	icon = 'icons/obj/power_armor.dmi'
	icon_state = "t45dpowerarmor"
	max_integrity = 500
	armor = list(MELEE = 70, BULLET = 70, LASER = 70, ENERGY = 0, BOMB = 70, BIO = 0, RAD = 0, FIRE = 100, ACID = 100)

/obj/vehicle/sealed/power_armor/after_add_occupant(mob/M)
	. = ..()
	REMOVE_TRAIT(M, TRAIT_HANDS_BLOCKED, VEHICLE_TRAIT)



