/datum/job/ms13/town/sheriff
	title = "Town Sheriff"
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Mayor."
	description = "Enforce the Mayor's law upon the Town with the assistance of your Deputies by any means possible."
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/town/sheriff

	display_order = JOB_DISPLAY_ORDER_MS13_SHERIFF

/datum/outfit/job/ms13/town/sheriff
	name = "_Town Sheriff"
	jobtype = /datum/job/ms13/town/sheriff

	id = 		 /obj/item/card/id/ms13/sheriff
	head = 	     /obj/item/clothing/head/helmet/ms13/cowboy/sheriff
	suit =       /obj/item/clothing/suit/ms13/ljacket/brown/armored
	uniform =    /obj/item/clothing/under/ms13/vaultsuit
	gloves = 	 /obj/item/clothing/gloves/ms13/vault
	shoes =  	 /obj/item/clothing/shoes/ms13/military/vault
	back =	 	 /obj/item/storage/backpack/satchel/leather

/datum/outfit/job/ms13/town/sheriff/pre_equip(mob/living/carbon/human/H)
	..()
