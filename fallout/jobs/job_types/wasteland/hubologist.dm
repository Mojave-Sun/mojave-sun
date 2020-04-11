datum/job/f13/wasteland/hubologist
	title = "Hubologist"
	total_positions = 2
	spawn_positions = 2
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/f13/wasteland/hubologist

	display_order = JOB_DISPLAY_ORDER_HUBOLOGIST

/datum/outfit/job/f13/wasteland/hubologist
	name = "Hubologist"
	jobtype = /datum/job/f13/wasteland/hubologist

/datum/outfit/job/f13/wasteland/hubologist/pre_equip(mob/living/carbon/human/H)
	..()
