/datum/job/ms13/town/bartender
	title = "Bartender"
	total_positions = 1
	spawn_positions = 1
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/town/bartender

	display_order = JOB_DISPLAY_ORDER_MS13_BARTENDER

/datum/outfit/job/ms13/town/bartender
	name = "_Town Bartender"
	jobtype = /datum/job/ms13/town/bartender

	head = /obj/item/clothing/head/collectable/petehat

/datum/outfit/job/ms13/town/bartender/pre_equip(mob/living/carbon/human/H)
	..()
