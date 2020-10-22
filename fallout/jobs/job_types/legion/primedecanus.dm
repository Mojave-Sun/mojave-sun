/datum/job/f13/legion/primedecanus
	title = "Prime Decanus"
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Centurion, Veteran Decanus."
	description = "Assist the Centurion in handling your soldiers, keep them in line and focused on the goals at hand."
	forbid = "Caesar's Legion forbids: Chem usage, Over-reliance on technology of all forms."

	outfit = /datum/outfit/job/f13/legion/primedecanus

	display_order = JOB_DISPLAY_ORDER_F13_PRIMEDECANUS

/datum/outfit/job/f13/legion/primedecanus
	name = "_Legion Prime Decanus"
	jobtype = /datum/job/f13/legion/primedecanus

	head = /obj/item/clothing/head/helmet/fallout/legion/decanus/prime

/datum/outfit/job/f13/legion/primedecanus/pre_equip(mob/living/carbon/human/H)
	..()
	glasses = /obj/item/clothing/glasses/sunglasses/big
	back = /obj/item/storage/backpack/satchel/leather
	uniform = /obj/item/clothing/under/fallout/legion/fatigues/brownpadded
	shoes = /obj/item/clothing/shoes/fallout/military/legiontanboots
	suit = /obj/item/clothing/suit/armor/fallout/legion/prime
	gloves = /obj/item/clothing/gloves/fallout/tanwraps
	mask = /obj/item/clothing/mask/fallout/legion/clothmask
	suit_store = /obj/item/gun/ballistic/shotgun/fallout/cowboy
	l_pocket = /obj/item/ammo_box/fallout/tube357
