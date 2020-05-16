datum/job/f13/bos
	selection_color = "#737592"

/datum/outfit/job/f13/bos
	name = "Default"
	jobtype = /datum/job/f13/bos

/datum/outfit/job/f13/bos/pre_equip(mob/living/carbon/human/H)
	..()

//These are base jobs, we don't want them appearing at all
/datum/job/f13/bos/config_check()
	if(type == /datum/job/f13/bos)
		return FALSE
	return ..()

/datum/job/f13/bos/map_check()
	if(type == /datum/job/f13/bos)
		return FALSE
	return ..()
