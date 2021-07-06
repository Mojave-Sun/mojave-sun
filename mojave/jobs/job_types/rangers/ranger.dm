/datum/job/ms13/ranger/standard
	title = "Ranger"
	total_positions = 5
	spawn_positions = 5
	supervisors = "Elite Rangers, The Deputy-Chief"
	description = "Ensure peace in the region, Follow the word of the Deputy-Chief."

	outfit = /datum/outfit/job/ms13/ranger/standard

	display_order = JOB_DISPLAY_ORDER_MS13_RANGER

/datum/outfit/job/ms13/ranger/standard
	name = "_Ranger"
	jobtype = 	 /datum/job/ms13/ranger/standard
	head = 		 /obj/item/clothing/head/helmet/ms13/cowboy/ranger
	id = 		 /obj/item/card/id/ms13/ranger
	backpack_contents = list(
		/obj/item/ammo_box/ms13/tube44=2, \
		/obj/item/kitchen/knife/ms13/combat=1,\
		/obj/item/stack/medical/gauze=1)

/datum/outfit/job/ms13/ranger/standard/pre_equip(mob/living/carbon/human/H)
	..()

	if(prob(15))
		mask = /obj/item/clothing/mask/gas/ms13/ranger

	suit_store = pick(/obj/item/gun/ballistic/revolver/ms13/rev44/rifle,\
		/obj/item/gun/ballistic/shotgun/ms13/lever/trail)
