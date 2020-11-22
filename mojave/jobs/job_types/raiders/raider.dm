/datum/job/ms13/raiders/raider
	title = "Raider"
	total_positions = 6
	spawn_positions = 6
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/raiders/raider

	display_order = JOB_DISPLAY_ORDER_MS13_RAIDER

/datum/outfit/job/ms13/raiders/raider
	name = "_Raider"
	jobtype = /datum/job/ms13/raiders/raider

	head = /obj/item/clothing/head/collectable/petehat

/datum/outfit/job/ms13/raiders/raider/pre_equip(mob/living/carbon/human/H)
	..()
