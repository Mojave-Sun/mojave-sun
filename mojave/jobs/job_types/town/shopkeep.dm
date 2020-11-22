/datum/job/ms13/town/shopkeep
	title = "Shopkeep"
	total_positions = 2
	spawn_positions = 2
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/town/shopkeep

	display_order = JOB_DISPLAY_ORDER_MS13_SHOPKEEP

/datum/outfit/job/ms13/town/shopkeep
	name = "_Town Shopkeep"
	jobtype = /datum/job/ms13/town/shopkeep

	head = /obj/item/clothing/head/collectable/petehat

/datum/outfit/job/ms13/town/shopkeep/pre_equip(mob/living/carbon/human/H)
	..()
