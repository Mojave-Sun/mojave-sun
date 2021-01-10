/datum/job/ms13/town/prospector
	title = "Town prospector"
	total_positions = 2
	spawn_positions = 2
	supervisors = "Mayor and the Sheriff."
	description = "Mine resources for the Town to use"
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/town/prospector

	display_order = JOB_DISPLAY_ORDER_MS13_PROSPECTOR

/datum/outfit/job/ms13/town/prospector
	name = "_Town Prospector"
	jobtype = /datum/job/ms13/town/prospector

	id = 		 null
	head = 	     /obj/item/clothing/head/helmet/ms13/reinfhard
	ears = 		 null
	glasses =	 null
	mask =		 /obj/item/clothing/mask/ms13/facewrap/halfwrap
	suit =       null
	suit_store = null
	uniform =    /obj/item/clothing/under/ms13/vaultsuit
	gloves = 	 /obj/item/clothing/gloves/ms13/baseball
	belt = 		 /obj/item/pickaxe
	shoes =  	 /obj/item/clothing/shoes/ms13/military/vault

/datum/outfit/job/ms13/town/prospector/pre_equip(mob/living/carbon/human/H)
	..()
