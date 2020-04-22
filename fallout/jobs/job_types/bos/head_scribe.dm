datum/job/f13/bos/head_scribe
	title = "Head Scribe"
	total_positions = 1
	spawn_positions = 1
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/f13/bos/head_scribe

	display_order = JOB_DISPLAY_ORDER_F13_HEAD_SCRIBE

/datum/outfit/job/f13/bos/head_scribe
	name = "Head Scribe"
	jobtype = /datum/job/f13/bos/head_scribe

/datum/outfit/job/f13/bos/head_scribe/pre_equip(mob/living/carbon/human/H)
	..()
