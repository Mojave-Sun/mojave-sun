/datum/job/ms13/ncr/medicalofficer
	title = "NCR Medical Officer"
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Lieutenant."
	description = "ou are in charge of providing medical support to the NCR throughout the region. You are a non-combat role and should not be using your authority for anything outside of medical purposes."

	outfit = /datum/outfit/job/ms13/ncr/medicalofficer

	display_order = JOB_DISPLAY_ORDER_MS13_MEDICALOFFICER

/datum/outfit/job/ms13/ncr/medicalofficer
	name = "_NCR Medical Officer"
	jobtype = /datum/job/ms13/ncr/medicalofficer
	id = 		 /obj/item/card/id/ms13/ncrlieutenant
	uniform =    /obj/item/clothing/under/ms13/ncr/fatigues/winter
	head = 	     /obj/item/clothing/head/helmet/ms13/ncr/beret
	suit =       /obj/item/clothing/suit/toggle/labcoat
	suit_store = /obj/item/healthanalyzer
	belt = 		 /obj/item/storage/belt/medical
	shoes = 	 /obj/item/clothing/shoes/ms13/military/ncr_officer/winter
	glasses =	 /obj/item/clothing/glasses/sunglasses/big
	backpack_contents = list(
		/obj/item/gun/ballistic/automatic/pistol/ms13/m9mm, \
		/obj/item/ammo_box/magazine/ms13/m9mm=2, \
		/obj/item/kitchen/knife/combat/survival=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=2, \
		/obj/item/stack/medical/gauze=1, \
		/obj/item/stack/medical/suture=1, \
		/obj/item/stack/medical/mesh=1, \
		/obj/item/stack/medical/bruise_pack=1, \
		/obj/item/food/bread/creamcheese=1)

/datum/outfit/job/ms13/ncr/medicalofficer/pre_equip(mob/living/carbon/human/H)
	..()
