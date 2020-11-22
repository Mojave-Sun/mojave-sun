/datum/job/ms13/town/deputy
	title = "Deputy"
	total_positions = 3
	spawn_positions = 3
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/town/deputy

	display_order = JOB_DISPLAY_ORDER_MS13_DEPUTY

/datum/outfit/job/ms13/town/deputy
	name = "_Town Deputy"
	jobtype = /datum/job/ms13/town/deputy

	head = /obj/item/clothing/head/collectable/petehat

/datum/outfit/job/ms13/town/deputy/pre_equip(mob/living/carbon/human/H)
	..()
