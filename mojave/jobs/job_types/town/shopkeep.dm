/datum/job/ms13/town/shopkeep
	title = "Town Shopkeep"
	total_positions = 2
	spawn_positions = 2
	supervisors = "The Mayor and Sheriff."
	description = "Hustle off any goods you come across at a questionable price. After all, what other high quality shop will they find in the next hundred miles?"
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
	suit =       /obj/item/clothing/suit/ms13/snazzyleather
	suit_store = null
	uniform =    /obj/item/clothing/under/ms13/vaultsuit
	gloves = 	 null
	belt = 		 null
	shoes =  	 /obj/item/clothing/shoes/ms13/military/vault
	back = 		 /obj/item/storage/backpack/satchel/leather

/datum/outfit/job/ms13/town/shopkeep/pre_equip(mob/living/carbon/human/H)
	..()
