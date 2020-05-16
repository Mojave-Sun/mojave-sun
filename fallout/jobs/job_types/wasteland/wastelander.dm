datum/job/f13/wasteland/wastelander
	title = "Wastelander"
	total_positions = 200
	spawn_positions = 2
	supervisors = "God, if He remembers you exist"
	description = "Survive. Work with your fellow man to accomplish this if you can, and stop them if they try and jeporadize your survival."
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/f13/wasteland/wastelander

	display_order = JOB_DISPLAY_ORDER_F13_WASTELANDER

/datum/outfit/job/f13/wasteland/wastelander
	name = "Wastelander"
	jobtype = /datum/job/f13/wasteland/wastelander

/datum/outfit/job/f13/wasteland/wastelander/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(
		/obj/item/clothing/under/fallout/wasteland/petrochico,\
		/obj/item/clothing/under/fallout/wasteland/roving,\
		/obj/item/clothing/under/fallout/wasteland/mechanic,\
		/obj/item/clothing/under/fallout/wasteland/doctor,\
		/obj/item/clothing/under/fallout/wasteland/combat,\
		/obj/item/clothing/under/fallout/wasteland/merca)
	
	r_hand = pick(
		/obj/item/claymore/machete/pipe,\
		/obj/item/claymore/machete/pipe/tireiron,\
		/obj/item/claymore/machete/golf)

