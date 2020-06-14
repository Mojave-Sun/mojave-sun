datum/job/f13/eighties/boss
	title = "Boss"
	total_positions = 1
	spawn_positions = 1
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/f13/eighties/boss

	display_order = JOB_DISPLAY_ORDER_F13_BOSS

/datum/outfit/job/f13/eighties/boss
	name = "Boss"
	jobtype = /datum/job/f13/eighties/boss

/datum/outfit/job/f13/eighties/boss/pre_equip(mob/living/carbon/human/H)
	..()
