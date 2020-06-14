datum/job/f13/town
	selection_color = "#4feb64"

/datum/outfit/job/f13/town
	name = "Default"
	jobtype = /datum/job/f13/town

/datum/outfit/job/f13/town/pre_equip(mob/living/carbon/human/H)
	..()

//These are base jobs, we don't want them appearing at all
/datum/job/f13/town/config_check()
	if(type == /datum/job/f13/town)
		return FALSE
	return ..()

/datum/job/f13/town/map_check()
	if(type == /datum/job/f13/town)
		return FALSE
	return ..()
