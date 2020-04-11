datum/job/f13/eighties
	selection_color = "#30389c"

/datum/outfit/job/f13/eighties
	name = "Default"
	jobtype = /datum/job/f13/eighties

/datum/outfit/job/f13/eighties/pre_equip(mob/living/carbon/human/H)
	..()

//These are base jobs, we don't want them appearing at all
/datum/job/f13/eighties/config_check()
	if(type == /datum/job/f13/eighties)
		return FALSE
	return ..()

/datum/job/f13/eighties/map_check()
	if(type == /datum/job/f13/eighties)
		return FALSE
	return ..()
