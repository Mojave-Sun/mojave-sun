/datum/job/ms13/town/settler
	title = "Town Settler"
	total_positions = 10
	spawn_positions = 10
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/town/settler

	display_order = JOB_DISPLAY_ORDER_MS13_SETTLER

/datum/outfit/job/ms13/town/settler
	name = "_Town Settler"
	jobtype = /datum/job/ms13/town/settler

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

/datum/outfit/job/ms13/town/settler/pre_equip(mob/living/carbon/human/H)
	..()
