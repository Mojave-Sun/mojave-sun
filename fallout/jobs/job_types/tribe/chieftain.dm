/datum/job/f13/tribe/chieftain
	title = "Chieftain"
	total_positions = 1
	spawn_positions = 1
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/f13/tribe/chieftain

	display_order = JOB_DISPLAY_ORDER_F13_CHIEFTAIN

/datum/outfit/job/f13/tribe/chieftain
	name = "_Tribal Chieftain"
	jobtype = /datum/job/f13/tribe/chieftain

	head = /obj/item/clothing/head/collectable/petehat

/datum/outfit/job/f13/tribe/chieftain/pre_equip(mob/living/carbon/human/H)
	..()
