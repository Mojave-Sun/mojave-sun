/datum/job/ms13/tribe
	selection_color = "#eb544f"

/datum/outfit/job/ms13/tribe
	name = "Default"
	jobtype = /datum/job/ms13/tribe

/datum/outfit/job/ms13/tribe/pre_equip(mob/living/carbon/human/H)
	..()

//These are base jobs, we don't want them appearing at all
/datum/job/ms13/tribe/config_check()
	if(type == /datum/job/ms13/tribe)
		return FALSE
	return ..()

/datum/job/ms13/tribe/map_check()
	if(type == /datum/job/ms13/tribe)
		return FALSE
	return ..()
