/datum/job/ms13/raiders/boss
	title = "Raider Boss"
	total_positions = 1
	spawn_positions = 1
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/raiders/boss

	display_order = JOB_DISPLAY_ORDER_MS13_BOSS

/datum/outfit/job/ms13/raiders/boss
	name = "_Raider Boss"
	jobtype = /datum/job/ms13/raiders/boss

	head = /obj/item/clothing/head/collectable/petehat

/datum/outfit/job/ms13/raiders/boss/pre_equip(mob/living/carbon/human/H)
	..()
