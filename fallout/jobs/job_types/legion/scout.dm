/datum/job/f13/legion/scout
	title = "Scout"
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Centurion, Speculatores, Explorers."
	description = "Assist the Legion by scouting out the land, taking out targets strategically."

	outfit = /datum/outfit/job/f13/legion/scout

	display_order = JOB_DISPLAY_ORDER_F13_SCOUT

/datum/outfit/job/f13/legion/scout
	name = "_Legion Scout"
	jobtype = /datum/job/f13/legion/scout

	head = /obj/item/clothing/head/helmet/fallout/legion/scout
	back = /obj/item/storage/backpack/satchel/leather
	uniform = /obj/item/clothing/under/fallout/legion/fatigues/brownstealth
	shoes = /obj/item/clothing/shoes/fallout/military/legioncleats
	suit = /obj/item/clothing/suit/armor/fallout/legion/scout
	suit_store = /obj/item/gun/ballistic/rifle/fallout/hunting
	l_pocket = /obj/item/ammo_box/magazine/fallout/r308 

/datum/outfit/job/f13/legion/scout/pre_equip(mob/living/carbon/human/H)
	..()
