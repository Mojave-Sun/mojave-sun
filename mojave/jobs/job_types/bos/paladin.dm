/datum/job/ms13/bos/paladin
	title = "BoS Paladin"
	total_positions = 1
	spawn_positions = 1
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/bos/paladin

	display_order = JOB_DISPLAY_ORDER_MS13_PALADIN

/datum/outfit/job/ms13/bos/paladin
	name = "_BoS Paladin"
	jobtype = /datum/job/ms13/bos/paladin

	head = /obj/item/clothing/head/collectable/petehat

/datum/outfit/job/ms13/bos/paladin/pre_equip(mob/living/carbon/human/H)
	..()
