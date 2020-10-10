/datum/job/f13/tribe/shaman
	title = "Shaman"
	total_positions = 3
	spawn_positions = 3
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/f13/tribe/shaman

	display_order = JOB_DISPLAY_ORDER_F13_SHAMAN

/datum/outfit/job/f13/tribe/shaman
	name = "_Shaman"
	jobtype = /datum/job/f13/tribe/shaman

	head = /obj/item/clothing/head/collectable/petehat

/datum/outfit/job/f13/tribe/shaman/pre_equip(mob/living/carbon/human/H)
	..()
