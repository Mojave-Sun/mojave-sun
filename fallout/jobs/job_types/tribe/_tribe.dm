datum/job/f13/tribe
	selection_color = "#eb544f"

/datum/outfit/job/f13/tribe
	name = "Default"
	jobtype = /datum/job/f13/tribe

/datum/outfit/job/f13/tribe/pre_equip(mob/living/carbon/human/H)
	..()

//These are base jobs, we don't want them appearing at all
/datum/job/f13/tribe/config_check()
	if(type == /datum/job/f13/tribe)
		return FALSE
	return ..()

/datum/job/f13/tribe/map_check()
	if(type == /datum/job/f13/tribe)
		return FALSE
	return ..()
