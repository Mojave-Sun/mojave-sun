datum/job/f13/wasteland/canaanite
	title = "New Canaanite"
	total_positions = 2
	spawn_positions = 2
	supervisors = "God and John Moses Browning"
	description = "Spread the word of God to these heathenous lands. We can't expect God to do all the work, after all."
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/f13/wasteland/canaanite

	display_order = JOB_DISPLAY_ORDER_F13_CANAANITE

/datum/outfit/job/f13/wasteland/canaanite
	name = "New Canaanite"
	jobtype = /datum/job/f13/wasteland/canaanite

/datum/outfit/job/f13/wasteland/canaanite/pre_equip(mob/living/carbon/human/H)
	..()
