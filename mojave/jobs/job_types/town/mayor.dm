/datum/job/ms13/town/mayor
	title = "Mayor"
	total_positions = 1
	spawn_positions = 1
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/town/mayor

	display_order = JOB_DISPLAY_ORDER_MS13_MAYOR

/datum/outfit/job/ms13/town/mayor
	name = "_Town Mayor"
	jobtype = /datum/job/ms13/town/mayor

	head = /obj/item/clothing/head/collectable/petehat

/datum/outfit/job/ms13/town/mayor/pre_equip(mob/living/carbon/human/H)
	..()
