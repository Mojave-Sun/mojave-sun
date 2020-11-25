/datum/job/ms13/tribe/berserker
	title = "Berserker"
	total_positions = 2
	spawn_positions = 2
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/tribe/berserker

	display_order = JOB_DISPLAY_ORDER_MS13_BERSERKER

/datum/outfit/job/ms13/tribe/berserker
	name = "_Tribal Berserker"
	jobtype = /datum/job/ms13/tribe/berserker

	head = /obj/item/clothing/head/collectable/petehat

/datum/outfit/job/ms13/tribe/berserker/pre_equip(mob/living/carbon/human/H)
	..()
