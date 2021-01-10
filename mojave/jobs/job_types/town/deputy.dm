/datum/job/ms13/town/deputy
	title = "Town Deputy"
	total_positions = 3
	spawn_positions = 3
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/town/deputy

	display_order = JOB_DISPLAY_ORDER_MS13_DEPUTY

/datum/outfit/job/ms13/town/deputy
	name = "_Town Deputy"
	jobtype = /datum/job/ms13/town/deputy

	id = 		 null
	head = 	     /obj/item/clothing/head/helmet/ms13/vaulthelmet
	ears = 		 null
	glasses =	 null
	suit =       /obj/item/clothing/suit/armor/ms13/vest/vault
	suit_store = null
	uniform =    /obj/item/clothing/under/ms13/vaultsuit
	gloves = 	 /obj/item/clothing/gloves/ms13/vault
	belt = 		 null
	shoes =  	 /obj/item/clothing/shoes/ms13/military/vault

/datum/outfit/job/ms13/town/deputy/pre_equip(mob/living/carbon/human/H)
	..()
