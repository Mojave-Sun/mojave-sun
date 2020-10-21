/datum/job/f13/legion
	selection_color = "#9c0000"

/datum/outfit/job/f13/legion
	name = "Default"
	jobtype = /datum/job/f13/legion

/datum/outfit/job/f13/legion/pre_equip(mob/living/carbon/human/H)
	..()

//These are base jobs, we don't want them appearing at all
/datum/job/f13/legion/config_check()
	if(type == /datum/job/f13/legion)
		return FALSE
	return ..()

/datum/job/f13/legion/map_check()
	if(type == /datum/job/f13/legion)
		return FALSE
	return ..()
