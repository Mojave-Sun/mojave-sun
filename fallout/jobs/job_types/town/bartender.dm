datum/job/f13/town/bartender
	title = "Bartender"
	total_positions = 1
	spawn_positions = 1
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/f13/town/bartender

	display_order = JOB_DISPLAY_ORDER_F13_BARTENDER

/datum/outfit/job/f13/town/bartender
	name = "Bartender"
	jobtype = /datum/job/f13/town/bartender

/datum/outfit/job/f13/town/bartender/pre_equip(mob/living/carbon/human/H)
	..()
