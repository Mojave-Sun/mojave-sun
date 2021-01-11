/datum/job/ms13/town/sheriff
	title = "Town Sheriff"
	total_positions = 1
	spawn_positions = 1
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/town/sheriff

	display_order = JOB_DISPLAY_ORDER_MS13_SHERIFF

/datum/outfit/job/ms13/town/sheriff
	name = "_Town Sheriff"
	jobtype = /datum/job/ms13/town/sheriff

	head = /obj/item/clothing/head/collectable/petehat

/datum/outfit/job/ms13/town/sheriff/pre_equip(mob/living/carbon/human/H)
	..()
