/datum/job/ms13/wasteland/wastelander
	title = "Wastelander"
	total_positions = 200
	spawn_positions = 200
	supervisors = "God, if He remembers you exist"
	description = "Survive. Work with your fellow man to accomplish this if you can, and stop them if they try and jeporadize your survival."
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/wasteland/wastelander

	display_order = JOB_DISPLAY_ORDER_MS13_WASTELANDER

/datum/outfit/job/ms13/wasteland/wastelander
	name = "_Wastelander"
	jobtype = /datum/job/ms13/wasteland/wastelander

/datum/outfit/job/ms13/wasteland/wastelander/pre_equip(mob/living/carbon/human/H)
	..()
	back = pick(
		/obj/item/storage/backpack/satchel/leather,\
		/obj/item/storage/backpack)

	uniform = pick(
		/obj/item/clothing/under/ms13/wasteland/caravanpants,\
		/obj/item/clothing/under/ms13/wasteland/pants,\
		/obj/item/clothing/under/ms13/wasteland/ghoulpants,\
		/obj/item/clothing/under/ms13/wasteland/warboypants,\
		/obj/item/clothing/under/ms13/wasteland/rag,\
		/obj/item/clothing/under/ms13/wasteland/worn,\
		/obj/item/clothing/under/ms13/wasteland/doctor,\
		/obj/item/clothing/under/ms13/wasteland/cowboy,\
		/obj/item/clothing/under/ms13/wasteland/cowboy/grey,\
		/obj/item/clothing/under/ms13/wasteland/cowboy/tan,\
		/obj/item/clothing/under/ms13/wasteland/manager,\
		/obj/item/clothing/under/ms13/wasteland/followers,\
		/obj/item/clothing/under/ms13/wasteland/guard,\
		/obj/item/clothing/under/ms13/wasteland/mammoth,\
		/obj/item/clothing/under/ms13/wasteland/wanderer,\
		/obj/item/clothing/under/ms13/wasteland/rancher,\
		/obj/item/clothing/under/ms13/wasteland/vestslacks,\
		/obj/item/clothing/under/ms13/wasteland/merchant,\
		/obj/item/clothing/under/ms13/wasteland/ranger,\
		/obj/item/clothing/under/ms13/wasteland/merca,\
		/obj/item/clothing/under/ms13/wasteland/caravaneer,\
		/obj/item/clothing/under/ms13/wasteland/machinist,\
		/obj/item/clothing/under/ms13/wasteland/lumberjack,\
		/obj/item/clothing/under/ms13/wasteland/mercc,\
		/obj/item/clothing/under/ms13/wasteland/roving,\
		/obj/item/clothing/under/ms13/wasteland/mechanicprewar/mechanicgrey,\
		/obj/item/clothing/under/ms13/wasteland/mechanicprewar/mechanicgreen,\
		/obj/item/clothing/under/ms13/wasteland/prewar/relaxedwear,\
		/obj/item/clothing/under/ms13/wasteland/prewar/spring)

	suit = pick(
			/obj/item/clothing/suit/ms13/ljacket,\
			/obj/item/clothing/suit/ms13/ljacket/denim,\
			/obj/item/clothing/suit/ms13/ljacket/moleskin,\
			/obj/item/clothing/suit/ms13/ljacket/duster)

	r_hand = pick(
		/obj/item/claymore/ms13/machete/pipe,\
		/obj/item/claymore/ms13/machete/pipe/tireiron)
		
	shoes = pick(
        /obj/item/clothing/shoes/ms13/tan,\
		/obj/item/clothing/shoes/winterboots,\
        /obj/item/clothing/shoes/ms13/explorer,\
		/obj/item/clothing/shoes/ms13/military,\
        /obj/item/clothing/shoes/ms13/military/diesel,\
        /obj/item/clothing/shoes/ms13/military/female/diesel)
