datum/job/f13/wasteland/wastelander
	title = "Wastelander"
	total_positions = 2
	spawn_positions = 2
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/f13/wasteland/wastelander

	display_order = JOB_DISPLAY_ORDER_WASTELANDER

/datum/outfit/job/f13/wasteland/wastelander
	name = "Wastelander"
	jobtype = /datum/job/f13/wasteland/wastelander

/datum/outfit/job/f13/wasteland/wastelander/pre_equip(mob/living/carbon/human/H)
	..()
