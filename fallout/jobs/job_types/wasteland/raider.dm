datum/job/f13/wasteland/raider
	title = "Raider"
	total_positions = -1
	spawn_positions = -1
	supervisors = "muh anarchy"

	outfit = /datum/outfit/job/raider

	display_order = JOB_DISPLAY_ORDER_RAIDER

/datum/outfit/job/raider
	name = "Raider"
	jobtype = /datum/job/f13/wasteland/raider

/datum/outfit/job/raider/pre_equip(mob/living/carbon/human/H)
	..()
