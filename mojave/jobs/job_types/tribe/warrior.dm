/datum/job/ms13/tribe/warrior
	title = "Tribal Warrior"
	total_positions = 4
	spawn_positions = 4
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/tribe/warrior

	display_order = JOB_DISPLAY_ORDER_MS13_WARRIOR

/datum/outfit/job/ms13/tribe/warrior
	name = "_Tribal Warrior"
	jobtype = /datum/job/ms13/tribe/warrior

	head = /obj/item/clothing/head/collectable/petehat

/datum/outfit/job/ms13/tribe/warrior/pre_equip(mob/living/carbon/human/H)
	..()
