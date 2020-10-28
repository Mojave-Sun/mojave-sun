/datum/job/f13/legion/explorer
	title = "Explorer"
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Centurion, Speculatores."
	description = "Assist the Legion by scouting out the land, taking out targets strategically."

	outfit = /datum/outfit/job/f13/legion/explorer

	display_order = JOB_DISPLAY_ORDER_F13_EXPLORER

/datum/outfit/job/f13/legion/explorer
	name = "_Legion Explorer"
	jobtype = /datum/job/f13/legion/explorer

	head = /obj/item/clothing/head/helmet/fallout/legion/explorer
		back = /obj/item/storage/backpack/satchel/leather
	uniform = /obj/item/clothing/under/fallout/legion/fatigues/brownstealth
	shoes = /obj/item/clothing/shoes/fallout/military/legioncleats
	suit = /obj/item/clothing/suit/armor/fallout/legion/explorer
	gloves = /obj/item/clothing/gloves/fallout/bracers
	suit_store = /obj/item/gun/ballistic/rifle/fallout/hunting/scoped
	l_pocket = /obj/item/ammo_box/magazine/fallout/r308

/datum/outfit/job/f13/legion/explorer/pre_equip(mob/living/carbon/human/H)
	..()
