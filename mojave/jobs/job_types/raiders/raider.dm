/datum/job/f13/raiders/raider
	title = "Raider"
	total_positions = 6
	spawn_positions = 6
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/f13/raiders/raider

	display_order = JOB_DISPLAY_ORDER_F13_RAIDER

/datum/outfit/job/f13/raiders/raider
	name = "_Raider"
	jobtype = /datum/job/f13/raiders/raider

	head = /obj/item/clothing/head/collectable/petehat

/datum/outfit/job/f13/raiders/raider/pre_equip(mob/living/carbon/human/H)
	..()
