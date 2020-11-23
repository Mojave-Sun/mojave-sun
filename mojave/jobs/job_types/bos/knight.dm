/datum/job/ms13/bos/knight
	title = "Knight"
	total_positions = 3
	spawn_positions = 3
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/bos/knight

	display_order = JOB_DISPLAY_ORDER_MS13_KNIGHT

/datum/outfit/job/ms13/bos/knight
	name = "_BoS Knight"
	jobtype = /datum/job/ms13/bos/knight

	head = /obj/item/clothing/head/collectable/petehat

/datum/outfit/job/ms13/bos/knight/pre_equip(mob/living/carbon/human/H)
	..()
