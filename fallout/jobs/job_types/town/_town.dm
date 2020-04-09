datum/job/f13/town
	selection_color = "#4feb64"

//These are base jobs, we don't want them appearing at all
/datum/job/f13/town/config_check()
	if(type == /datum/job/f13/town)
		return FALSE
	return ..()

/datum/job/f13/town/map_check()
	if(type == /datum/job/f13/town)
		return FALSE
	return ..()
