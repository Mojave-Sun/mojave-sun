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

	head = /obj/item/clothing/head/collectable/petehat

/datum/outfit/job/ms13/wasteland/wastelander/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(
		/obj/item/clothing/under/ms13/wasteland/petrochico,\
		/obj/item/clothing/under/ms13/wasteland/roving,\
		/obj/item/clothing/under/ms13/wasteland/mechanic,\
		/obj/item/clothing/under/ms13/wasteland/doctor,\
		/obj/item/clothing/under/ms13/wasteland/combat,\
		/obj/item/clothing/under/ms13/wasteland/merca)
	
	r_hand = pick(
		/obj/item/claymore/ms13/machete/pipe,\
		/obj/item/claymore/ms13/machete/pipe/tireiron)

