/datum/job/f13/legion/veteranlegionary
	title = "Veteran Legionary"
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Centurion, Veteran Decanii."
	description = "Fight in the name of Caesar, and claim the lands for the Bull! Listen to your superiors, they will guide you to victory."

	outfit = /datum/outfit/job/f13/legion/veteranlegionary

	display_order = JOB_DISPLAY_ORDER_F13_VETERANLEGIONARY

/datum/outfit/job/f13/legion/veteranlegionary
	name = "_Legion Veteran Legionary"
	jobtype = /datum/job/f13/legion/veteranlegionary

	head = /obj/item/clothing/head/helmet/fallout/legion/veteran
	glasses = /obj/item/clothing/glasses/sunglasses/big
	back = /obj/item/storage/backpack/satchel/leather
	uniform = /obj/item/clothing/under/fallout/legion/fatigues/red
	shoes = /obj/item/clothing/shoes/fallout/military/legion/darkboots
	suit = /obj/item/clothing/suit/armor/fallout/legion/veteran
	gloves = /obj/item/clothing/gloves/fallout/legion/darkwraps
	mask = /obj/item/clothing/mask/fallout/legion/clothmask
	suit_store = /obj/item/gun/ballistic/automatic/pistol/fallout/m9mm
	l_pocket = /obj/item/ammo_box/magazine/fallout/m9mm
	r_hand = /obj/item/claymore/machete/gladius

/datum/outfit/job/f13/legion/veteranlegionary/pre_equip(mob/living/carbon/human/H)
	..()
