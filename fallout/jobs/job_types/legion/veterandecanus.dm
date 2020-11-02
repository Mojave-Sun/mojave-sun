/datum/job/f13/legion/veterandecanus
	title = "Veteran Decanus"
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Centurion."
	description = "Assist the Centurion in handling your soldiers, keep them in line and focused on the goals at hand."

	outfit = /datum/outfit/job/f13/legion/veterandecanus

	display_order = JOB_DISPLAY_ORDER_F13_VETERANDECANUS

/datum/outfit/job/f13/legion/veterandecanus
	name = "_Legion Veteran Decanus"
	jobtype = /datum/job/f13/legion/veterandecanus

	head = /obj/item/clothing/head/helmet/fallout/legion/decanus/veteran
	glasses = /obj/item/clothing/glasses/sunglasses/big
	back = /obj/item/storage/backpack/satchel/leather
	uniform = /obj/item/clothing/under/fallout/legion/fatigues/brownpadded
	shoes = /obj/item/clothing/shoes/fallout/military/legion/tanboots
	suit = /obj/item/clothing/suit/armor/fallout/legion/veteran
	gloves = /obj/item/clothing/gloves/fallout/legion/tanwraps
	mask = /obj/item/clothing/mask/fallout/legion/clothmask
	suit_store = /obj/item/gun/ballistic/revolver/fallout/rev44
	l_pocket = /obj/item/ammo_box/magazine/internal/cylinder/rev44

/datum/outfit/job/f13/legion/veterandecanus/pre_equip(mob/living/carbon/human/H)
	..()
