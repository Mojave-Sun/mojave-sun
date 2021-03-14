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
	if(prob(50))
		head = pick(
		/obj/item/clothing/head/helmet/ms13/cowboy/black,\
		/obj/item/clothing/head/helmet/ms13/utilitycap,\
		/obj/item/clothing/head/helmet/ms13/baseball,\
		/obj/item/clothing/head/helmet/ms13/cowboy/padded/ushanka)
	else
		head = null

	if(prob(25))
		mask = pick(
		/obj/item/clothing/mask/ms13/facewrap,\
		/obj/item/clothing/mask/ms13/facewrap/red,\
		/obj/item/clothing/mask/ms13/facewrap/black,\
		/obj/item/clothing/mask/ms13/facewrap/blue,\
        /obj/item/clothing/mask/gas,\
        /obj/item/clothing/mask/bandana/black,\
        /obj/item/clothing/mask/balaclava)
	else
		mask = null

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
	if(prob(50))
		suit = pick(
			/obj/item/clothing/suit/ms13/vest/cowboy,\
			/obj/item/clothing/suit/ms13/vest/denim,\
			/obj/item/clothing/suit/ms13/vest/grey,\
			/obj/item/clothing/suit/toggle/labcoat/ms13/wintercoat,\
			/obj/item/clothing/suit/ms13/vest/puffer,\
			/obj/item/clothing/suit/ms13/ljacket/bomber,\
			/obj/item/clothing/suit/armor/ms13/kit,\
			/obj/item/clothing/suit/ms13/ljacket,\
			/obj/item/clothing/suit/ms13/trench,\
			/obj/item/clothing/suit/ms13/trench/dapper,\
			/obj/item/clothing/suit/ms13/ljacket/veteran,\
			/obj/item/clothing/suit/armor/ms13/leatherarmor)
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
