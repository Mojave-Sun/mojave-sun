datum/job/f13/town/doctor
	title = "Doctor"
	total_positions = 2
	spawn_positions = 2
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/f13/town/doctor

	display_order = JOB_DISPLAY_ORDER_F13_DOCTOR

/datum/outfit/job/f13/town/doctor
	name = "Doctor"
	jobtype = /datum/job/f13/town/doctor

/datum/outfit/job/f13/town/doctor/pre_equip(mob/living/carbon/human/H)
	..()
