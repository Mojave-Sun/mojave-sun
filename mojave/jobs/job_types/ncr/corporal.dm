/datum/job/ms13/ncr/corporal
	title = "NCR Corporal"
	total_positions = 4
	spawn_positions = 4
	supervisors = "Sergeant, and Lieutenant"
	description = "Keep troopers in line, obey orders and relay changes in situations to keep command up to date."
	forbid = "The NCR forbids: Recreational drugs(barring med-x), drinking or gambling on duty, disobeying lawful orders. CO determines who is off-duty."
	enforce = ""

	outfit = /datum/outfit/job/ms13/ncr/corporal

	display_order = JOB_DISPLAY_ORDER_MS13_CORPORAL

/datum/outfit/job/ms13/ncr/corporal
	name = "_NCR Corporal"
	jobtype = /datum/job/ms13/ncr/corporal

	head = /obj/item/clothing/head/collectable/petehat

/datum/outfit/job/ms13/ncr/corporal/pre_equip(mob/living/carbon/human/H)
	..()
