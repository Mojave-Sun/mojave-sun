/datum/job/ms13/town/farmer
	title = "Town Farmer"
	total_positions = 2
	spawn_positions = 2
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/town/farmer

	display_order = JOB_DISPLAY_ORDER_MS13_FARMER

/datum/outfit/job/ms13/town/farmer
	name = "_Town Farmer"
	jobtype = /datum/job/ms13/town/farmer

	id = 		 null
	head = 	     null
	ears = 		 null
	glasses =	 null
	suit =       null
	suit_store = null
	uniform =    /obj/item/clothing/under/ms13/vaultsuit
	gloves = 	 null
	belt = 		 null
	shoes =  	 /obj/item/clothing/shoes/ms13/military/vault

/datum/outfit/job/ms13/town/farmer/pre_equip(mob/living/carbon/human/H)
	..()
