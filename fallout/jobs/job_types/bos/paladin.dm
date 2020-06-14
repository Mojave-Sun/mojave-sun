datum/job/f13/bos/paladin
	title = "Paladin"
	total_positions = 1
	spawn_positions = 1
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/f13/bos/paladin

	display_order = JOB_DISPLAY_ORDER_F13_PALADIN

/datum/outfit/job/f13/bos/paladin
	name = "Paladin"
	jobtype = /datum/job/f13/bos/paladin

/datum/outfit/job/f13/bos/paladin/pre_equip(mob/living/carbon/human/H)
	..()
