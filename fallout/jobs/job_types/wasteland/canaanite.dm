datum/job/f13/wasteland/canaanite
	title = "New Canaanite"
	total_positions = 2
	spawn_positions = 2
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/f13/wasteland/canaanite

	display_order = JOB_DISPLAY_ORDER_CANAANITE

/datum/outfit/job/f13/wasteland/canaanite
	name = "New Canaanite"
	jobtype = /datum/job/f13/wasteland/canaanite

/datum/outfit/job/f13/wasteland/canaanite/pre_equip(mob/living/carbon/human/H)
	..()
