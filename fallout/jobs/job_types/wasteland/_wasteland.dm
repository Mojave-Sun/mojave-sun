datum/job/f13/wasteland
	selection_color = "#ff915e"

/datum/outfit/job/f13/wasteland
	name = "Default"
	jobtype = /datum/job/f13/wasteland

/datum/outfit/job/f13/wasteland/pre_equip(mob/living/carbon/human/H)
	..()

//These are base jobs, we don't want them appearing at all
/datum/job/f13/wasteland/config_check()
	if(type == /datum/job/f13/wasteland)
		return FALSE
	return ..()

/datum/job/f13/wasteland/map_check()
	if(type == /datum/job/f13/wasteland)
		return FALSE
	return ..()
