/datum/job/ms13/ranger/elite
	title = "Ranger"
	total_positions = 5
	spawn_positions = 5
	supervisors = "Elite Rangers, The Deputy-Chief"
	description = "Ensure peace in the region, Follow the word of the Deputy-Chief."

	outfit = /datum/outfit/job/ms13/ranger/elite

	display_order = JOB_DISPLAY_ORDER_MS13_RANGERELITE

/datum/outfit/job/ms13/ranger/elite
	name = "_Ranger Elite"
	jobtype = 	 /datum/job/ms13/ranger/elite
	head = 		 /obj/item/clothing/head/helmet/ms13/cowboy/ranger
	suit = 	  	 /obj/item/clothing/suit/armor/ms13/eliteriot/ranger
	id = 		 /obj/item/card/id/ms13/ranger
	backpack_contents = list(
		/obj/item/ammo_box/ms13/tube44=2, \
		/obj/item/kitchen/knife/ms13/combat=1,\
		/obj/item/stack/medical/gauze=1,\
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1)

/datum/outfit/job/ms13/ranger/elite/pre_equip(mob/living/carbon/human/H)
	..()
