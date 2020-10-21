/datum/job/f13/legion/veterandecanus
	title = "Veteran Decanus"
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Centurion."
	description = "Assist the Centurion in handling your soldiers, keep them in line and focused on the goals at hand."
	forbid = "Caesar's Legion forbids: Chem usage, Over-reliance on technology of all forms."

	outfit = /datum/outfit/job/f13/legion/veterandecanus

	display_order = JOB_DISPLAY_ORDER_F13_VETERANDECANUS

/datum/outfit/job/f13/legion/veterandecanus
	name = "_Legion Veteran Decanus"
	jobtype = /datum/job/f13/legion/veterandecanus

	head = /obj/item/clothing/head/helmet/fallout/legion/decanus/veteran

/datum/outfit/job/f13/legion/veterandecanus/pre_equip(mob/living/carbon/human/H)
	..()
	glasses = /obj/item/clothing/glasses/sunglasses/big
	back = /obj/item/storage/backpack/satchel/leather
	uniform = /obj/item/clothing/under/fallout/legion/fatigues/brownpadded
	shoes = /obj/item/clothing/shoes/fallout/military/legiondarkboots
	suit = /obj/item/clothing/suit/armor/fallout/legion/veteran
	mask = /obj/item/clothing/mask/fallout/legion/clothmask
	suit_store = /obj/item/gun/ballistic/revolver/fallout/rev44
