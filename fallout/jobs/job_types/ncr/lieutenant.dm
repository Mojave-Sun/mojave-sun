/datum/job/f13/ncr/lieutenant
	title = "NCR Lieutenant"
	total_positions = 1
	spawn_positions = 1
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/f13/ncr/lieutenant

	display_order = JOB_DISPLAY_ORDER_F13_LIEUTENANT

/datum/outfit/job/f13/ncr/lieutenant
	name = "_NCR Lieutenant"
	jobtype = /datum/job/f13/ncr/lieutenant

	head = /obj/item/clothing/head/collectable/petehat

/datum/outfit/job/f13/ncr/lieutenant/pre_equip(mob/living/carbon/human/H)
	..()
