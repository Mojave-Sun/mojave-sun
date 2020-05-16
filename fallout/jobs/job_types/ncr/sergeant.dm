datum/job/f13/ncr/sergeant
	title = "NCR Sergeant"
	total_positions = 2
	spawn_positions = 2
	supervisors = "The Lieutenant"
	description = "Balance working for a living and yelling at people for calling you sir between leading your corporals and troopers."
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/f13/ncr/sergeant

	display_order = JOB_DISPLAY_ORDER_F13_SERGEANT

/datum/outfit/job/f13/ncr/sergeant
	name = "Sergeant"
	jobtype = /datum/job/f13/ncr/sergeant

/datum/outfit/job/f13/ncr/sergeant/pre_equip(mob/living/carbon/human/H)
	..()
