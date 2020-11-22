/datum/job/f13/legion/centurion
	title = "Centurion"
	total_positions = 1
	spawn_positions = 1
	supervisors = "Praetorians, The Legate, and Caesar."
	description = "Command your Centura, leading them to glorious victory at all costs."
	enforce = "The Legion expects you to lead them effectively. Do not be a coward."

	outfit = /datum/outfit/job/f13/legion/centurion

	display_order = JOB_DISPLAY_ORDER_F13_CENTURION

/datum/outfit/job/f13/legion/centurion
	name = "_Legion Centurion"
	jobtype = /datum/job/f13/legion/centurion

	head = /obj/item/clothing/head/helmet/fallout/legion/centurion
	glasses = /obj/item/clothing/glasses/sunglasses/big
	backpack = /obj/item/storage/backpack/satchel/leather
	uniform = /obj/item/clothing/under/fallout/legion/fatigues/redpadded
	shoes = /obj/item/clothing/shoes/fallout/military/legion/darkboots
	suit = /obj/item/clothing/suit/armor/fallout/legion/centurion
	suit_store = /obj/item/gun/ballistic/automatic/fallout/smg10mm
	r_pocket = /obj/item/ammo_box/magazine/fallout/smgm10mm

/datum/outfit/job/f13/legion/centurion/pre_equip(mob/living/carbon/human/H)
	..()
