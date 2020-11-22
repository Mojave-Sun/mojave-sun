/datum/job/ms13/bos/head_paladin
	title = "Head Paladin"
	total_positions = 1
	spawn_positions = 1
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/bos/head_paladin

	display_order = JOB_DISPLAY_ORDER_MS13_HEAD_PALADIN

/datum/outfit/job/ms13/bos/head_paladin
	name = "_BoS Head Paladin"
	jobtype = /datum/job/ms13/bos/head_paladin

	head = /obj/item/clothing/head/collectable/petehat

/datum/outfit/job/ms13/bos/head_paladin/pre_equip(mob/living/carbon/human/H)
	..()
