datum/job/f13/ncr/trooper
	title = "Trooper"
	total_positions = 10
	spawn_positions = 10
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/f13/ncr/trooper

	display_order = JOB_DISPLAY_ORDER_TROOPER

/datum/outfit/job/f13/ncr/trooper
	name = "Trooper"
	jobtype = /datum/job/f13/ncr/trooper

/datum/outfit/job/f13/ncr/trooper/pre_equip(mob/living/carbon/human/H)
	..()
