datum/job/f13/bos/scribe
	title = "Scribe"
	total_positions = 2
	spawn_positions = 2
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/f13/bos/scribe

	display_order = JOB_DISPLAY_ORDER_F13_SCRIBE

/datum/outfit/job/f13/bos/scribe
	name = "Scribe"
	jobtype = /datum/job/f13/bos/scribe

/datum/outfit/job/f13/bos/scribe/pre_equip(mob/living/carbon/human/H)
	..()
