datum/job/f13/town/mayor
	title = "Mayor"
	total_positions = 1
	spawn_positions = 1
	supervisors = ""

	outfit = /datum/outfit/job/mayor

	display_order = JOB_DISPLAY_ORDER_MAYOR

/datum/outfit/job/dweller
	name = "Mayor"
	jobtype = /datum/job/f13/town/mayor

/datum/outfit/job/mayor/pre_equip(mob/living/carbon/human/H)
	..()
