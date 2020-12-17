/datum/job/ms13/tribe/shaman
	title = "Tribal Shaman"
	total_positions = 3
	spawn_positions = 3
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/tribe/shaman

	display_order = JOB_DISPLAY_ORDER_MS13_SHAMAN

/datum/outfit/job/ms13/tribe/shaman
	name = "_Shaman"
	jobtype = /datum/job/ms13/tribe/shaman

	head = /obj/item/clothing/head/collectable/petehat

/datum/outfit/job/ms13/tribe/shaman/pre_equip(mob/living/carbon/human/H)
	..()
