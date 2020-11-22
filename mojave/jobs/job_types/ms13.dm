/*
Mojave Sun Job Base Class
*/
/datum/job/ms13
	title = "Default - please implement the title in your dataum/job/ms13/yourjob file"
	supervisors = "N/A - please implement the supervisors in your dataum/job/ms13/yourjob file"
	faction = "Wasteland"

/datum/outfit/job/ms13
	name = "Default"
	jobtype = /datum/job/ms13

	//This is all nulled to override /datum/outfit/job giving everyone assistant gear.

	uniform = null
	id = null
	ears = null
	belt = null
	back = null
	shoes = null
	box = null

	backpack = null
	satchel  = null
	duffelbag = null

	pda_slot = null

	skillchip_path = null

/datum/outfit/job/ms13/pre_equip(mob/living/carbon/human/H)
	//Blank for now, utilize as needed later on.

//These are base jobs, we don't want them appearing at all
/datum/job/ms13/config_check()
	if(type == /datum/job/ms13)
		return FALSE
	return ..()

/datum/job/ms13/map_check()
	if(type == /datum/job/ms13)
		return FALSE
	return ..()
