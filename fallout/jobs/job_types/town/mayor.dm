datum/job/f13/town/mayor
	title = "Mayor"
	total_positions = 1
	spawn_positions = 1
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/f13/town/mayor

	display_order = JOB_DISPLAY_ORDER_F13_MAYOR

/datum/outfit/job/f13/town/mayor
	name = "Mayor"
	jobtype = /datum/job/f13/town/mayor

/datum/outfit/job/f13/town/mayor/pre_equip(mob/living/carbon/human/H)
	..()
