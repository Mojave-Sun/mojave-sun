datum/job/f13/tribe/berserker
	title = "Berserker"
	total_positions = 2
	spawn_positions = 2
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/f13/tribe/berserker

	display_order = JOB_DISPLAY_ORDER_F13_BERSERKER

/datum/outfit/job/f13/tribe/berserker
	name = "Berserker"
	jobtype = /datum/job/f13/tribe/berserker

/datum/outfit/job/f13/tribe/berserker/pre_equip(mob/living/carbon/human/H)
	..()
