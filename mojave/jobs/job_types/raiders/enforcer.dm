/datum/job/f13/raiders/enforcer
	title = "Enforcer"
	total_positions = 1
	spawn_positions = 1
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/f13/raiders/enforcer

	display_order = JOB_DISPLAY_ORDER_F13_ENFORCER

/datum/outfit/job/f13/raiders/enforcer
	name = "_Raider Enforcer"
	jobtype = /datum/job/f13/raiders/enforcer

	head = /obj/item/clothing/head/collectable/petehat

/datum/outfit/job/f13/raiders/enforcer/pre_equip(mob/living/carbon/human/H)
	..()
