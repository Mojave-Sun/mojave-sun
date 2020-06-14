datum/job/f13/bos/knight
	title = "Knight"
	total_positions = 3
	spawn_positions = 3
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/f13/bos/knight

	display_order = JOB_DISPLAY_ORDER_F13_KNIGHT

/datum/outfit/job/f13/bos/knight
	name = "Knight"
	jobtype = /datum/job/f13/bos/knight

/datum/outfit/job/f13/bos/knight/pre_equip(mob/living/carbon/human/H)
	..()
