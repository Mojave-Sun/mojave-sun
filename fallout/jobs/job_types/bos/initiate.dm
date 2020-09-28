/datum/job/f13/bos/initiate
	title = "Initiate"
	total_positions = 3
	spawn_positions = 3
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/f13/bos/initiate

	display_order = JOB_DISPLAY_ORDER_F13_INITIATE

/datum/outfit/job/f13/bos/initiate
	name = "_BoS Initiate"
	jobtype = /datum/job/f13/bos/initiate

	head = /obj/item/clothing/head/collectable/petehat

/datum/outfit/job/f13/bos/initiate/pre_equip(mob/living/carbon/human/H)
	..()
