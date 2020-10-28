/datum/job/f13/legion/recruitdecanus
	title = "Recruit Decanus"
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Centurion, Higher Decanii."
	description = "Assist the higher ranks in handling your soldiers, keep them in line and focused on the goals at hand."

	outfit = /datum/outfit/job/f13/legion/recruitdecanus

	display_order = JOB_DISPLAY_ORDER_F13_RECRUITDECANUS

/datum/outfit/job/f13/legion/recruitdecanus
	name = "_Legion Recruit Decanus"
	jobtype = /datum/job/f13/legion/recruitdecanus

	head = /obj/item/clothing/head/helmet/fallout/legion/decanus/recruit
	glasses = /obj/item/clothing/glasses/sunglasses/big
	back = /obj/item/storage/backpack/satchel/leather
	uniform = /obj/item/clothing/under/fallout/legion/fatigues/brownpadded
	shoes = /obj/item/clothing/shoes/fallout/military/legiontanboots
	suit = /obj/item/clothing/suit/armor/fallout/legion/recruit
	gloves = /obj/item/clothing/gloves/fallout/tanwraps
	mask = /obj/item/clothing/mask/fallout/legion/clothmask
	suit_store = /obj/item/gun/ballistic/automatic/fallout/smg9mm
	l_pocket = /obj/item/ammo_box/magazine/fallout/smgm9mm

/datum/outfit/job/f13/legion/recruitdecanus/pre_equip(mob/living/carbon/human/H)
	..()
