/datum/job/f13/legion/vexillarius
	title = "Vexillarius"
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Centurion"
	description = "Assist the higher ranks in any way possible, deliver messages on their behalf."

	outfit = /datum/outfit/job/f13/legion/vexillarius

	display_order = JOB_DISPLAY_ORDER_F13_VEXILLARIUS

/datum/outfit/job/f13/legion/vexillarius
	name = "_Legion Vexillarius"
	jobtype = /datum/job/f13/legion/vexillarius

	head = /obj/item/clothing/head/helmet/fallout/legion/vexillarius
	glasses = /obj/item/clothing/glasses/sunglasses/big
	back = /obj/item/storage/backpack/satchel/leather
	uniform = /obj/item/clothing/under/fallout/legion/fatigues/brownpadded
	shoes = /obj/item/clothing/shoes/fallout/military/legiontanboots
	suit = /obj/item/clothing/suit/armor/fallout/legion/vexillarius
	gloves = /obj/item/clothing/gloves/fallout/tanwraps
	suit_store = /obj/item/gun/ballistic/automatic/fallout/smg9mm
	l_pocket = /obj/item/ammo_box/magazine/fallout/smgm9mm

/datum/outfit/job/f13/legion/vexillarius/pre_equip(mob/living/carbon/human/H)
	..()
