/datum/job/f13/raiders/boss
	title = "Boss"
	total_positions = 1
	spawn_positions = 1
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/f13/raiders/boss

	display_order = JOB_DISPLAY_ORDER_F13_BOSS

/datum/outfit/job/f13/raiders/boss
	name = "_Raider Boss"
	jobtype = /datum/job/f13/raiders/boss

	head = /obj/item/clothing/head/collectable/petehat

/datum/outfit/job/f13/raiders/boss/pre_equip(mob/living/carbon/human/H)
	..()
