/datum/job/ms13/ncr/sergeant
	title = "NCR Sergeant"
	total_positions = 2
	spawn_positions = 2
	supervisors = "The Lieutenant"
	description = "Balance working for a living and yelling at people for calling you sir between leading your corporals and troopers."
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/ncr/sergeant

	display_order = JOB_DISPLAY_ORDER_MS13_SERGEANT

/datum/outfit/job/ms13/ncr/sergeant
	name = "_NCR Sergeant"
	jobtype = /datum/job/ms13/ncr/sergeant

	head = /obj/item/clothing/head/collectable/petehat

/datum/outfit/job/ms13/ncr/sergeant/pre_equip(mob/living/carbon/human/H)
	..()
