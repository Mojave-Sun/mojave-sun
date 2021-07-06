/datum/job/ms13/ranger/recruit
	title = "Ranger Recruit"
	total_positions = 3
	spawn_positions = 3
	supervisors = "Rangers, Elite Rangers, and the Deputy-Chief."
	description = "Learn the ropes of justice bringing, Stay in line and listen to your superiors. Ensure the region is in a relative state of peace."

	outfit = /datum/outfit/job/ms13/ranger/recruit

	display_order = JOB_DISPLAY_ORDER_MS13_RANGERRECRUIT

/datum/outfit/job/ms13/ranger/recruit
	name = "_Ranger Recruit"
	jobtype = 	 /datum/job/ms13/ranger/recruit
	head = 		 /obj/item/clothing/head/helmet/ms13/cowboy/ranger
	id = 		 /obj/item/card/id/ms13/ranger_recruit
	suit_store = /obj/item/gun/ballistic/shotgun/ms13/lever/cowboy
	backpack_contents = list(
		/obj/item/ammo_box/ms13/tube357=2, \
		/obj/item/kitchen/knife/ms13/combat=1,\
		/obj/item/stack/medical/gauze=1)

/datum/outfit/job/ms13/ranger/recruit/pre_equip(mob/living/carbon/human/H)
	..()

	suit = pick(/obj/item/clothing/suit/ms13/duster,\
		/obj/item/clothing/suit/ms13/duster/alt)
