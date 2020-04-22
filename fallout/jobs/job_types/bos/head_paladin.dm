datum/job/f13/bos/head_paladin
	title = "Head Paladin"
	total_positions = 1
	spawn_positions = 1
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/f13/bos/head_paladin

	display_order = JOB_DISPLAY_ORDER_F13_HEAD_PALADIN

/datum/outfit/job/f13/bos/head_paladin
	name = "Head Paladin"
	jobtype = /datum/job/f13/bos/head_paladin

/datum/outfit/job/f13/bos/head_paladin/pre_equip(mob/living/carbon/human/H)
	..()
