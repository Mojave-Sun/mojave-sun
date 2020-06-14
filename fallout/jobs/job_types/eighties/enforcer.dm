datum/job/f13/eighties/enforcer
	title = "Enforcer"
	total_positions = 1
	spawn_positions = 1
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/f13/eighties/enforcer

	display_order = JOB_DISPLAY_ORDER_F13_ENFORCER

/datum/outfit/job/f13/eighties/enforcer
	name = "Enforcer"
	jobtype = /datum/job/f13/eighties/enforcer

/datum/outfit/job/f13/eighties/enforcer/pre_equip(mob/living/carbon/human/H)
	..()
