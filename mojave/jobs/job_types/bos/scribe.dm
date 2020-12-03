/datum/job/ms13/bos/scribe
	title = "BoS Scribe"
	total_positions = 2
	spawn_positions = 2
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/bos/scribe

	display_order = JOB_DISPLAY_ORDER_MS13_SCRIBE

/datum/outfit/job/ms13/bos/scribe
	name = "_BoS Scribe"
	jobtype = /datum/job/ms13/bos/scribe

	head = /obj/item/clothing/head/collectable/petehat

/datum/outfit/job/ms13/bos/scribe/pre_equip(mob/living/carbon/human/H)
	..()
