/datum/job/ms13/town/doctor
	title = "Town Doctor"
	total_positions = 2
	spawn_positions = 2
	supervisors = "Mayor and the Sheriff."
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/town/doctor

	display_order = JOB_DISPLAY_ORDER_MS13_DOCTOR

/datum/outfit/job/ms13/town/doctor
	name = "_Town Doctor"
	jobtype = /datum/job/ms13/town/doctor

	id = 		 null
	head = 	     null
	ears = 		 null
	glasses =	 null
	suit =       /obj/item/clothing/suit/ms13/vaultlab
	suit_store = null
	uniform =    /obj/item/clothing/under/ms13/vaultsuit
	gloves = 	 /obj/item/clothing/gloves/color/latex/nitrile
	belt = 		 null
	shoes =  	 /obj/item/clothing/shoes/ms13/military/vault

/datum/outfit/job/ms13/town/doctor/pre_equip(mob/living/carbon/human/H)
	..()
