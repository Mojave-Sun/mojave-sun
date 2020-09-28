/datum/job/f13/town/settler
	title = "Settler"
	total_positions = 10
	spawn_positions = 10
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/f13/town/settler

	display_order = JOB_DISPLAY_ORDER_F13_SETTLER

/datum/outfit/job/f13/town/settler
	name = "_Town Settler"
	jobtype = /datum/job/f13/town/settler

	head = /obj/item/clothing/head/collectable/petehat

/datum/outfit/job/f13/town/settler/pre_equip(mob/living/carbon/human/H)
	..()
