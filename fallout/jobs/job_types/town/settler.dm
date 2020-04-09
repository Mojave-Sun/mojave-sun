datum/job/f13/town/settler
	title = "Settler"
	total_positions = -1
	spawn_positions = -1
	supervisors = "mayor"

	outfit = /datum/outfit/job/settler

	display_order = JOB_DISPLAY_ORDER_SETTLER

/datum/outfit/job/dweller
	name = "Settler"
	jobtype = /datum/job/f13/town/settler

/datum/outfit/job/settler/pre_equip(mob/living/carbon/human/H)
	..()
