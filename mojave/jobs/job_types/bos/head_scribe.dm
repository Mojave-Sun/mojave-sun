/datum/job/ms13/bos/head_scribe
	title = "BoS Head Scribe"
	total_positions = 1
	spawn_positions = 1
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/bos/head_scribe

	display_order = JOB_DISPLAY_ORDER_MS13_HEAD_SCRIBE

/datum/outfit/job/ms13/bos/head_scribe
	name = "_BoS Head Scribe"
	jobtype = /datum/job/ms13/bos/head_scribe

	head = /obj/item/clothing/head/collectable/petehat

/datum/outfit/job/ms13/bos/head_scribe/pre_equip(mob/living/carbon/human/H)
	..()
