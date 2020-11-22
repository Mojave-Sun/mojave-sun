/datum/job/f13/legion/speculatore
	title = "Speculatore"
	total_positions = 1
	spawn_positions = 1
	supervisors = "Caesar, Praetorians, Legates."
	description = "Take out high value targets and gather information from the dark. You are the all-seeing eye and the all-reaping blade."

	outfit = /datum/outfit/job/f13/legion/speculatore

	display_order = JOB_DISPLAY_ORDER_F13_SPECULATORE

/datum/outfit/job/f13/legion/speculatore
	name = "_Legion Speculatore"
	jobtype = /datum/job/f13/legion/speculatore

	uniform = /obj/item/clothing/under/fallout/legion/fatigues/brownstealth
	mask = /obj/item/clothing/mask/fallout/legion/speculatore
	shoes = /obj/item/clothing/shoes/fallout/military/legion/cleats
	suit = /obj/item/clothing/suit/armor/fallout/legion/speculatore
	gloves = /obj/item/clothing/gloves/fallout/legion/darkwraps
	suit_store = /obj/item/gun/ballistic/rifle/fallout/hunting/scoped/amr
	l_pocket = /obj/item/ammo_box/magazine/fallout/amr
	neck = /obj/item/clothing/neck/cloak/fallout/legion/speculatore

/datum/outfit/job/f13/legion/speculatore/pre_equip(mob/living/carbon/human/H)
	..()
