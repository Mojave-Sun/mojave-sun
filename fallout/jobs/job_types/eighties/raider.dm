datum/job/f13/eighties/raider
	title = "Raider"
	total_positions = 6
	spawn_positions = 6
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/f13/eighties/raider

	display_order = JOB_DISPLAY_ORDER_F13_RAIDER

/datum/outfit/job/f13/eighties/raider
	name = "Raider"
	jobtype = /datum/job/f13/eighties/raider

/datum/outfit/job/f13/eighties/raider/pre_equip(mob/living/carbon/human/H)
	..()
