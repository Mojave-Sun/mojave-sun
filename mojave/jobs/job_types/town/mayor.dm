/datum/job/ms13/town/mayor
	title = "Town Mayor"
	total_positions = 1
	spawn_positions = 1
	supervisors = "Yourself!"
	description = "At long last You are the head man of the Town! Rule it however you may, it is a blank slate for anything you desire."
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/town/mayor

	display_order = JOB_DISPLAY_ORDER_MS13_MAYOR

/datum/outfit/job/ms13/town/mayor
	name = "_Town Mayor"
	jobtype = /datum/job/ms13/town/mayor

	suit =       /obj/item/clothing/suit/ms13/ljacket/mayor
	uniform =    /obj/item/clothing/under/ms13/vaultsuit
	shoes =  	 /obj/item/clothing/shoes/ms13/military/vault
	back =	 	 /obj/item/storage/backpack/

/datum/outfit/job/ms13/town/mayor/pre_equip(mob/living/carbon/human/H)
	..()
