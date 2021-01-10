/datum/job/ms13/town/shopkeep
	title = "Town Shopkeep"
	total_positions = 2
	spawn_positions = 2
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/town/shopkeep

	display_order = JOB_DISPLAY_ORDER_MS13_SHOPKEEP

/datum/outfit/job/ms13/town/shopkeep
	name = "_Town Shopkeep"
	jobtype = /datum/job/ms13/town/shopkeep

	id = 		 null
	head = 	     null
	ears = 		 null
	glasses =	 null
	suit =       null
	suit_store = null
	uniform =    /obj/item/clothing/under/ms13/vaultsuit
	gloves = 	 /obj/item/clothing/gloves/color/white
	belt = 		 null
	shoes =  	 /obj/item/clothing/shoes/ms13/military/vault

/datum/outfit/job/ms13/town/shopkeep/pre_equip(mob/living/carbon/human/H)
	..()
