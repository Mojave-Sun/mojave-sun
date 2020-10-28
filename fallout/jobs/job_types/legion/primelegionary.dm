/datum/job/f13/legion/primelegionary
	title = "Prime Legionary"
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Centurion, Prime and Veteran Decanii."
	description = "Fight in the name of Caesar, and claim the lands for the bull! Listen to your superiors, They will guide you to victory."

	outfit = /datum/outfit/job/f13/legion/primelegionary

	display_order = JOB_DISPLAY_ORDER_F13_PRIMELEGIONARY

/datum/outfit/job/f13/legion/primelegionary
	name = "_Legion Veteran Legionary"
	jobtype = /datum/job/f13/legion/primelegionary

	head = /obj/item/clothing/head/helmet/fallout/legion/prime
		glasses = /obj/item/clothing/glasses/sunglasses/big
	back = /obj/item/storage/backpack/satchel/leather
	uniform = /obj/item/clothing/under/fallout/legion/fatigues/red
	shoes = /obj/item/clothing/shoes/fallout/military/legiondarkboots
	suit = /obj/item/clothing/suit/armor/fallout/legion/prime
	gloves = /obj/item/clothing/gloves/fallout/darkwraps
	mask = /obj/item/clothing/mask/fallout/legion/clothmask
	suit_store = /obj/item/gun/ballistic/revolver/fallout/caravan
	r_hand = /obj/item/claymore/machete

/datum/outfit/job/f13/legion/primelegionary/pre_equip(mob/living/carbon/human/H)
	..()
