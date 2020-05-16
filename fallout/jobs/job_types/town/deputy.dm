datum/job/f13/town/deputy
	title = "Deputy"
	total_positions = 3
	spawn_positions = 3
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/f13/town/deputy

	display_order = JOB_DISPLAY_ORDER_F13_DEPUTY

/datum/outfit/job/f13/town/deputy
	name = "Deputy"
	jobtype = /datum/job/f13/town/deputy

/datum/outfit/job/f13/town/deputy/pre_equip(mob/living/carbon/human/H)
	..()
