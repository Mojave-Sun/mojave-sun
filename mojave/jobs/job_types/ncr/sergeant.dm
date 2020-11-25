/datum/job/ms13/ncr/sergeant
	title = "NCR Sergeant"
	total_positions = 2
	spawn_positions = 2
	supervisors = "The Lieutenant"
	description = "Balance working for a living and yelling at people for calling you sir between leading your corporals and troopers."

	outfit = /datum/outfit/job/ms13/ncr/sergeant

	display_order = JOB_DISPLAY_ORDER_MS13_SERGEANT

/datum/outfit/job/ms13/ncr/sergeant
	name = "_NCR Sergeant"
	jobtype = 	 /datum/job/ms13/ncr/sergeant
	id = 		 /obj/item/card/id/ms13/ncrsergeant
	uniform =    /obj/item/clothing/under/ms13/ncr/fatigues/winter
	head = 	     /obj/item/clothing/head/helmet/ms13/ncr/goggles
	suit =       /obj/item/clothing/suit/armor/ms13/ncr/mantle
	suit_store = /obj/item/gun/ballistic/shotgun/ms13/huntingshot
	belt = 		 /obj/item/storage/belt/military/army
	ears = 		 /obj/item/radio/headset
	glasses =	 /obj/item/clothing/glasses/sunglasses/big
	backpack_contents = list(
		/obj/item/storage/box/lethalshot=1, \
		/obj/item/kitchen/knife/combat=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/stack/medical/gauze=1, \
		/obj/item/food/garlicbread=1)

/datum/outfit/job/ms13/ncr/sergeant/pre_equip(mob/living/carbon/human/H)
	..()
