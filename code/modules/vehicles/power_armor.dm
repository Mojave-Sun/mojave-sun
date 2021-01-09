/*
Ridable power armor suits from the fallout series, meant to protect you from the outside world
While technically "sealed", the user still remains on the outside but is still protected by the vehicle and able to shoot out of it
Why not use ridden vehicle instead? because that would require a upstream change to buckling which then requires /atom proc overrides
*/

/obj/vehicle/sealed/power_armor
	name = "Generic Power Armor"
	desc = "Don't ever use this in the video game please."
	icon = 'icons/obj/power_armor.dmi'
	icon_state = "t45dpowerarmor"
	max_integrity = 500
	
	//DON'T modify below armor while the armor is applied to the user or else you'll need to code a solution for differing armor types when (de)equipping
	armor = list(MELEE = 70, BULLET = 70, LASER = 70, ENERGY = 0, BOMB = 70, BIO = 0, RAD = 0, FIRE = 100, ACID = 100)

/obj/vehicle/sealed/power_armor/after_add_occupant(mob/M)
	. = ..()
	REMOVE_TRAIT(M, TRAIT_HANDS_BLOCKED, VEHICLE_TRAIT)
	//Give an armor boost to the wearer as if it had it equipped
	if(M.armor)
		M.armor.attachArmor(armor)
	//Because of the problem with just using buckle via ridden vehicle, we'll just force the user to stand up even when crit/immobilized
	ADD_TRAIT(m, TRAIT_FORCED_STANDING, "power_armor")

/obj/vehicle/sealed/power_armor/after_remove_occupant(mob/M)
	. = ..()
	if(M.armor)
		M.armor.detachArmor(armor)
	REMOVE_TRAIT(m, TRAIT_FORCED_STANDING, "power_armor")

//Technically this is a suit of armor covering the entire human player
//Essentially we'll damage some of this armor to represent the penetration/chip damage while the internal user gets damaged from compromised armor

/obj/vehicle/sealed/power_armor/bullet_act(obj/projectile/P)
	if(!LAZYLEN(occupants)) //If there's no one inside then the armor will get damaged as normal
		return ..()
	for(var/m in return_occupants())
		var/mob/mob_occupant = m
		mob_occupant.bullet_act(P) //Some of this damage will get negated due to armor buff being applied to the user from after_add_occupant()
	return TRUE
