/datum/job/ms13/wasteland/wastelander
	title = "Wastelander"
	total_positions = 200
	spawn_positions = 2
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
		/obj/item/clothing/head/helmet/ms13/cowboy/padded/ushanka)
	else
		head = null

	if(prob(25))
		mask = pick(
		/obj/item/clothing/mask/ms13/facewrap,\
        /obj/item/clothing/mask/gas,\
        /obj/item/clothing/mask/bandana/black,\
        /obj/item/clothing/mask/balaclava)
	else
		mask = null

	uniform = pick(
		/obj/item/clothing/under/ms13/wasteland/petrochico,\
		/obj/item/clothing/under/ms13/wasteland/roving,\
		/obj/item/clothing/under/ms13/wasteland/mechanic,\
		/obj/item/clothing/under/ms13/wasteland/doctor,\
		/obj/item/clothing/under/ms13/wasteland/combat,\
		/obj/item/clothing/under/ms13/wasteland/merca,\
		/obj/item/clothing/under/ms13/wasteland/brownvest,\
        /obj/item/clothing/under/ms13/wasteland/stripeblue,\
        /obj/item/clothing/under/ms13/wasteland/stripered,\
        /obj/item/clothing/under/ms13/wasteland/checkeredgreen,\
        /obj/item/clothing/under/ms13/wasteland/checkeredblue,\
        /obj/item/clothing/under/ms13/wasteland/plaid_r,\
        /obj/item/clothing/under/ms13/wasteland/plaid_g,\
        /obj/item/clothing/under/ms13/wasteland/plaid_b)
	suit = pick(
        /obj/item/clothing/suit/ms13/vest/cowboy,\
        /obj/item/clothing/suit/toggle/labcoat/ms13/wintercoat,\
		/obj/item/clothing/suit/ms13/vest/puffer,\
        /obj/item/clothing/suit/ms13/ljacket/bomber,\
        /obj/item/clothing/suit/armor/ms13/kit/light,\
        /obj/item/clothing/suit/ms13/ljacket/biker,\
		/obj/item/clothing/suit/ms13/trench,\
		/obj/item/clothing/suit/ms13/trench/dapper,\
		/obj/item/clothing/suit/ms13/ljacket/veteran,\
        /obj/item/clothing/suit/armor/ms13/leatherarmor/light)
	r_hand = pick(
		/obj/item/claymore/ms13/machete/pipe,\
		/obj/item/claymore/ms13/machete/pipe/tireiron)
	shoes = pick(
        /obj/item/clothing/shoes/ms13/tan,\
        /obj/item/clothing/shoes/ms13/explorer,\
		/obj/item/clothing/shoes/ms13/military,\
        /obj/item/clothing/shoes/ms13/military/diesel,\
        /obj/item/clothing/shoes/ms13/military/female/diesel)
