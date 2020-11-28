/datum/job/ms13/ncr
	selection_color = "#cfd1ba"

/datum/outfit/job/ms13/ncr
	name = "Default"
	jobtype = /datum/job/ms13/ncr

/datum/outfit/job/ms13/ncr/pre_equip(mob/living/carbon/human/H)
	..()

//These are base jobs, we don't want them appearing at all
/datum/job/ms13/ncr/config_check()
	if(type == /datum/job/ms13/ncr)
		return FALSE
	return ..()

/datum/job/ms13/ncr/map_check()
	if(type == /datum/job/ms13/ncr)
		return FALSE
	return ..()
