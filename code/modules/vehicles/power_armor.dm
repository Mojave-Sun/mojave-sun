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
	anchored = TRUE
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
/obj/vehicle/sealed/power_armor/mob_enter(mob/living/carbon/M, silent = FALSE)
	if(!istype(M))
		return FALSE
	if(M.head || !M.equip_to_slot_if_possible(actual_armor, ITEM_SLOT_OCLOTHING, disable_warning = TRUE, bypass_equip_delay_self = TRUE))
		to_chat(M, "You're unable to climb into the [src] due to already having a helmet or suit equipped!")
		return FALSE
	actual_armor.ToggleHelmet()
	if(!silent)
		M.visible_message("<span class='notice'>[M] climbs into \the [src]!</span>")
	BackToSuit(M)
	return TRUE

//Turns the vehicle into a suit of power armor onto the user, the power armor should be equipped to the user VIA earlier equip_to_slot_if_possible() call being successful
/obj/vehicle/sealed/power_armor/proc/BackToSuit(mob/user)
	moveToNullspace() //Goodbye, vehicle

//Generic power armor helmet
/obj/item/clothing/head/helmet/space/hardsuit/power_armor
	name = "Generic Power Armor Helmet"
	desc = "Don't ever use this in the video game please."
	//icon = 'icons/obj/power_armor.dmi'
	//icon_state = "t45dpowerarmor"
	item_flags = ABSTRACT
	strip_delay = 200
	max_integrity = 500
	armor = list(MELEE = 80, BULLET = 80, LASER = 80, ENERGY = 80, BOMB = 80, BIO = 100, RAD = 100, FIRE = 100, ACID = 100) //Make the armor the same as the hardsuit one for consistancy

//Generic power armor based off of the hardsuit
/obj/item/clothing/suit/space/hardsuit/power_armor
	name = "Generic Power Armor"
	desc = "Don't ever use this in the video game please."
	icon = 'icons/obj/power_armor.dmi'
	icon_state = "t45dpowerarmor"
	item_flags = ABSTRACT
	strip_delay = 200
	var/obj/vehicle/sealed/power_armor/linked_vehicle //The vehicle instance this is linked to for regenerating back to it
	max_integrity = 500
	armor = list(MELEE = 80, BULLET = 80, LASER = 80, ENERGY = 80, BOMB = 80, BIO = 100, RAD = 100, FIRE = 100, ACID = 100) //Make the armor the same as the hardsuit one for consistancy
	actions_types = null //No helmet toggle, sorry dude
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/power_armor

/obj/item/clothing/suit/space/hardsuit/power_armor/Initialize()
	. = ..()
	ADD_TRAIT(src, TRAIT_NODROP, "power_armor")

//Edge case handling
/obj/item/clothing/suit/space/hardsuit/power_armor/dropped(mob/user)
	..()
	BackToVehicle(user, disabled = FALSE)

//No helmet toggles for now
/obj/item/clothing/suit/space/hardsuit/power_armor/ToggleHelmet()
	if(suittoggled)
		return
	return ..()

//Let's get off, no jetpacks or light replacements for you
/obj/item/clothing/suit/space/hardsuit/power_armor/AltClick(mob/living/user)
	to_chat(user, "You begin exiting the [src].")
	if(do_after(user, 6 SECONDS, target = src))
		BackToVehicle(user, disabled = FALSE)
		return TRUE
	return FALSE

//Turn back into a vehicle, disabled determines if the vehicle is damaged to the point of no operation or not
/obj/item/clothing/suit/space/hardsuit/power_armor/proc/BackToVehicle(mob/pilot, disabled = FALSE)
	linked_vehicle.forceMove(get_turf(src))
	pilot.transferItemToLoc(src, linked_vehicle, force = TRUE)
	pilot.transferItemToLoc(helmet, linked_vehicle, force = TRUE)
	pilot.update_inv_wear_suit()
	moveToNullspace() //Goodbye, suit of armor

//TODO for later involving integrity and ricochets
/obj/item/clothing/suit/space/hardsuit/power_armor/hit_reaction(mob/living/carbon/human/owner, atom/movable/hitby, attack_text = "the attack", final_block_chance = 0, damage = 0, attack_type = MELEE_ATTACK)
	if(prob(50))
		var/datum/effect_system/spark_spread/spark_system = new /datum/effect_system/spark_spread
		spark_system.start()

//Instead of qdeling the hardsuit, we'll revert it back to the vehicle and put it into a damaged and movable state as if it was a mecha suit
/obj/item/clothing/suit/space/hardsuit/power_armor/deconstruct(disassembled = TRUE)
	BackToVehicle(disabled = TRUE)
