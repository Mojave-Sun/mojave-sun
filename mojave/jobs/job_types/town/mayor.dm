/datum/job/ms13/town/mayor
	title = "Town Mayor"
	total_positions = 1
	spawn_positions = 1
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/town/mayor

	display_order = JOB_DISPLAY_ORDER_MS13_MAYOR

/datum/outfit/job/ms13/town/mayor
	name = "_Town Mayor"
	jobtype = /datum/job/ms13/town/mayor

	id = 		 null
	head = 	     null
	ears = 		 null
	glasses =	 null
	suit =       /obj/item/clothing/suit/ms13/ljacket/mayor
	suit_store = null
	uniform =    /obj/item/clothing/under/ms13/vaultsuit
	gloves = 	 null
	belt = 		 null
	shoes =  	 /obj/item/clothing/shoes/ms13/military/vault

/datum/outfit/job/ms13/town/mayor/pre_equip(mob/living/carbon/human/H)
	..()
