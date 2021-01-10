/*
While technically considered a /vehicle/sealed thing, this is only used for when the suit is unoccupied and before a person decides to enter it
Once a pilot has "entered" the vehicle, the vehicle will be hidden away somewhere while the pilot is equipped with the hardsuit corresponding to the vehicle
This hack is done because I wanted power armor to be a menacing structure both occupied and unoccupied alongside the pilot being able to interact with the game world via shooting/picking stuff up
*/

/obj/vehicle/sealed/power_armor
	name = "Generic Power Armor"
	desc = "Don't ever use this in the video game please."
	icon = 'icons/obj/power_armor.dmi'
	icon_state = "t45dpowerarmor"
	var/obj/item/clothing/suit/space/hardsuit/power_armor/actual_armor //The actual armor piece to make the pilot force equip
	max_integrity = 500
	armor = list(MELEE = 80, BULLET = 80, LASER = 80, ENERGY = 80, BOMB = 80, BIO = 100, RAD = 100, FIRE = 100, ACID = 100) //Make the armor the same as the hardsuit one for consistancy


/obj/vehicle/sealed/power_armor/Initialize()
	. = ..()
	actual_armor = new
	actual_armor.linked_vehicle = src

/obj/vehicle/sealed/power_armor/after_add_occupant(mob/M)
	. = ..()
	REMOVE_TRAIT(M, TRAIT_HANDS_BLOCKED, VEHICLE_TRAIT)
	ADD_TRAIT(M, TRAIT_FORCED_STANDING, "power_armor")

/obj/vehicle/sealed/power_armor/after_remove_occupant(mob/M)
	. = ..()
	REMOVE_TRAIT(M, TRAIT_FORCED_STANDING, "power_armor")

//Same thing as parent but without force move into the vehicle and moving the vehicle *somewhere*
/obj/vehicle/sealed/power_armor/mob_enter(mob/M, silent = FALSE)
	if(!istype(M))
		return FALSE
	if(!silent)
		M.visible_message("<span class='notice'>[M] climbs into \the [src]!</span>")
	moveToNullspace() //Goodbye, vehicle
	return TRUE

//Generic power armor helmet
/obj/item/clothing/head/helmet/space/hardsuit/power_armor
	name = "Generic Power Armor Helmet"
	desc = "Don't ever use this in the video game please."
	icon = 'icons/obj/power_armor.dmi'
	icon_state = "t45dpowerarmor"
	max_integrity = 500
	armor = list(MELEE = 80, BULLET = 80, LASER = 80, ENERGY = 80, BOMB = 80, BIO = 100, RAD = 100, FIRE = 100, ACID = 100) //Make the armor the same as the hardsuit one for consistancy

//Generic power armor based off of the hardsuit
/obj/item/clothing/suit/space/hardsuit/power_armor
	name = "Generic Power Armor"
	desc = "Don't ever use this in the video game please."
	icon = 'icons/obj/power_armor.dmi'
	icon_state = "t45dpowerarmor"
	var/obj/vehicle/sealed/power_armor/linked_vehicle //The vehicle instance this is linked to for regenerating back to it
	max_integrity = 500
	armor = list(MELEE = 80, BULLET = 80, LASER = 80, ENERGY = 80, BOMB = 80, BIO = 100, RAD = 100, FIRE = 100, ACID = 100) //Make the armor the same as the hardsuit one for consistancy
	actions_types = null //No helmet toggle, sorry dude
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/power_armor

//Turn back into a vehicle, disabled determines if the vehicle is damaged to the point of no operation or not
/obj/item/clothing/suit/space/hardsuit/power_armor/proc/BackToVehicle(disabled = FALSE)

//TODO for later involving integrity and ricochets
/obj/item/clothing/suit/space/hardsuit/power_armor/bullet_act()

//Instead of qdeling the hardsuit, we'll revert it back to the vehicle and put it into a damaged and movable state as if it was a mecha suit
/obj/item/clothing/suit/space/hardsuit/power_armor/deconstruct(disassembled = TRUE)
	BackToVehicle(disabled = TRUE)
