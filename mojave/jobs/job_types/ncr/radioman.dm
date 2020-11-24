/datum/job/ms13/ncr/radioman
	title = "NCR Radioman"
	total_positions = 2
	spawn_positions = 2
	supervisors = "Sergeant, and Lieutenant"
	description = "Relay messages, obey orders and relay changes in situations to keep command up to date."
	forbid = "The NCR forbids: Recreational drugs(barring med-x), drinking or gambling on duty, disobeying lawful orders. CO determines who is off-duty. Radiomen found to be abusing their radio will be first delimbed, then shot."
	enforce = ""

	outfit = /datum/outfit/job/ms13/ncr/radioman

	display_order = JOB_DISPLAY_ORDER_MS13_RADIOMAN

/datum/outfit/job/ms13/ncr/radioman
	name = "_NCR Radioman"
	jobtype = /datum/job/ms13/ncr/radioman

	head = /obj/item/clothing/head/helmet/ms13/ncr/goggles
	glasses = /obj/item/clothing/glasses/sunglasses/big
	uniform = /obj/item/clothing/under/ms13/ncr/fatigues/winter
	shoes = /obj/item/clothing/shoes/ms13/military/ncr/winter
	suit = /obj/item/clothing/suit/armor/ms13/ncr
	suit_store = /obj/item/gun/ballistic/automatic/ms13/marksman/service
	r_pocket = /obj/item/ammo_box/magazine/ms13/r20
	l_pocket = /obj/item/reagent_containers/hypospray/medipen/stimpak
	r_hand = /obj/item/ms13/radiopack

/datum/outfit/job/ms13/ncr/radioman/pre_equip(mob/living/carbon/human/H)
	..()
