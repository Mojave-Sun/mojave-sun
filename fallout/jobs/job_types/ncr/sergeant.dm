datum/job/f13/ncr/sergeant
	title = "Sergeant"
	total_positions = 2
	spawn_positions = 2
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/f13/ncr/sergeant

	display_order = JOB_DISPLAY_ORDER_SERGEANT

/datum/outfit/job/f13/ncr/sergeant
	name = "Sergeant"
	jobtype = /datum/job/f13/ncr/sergeant

/datum/outfit/job/f13/ncr/sergeant/pre_equip(mob/living/carbon/human/H)
	..()
