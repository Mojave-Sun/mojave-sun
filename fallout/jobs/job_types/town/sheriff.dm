datum/job/f13/town/sheriff
	title = "Sheriff"
	total_positions = 1
	spawn_positions = 1
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/f13/town/sheriff

	display_order = JOB_DISPLAY_ORDER_F13_SHERIFF

/datum/outfit/job/f13/town/sheriff
	name = "Sheriff"
	jobtype = /datum/job/f13/town/sheriff

/datum/outfit/job/f13/town/sheriff/pre_equip(mob/living/carbon/human/H)
	..()
