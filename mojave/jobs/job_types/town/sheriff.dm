/datum/job/ms13/town/sheriff
	title = "Town Sheriff"
	total_positions = 1
	spawn_positions = 1
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/town/sheriff

	display_order = JOB_DISPLAY_ORDER_MS13_SHERIFF

/datum/outfit/job/ms13/town/sheriff
	name = "_Town Sheriff"
	jobtype = /datum/job/ms13/town/sheriff

	id = 		 null
	head = 	     /obj/item/clothing/head/helmet/ms13/cowboy/sheriff
	ears = 		 null
	glasses =	 null
	suit =       /obj/item/clothing/suit/ms13/ljacket/sheriff
	suit_store = null
	uniform =    /obj/item/clothing/under/ms13/vaultsuit
	gloves = 	 /obj/item/clothing/gloves/ms13/vault
	belt = 		 null
	shoes =  	 /obj/item/clothing/shoes/ms13/military/vault
	back = 		 /obj/item/storage/backpack/satchel/leather
/datum/outfit/job/ms13/town/sheriff/pre_equip(mob/living/carbon/human/H)
	..()
