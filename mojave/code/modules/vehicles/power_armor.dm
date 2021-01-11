/*
While technically considered a /vehicle/sealed thing, this is only used for when the suit is unoccupied and before a person decides to enter it
Once a pilot has "entered" the vehicle, the vehicle will be hidden away somewhere while the pilot is equipped with the hardsuit corresponding to the vehicle
This hack is done because I wanted power armor to be a menacing structure both occupied and unoccupied alongside the pilot being able to interact with the game world via shooting/picking stuff up
*/

/obj/vehicle/sealed/power_armor
	name = "Generic Power Armor"
	desc = "Don't ever use this in the video game please."
	icon = 'mojave/icons/mob/clothing/suit.dmi'
	icon_state = "t45-pa"
	enter_delay = 6 SECONDS
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
/obj/vehicle/sealed/power_armor/mob_enter(mob/living/carbon/human/M, silent = FALSE)
	if(!istype(M))
		return FALSE
	//if(M.head || !M.equip_to_slot_if_possible(actual_armor, ITEM_SLOT_OCLOTHING, disable_warning = TRUE, bypass_equip_delay_self = TRUE))
	if(M.head || M.wear_suit)
		to_chat(M, "You're unable to climb into the [src] due to already having a helmet or suit equipped!")
		return FALSE
	actual_armor.ToggleHelmet()
	BackToSuit(M)
	if(!silent)
		M.visible_message("<span class='notice'>[M] climbs into \the [src]!</span>")
	return TRUE

//Turns the vehicle into a suit of power armor onto the user, the power armor should be equipped to the user VIA earlier equip_to_slot_if_possible() call being successful
/obj/vehicle/sealed/power_armor/proc/BackToSuit(mob/living/carbon/human/user)
	if(user.head || !user.equip_to_slot_if_possible(actual_armor, ITEM_SLOT_OCLOTHING)) //No putting on stuff during the walk-in period, nerd
		to_chat(user, "You're unable to climb into the [src] due to already having a helmet or suit equipped!")
		return
	user.forceMove(get_turf(src))
	moveToNullspace() //Goodbye, vehicle

//Generic power armor helmet
/obj/item/clothing/head/helmet/space/hardsuit/power_armor
	name = "Generic Power Armor Helmet"
	desc = "Don't ever use this in the video game please."
	icon = 'mojave/icons/mob/clothing/head.dmi'
	icon_state = "t45_pa"
	inhand_icon_state = "t45_pa"
	//item_flags = ABSTRACT
	strip_delay = 200
	max_integrity = 500
	resistance_flags = FIRE_PROOF | ACID_PROOF
	armor = list(MELEE = 80, BULLET = 80, LASER = 80, ENERGY = 80, BOMB = 80, BIO = 100, RAD = 100, FIRE = 100, ACID = 100) //Make the armor the same as the hardsuit one for consistancy
	actions_types = null //No lights my dude, sorry

//Generic power armor based off of the hardsuit
/obj/item/clothing/suit/space/hardsuit/power_armor
	name = "Generic Power Armor"
	desc = "Don't ever use this in the video game please."
	icon = 'mojave/icons/mob/clothing/suit.dmi'
	icon_state = "t45-pa"
	inhand_icon_state = "t45-pa"
	//item_flags = ABSTRACT
	strip_delay = 200
	var/obj/vehicle/sealed/power_armor/linked_vehicle //The vehicle instance this is linked to for regenerating back to it
	max_integrity = 500
	resistance_flags = FIRE_PROOF | ACID_PROOF
	armor = list(MELEE = 80, BULLET = 80, LASER = 80, ENERGY = 80, BOMB = 80, BIO = 100, RAD = 100, FIRE = 100, ACID = 100) //Make the armor the same as the hardsuit one for consistancy
	actions_types = null //No helmet toggle, sorry dude
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/power_armor

/obj/item/clothing/suit/space/hardsuit/power_armor/Initialize()
	. = ..()
	ADD_TRAIT(src, TRAIT_NODROP, "power_armor")
	ADD_TRAIT(helmet, TRAIT_NODROP, "power_armor")

//No helmet toggles for now
/obj/item/clothing/suit/space/hardsuit/power_armor/ToggleHelmet()
	if(suittoggled)
		return
	return ..()

//Let's get off, no jetpacks or light replacements for you
/obj/item/clothing/suit/space/hardsuit/power_armor/AltClick(mob/living/user)
	to_chat(user, "You begin exiting the [src].")
	if(do_after(user, 6 SECONDS, target = user))
		playsound(src.loc, 'sound/mecha/mechmove03.ogg', 50, TRUE)
		BackToVehicle(user, disabled = FALSE)
		return TRUE
	return FALSE

//Turn back into a vehicle, disabled determines if the vehicle is damaged to the point of no operation or not
/obj/item/clothing/suit/space/hardsuit/power_armor/proc/BackToVehicle(mob/living/carbon/human/user, disabled = FALSE)
	if(user.head != helmet && user.wear_suit != src) //Already exited the suit? don't try again damnit
		return
	user.temporarilyRemoveItemFromInventory(helmet, force = TRUE)
	user.temporarilyRemoveItemFromInventory(src, force = TRUE)
	linked_vehicle.forceMove(get_turf(src))

//TODO for later involving integrity and ricochets
/obj/item/clothing/suit/space/hardsuit/power_armor/hit_reaction(mob/living/carbon/human/owner, atom/movable/hitby, attack_text = "the attack", final_block_chance = 0, damage = 0, attack_type = MELEE_ATTACK)
	if(prob(50))
		var/datum/effect_system/spark_spread/spark_system = new /datum/effect_system/spark_spread
		spark_system.start()
	..()

//Instead of qdeling the hardsuit, we'll revert it back to the vehicle and put it into a damaged and movable state as if it was a mecha suit
/obj/item/clothing/suit/space/hardsuit/power_armor/deconstruct(disassembled = TRUE)
	BackToVehicle(disabled = TRUE)
