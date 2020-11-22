/datum/job/f13/raiders
	selection_color = "#30389c"

/datum/outfit/job/f13/raiders
	name = "Default"
	jobtype = /datum/job/f13/raiders

/datum/outfit/job/f13/raiders/pre_equip(mob/living/carbon/human/H)
	..()

//These are base jobs, we don't want them appearing at all
/datum/job/f13/raiders/config_check()
	if(type == /datum/job/f13/raiders)
		return FALSE
	return ..()

/datum/job/f13/raiders/map_check()
	if(type == /datum/job/f13/raiders)
		return FALSE
	return ..()
