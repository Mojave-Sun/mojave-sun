/datum/job/ms13/ncr/corporal
	title = "NCR Corporal"
	total_positions = 4
	spawn_positions = 4
	supervisors = "the Lieutenant and the Sergeants, in that order."
	description = "Keep troopers in line, obey orders and relay changes in situations to keep command up to date."

	outfit = /datum/outfit/job/ms13/ncr/corporal

	display_order = JOB_DISPLAY_ORDER_MS13_CORPORAL

/datum/outfit/job/ms13/ncr/corporal
	name = "_NCR Corporal"
	jobtype = /datum/job/ms13/ncr/corporal
	id = 		 /obj/item/card/id/ms13/ncrtrooper
	uniform =    /obj/item/clothing/under/ms13/ncr/fatigues/winter
	head = 	     /obj/item/clothing/head/helmet/ms13/ncr/goggles
	suit =       /obj/item/clothing/suit/armor/ms13/ncr/reinforced
	suit_store = /obj/item/gun/ballistic/automatic/ms13/marksman/service
	belt = 		 /obj/item/storage/belt/military/army
	ears = 		 /obj/item/radio/headset
	glasses =	 null
	backpack_contents = list(
		/obj/item/ammo_box/magazine/ms13/r20=1, \
		/obj/item/kitchen/knife/combat=1, \
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/stack/medical/gauze=1, \
		/obj/item/food/bread/plain=1)

/datum/outfit/job/ms13/ncr/corporal/pre_equip(mob/living/carbon/human/H)
	..()
