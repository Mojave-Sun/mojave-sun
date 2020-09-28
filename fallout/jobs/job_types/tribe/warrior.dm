/datum/job/f13/tribe/warrior
	title = "Warrior"
	total_positions = 4
	spawn_positions = 4
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/f13/tribe/warrior

	display_order = JOB_DISPLAY_ORDER_F13_WARRIOR

/datum/outfit/job/f13/tribe/warrior
	name = "_Tribal Warrior"
	jobtype = /datum/job/f13/tribe/warrior

	head = /obj/item/clothing/head/collectable/petehat

/datum/outfit/job/f13/tribe/warrior/pre_equip(mob/living/carbon/human/H)
	..()
