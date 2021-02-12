/datum/job/ms13/tribe/chieftain
	title = "Tribal Chieftain"
	total_positions = 1
	spawn_positions = 1
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/tribe/chieftain

	display_order = JOB_DISPLAY_ORDER_MS13_CHIEFTAIN

/datum/outfit/job/ms13/tribe/chieftain
	name = "_Tribal Chieftain"
	jobtype = /datum/job/ms13/tribe/chieftain

	head = /obj/item/clothing/head/collectable/petehat

/datum/outfit/job/ms13/tribe/chieftain/pre_equip(mob/living/carbon/human/H)
	..()
