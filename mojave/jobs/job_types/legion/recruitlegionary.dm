/datum/job/f13/legion/recruitlegionary
	title = "Recruit Legionary"
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Centurion, any Decanus."
	description = "Fight in the name of Caesar, and claim the lands for the Bull! Listen to your superiors, they will guide you to victory."

	outfit = /datum/outfit/job/f13/legion/recruitlegionary

	display_order = JOB_DISPLAY_ORDER_F13_RECRUITLEGIONARY

/datum/outfit/job/f13/legion/recruitlegionary
	name = "_Legion Recruit"
	jobtype = /datum/job/f13/legion/recruitlegionary

	head = /obj/item/clothing/head/helmet/fallout/legion/recruit
	glasses = /obj/item/clothing/glasses/sunglasses/big
	back = /obj/item/storage/backpack/satchel/leather
	uniform = /obj/item/clothing/under/fallout/legion/fatigues/red
	shoes = /obj/item/clothing/shoes/fallout/military/legion/darkboots
	suit = /obj/item/clothing/suit/armor/fallout/legion/recruit
	gloves = /obj/item/clothing/gloves/fallout/legion/darkwraps
	suit_store = /obj/item/gun/ballistic/automatic/fallout/smg9mm
	l_pocket = /obj/item/ammo_box/magazine/fallout/smgm9mm

/datum/outfit/job/f13/legion/recruitlegionary/pre_equip(mob/living/carbon/human/H)
	..()
