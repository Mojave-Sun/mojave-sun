datum/job/f13/ncr/corporal
	title = "Corporal"
	total_positions = 4
	spawn_positions = 4
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/f13/ncr/corporal

	display_order = JOB_DISPLAY_ORDER_CORPORAL

/datum/outfit/job/f13/ncr/corporal
	name = "Corporal"
	jobtype = /datum/job/f13/ncr/corporal

/datum/outfit/job/f13/ncr/corporal/pre_equip(mob/living/carbon/human/H)
	..()
