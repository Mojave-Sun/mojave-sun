datum/job/f13/ncr
	selection_color = "#cfd1ba"

/datum/outfit/job/f13/ncr
	name = "Default"
	jobtype = /datum/job/f13/ncr

/datum/outfit/job/f13/ncr/pre_equip(mob/living/carbon/human/H)
	..()

//These are base jobs, we don't want them appearing at all
/datum/job/f13/ncr/config_check()
	if(type == /datum/job/f13/ncr)
		return FALSE
	return ..()

/datum/job/f13/ncr/map_check()
	if(type == /datum/job/f13/ncr)
		return FALSE
	return ..()
