GLOBAL_LIST_EMPTY(water_wells_in_world)

//Fallout 13 water production well
//Produces a certain amount of water based on the number of currently alive human players

/obj/structure/well
	name = "water well"
	desc = "A structure that somehow brings up water from somewhere in the ground."
	icon_state = "well"
	icon = 'mojave/icons/structure/well_pump.dmi'
	var/alive_humans //Amount of alive humans in the world at time of processing

	/*
	The (water_ratio * 100)% of humans that will be sustained by the water production of all wells
	If this was = 2, then all wells will produce enough water together so that the current alive
	human population * 2 will be able to live without dying of thirst (provided it's all distributed)
	This will assume the thirst component negates 0.2u of water per second per human, 30 minutes = 360u, 15 minutes = 180u etc.

	When var editing this value, call UpdateAllWells() to apply the ratio to all other wells unless you want this well
	to produce more water and not distribute
	*/
	var/water_ratio = 2
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF // N O

/obj/structure/well/Initialize()
	. = ..()
	START_PROCESSING(SSobj, src)
	GLOB.water_wells_in_world += src
	create_reagents(2000000, DUNKABLE | NO_REACT | DRAINABLE)

/obj/structure/well/Destroy(force)
	GLOB.water_wells_in_world -= src
	..()

/obj/structure/well/process()

	alive_humans = 0
	for(var/mob/living/carbon/human/H in GLOB.player_list)
		if(H.stat == DEAD)
			continue
		if(!H.GetComponent(/datum/component/thirst))
			continue
		alive_humans++

	//0.4u of water * water_ratio * all the alive humans
	reagents.add_reagent(/datum/reagent/water, ((0.4 * water_ratio * alive_humans) / (length(GLOB.water_wells_in_world))))

/obj/structure/well/proc/UpdateAllWells()
	for(var/obj/structure/well/well in GLOB.water_wells_in_world)
		well.water_ratio = water_ratio
