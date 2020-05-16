datum/job/f13/wasteland/hubologist
	title = "Hubologist"
	total_positions = 2
	spawn_positions = 2
	supervisors = "The Hub and the Star Father"
	description = "Recruit new members, and preforms alignments to rid people of those pesky neurodynes (for a fee of course)."
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/f13/wasteland/hubologist

	display_order = JOB_DISPLAY_ORDER_F13_HUBOLOGIST

/datum/outfit/job/f13/wasteland/hubologist
	name = "Hubologist"
	jobtype = /datum/job/f13/wasteland/hubologist

/datum/outfit/job/f13/wasteland/hubologist/pre_equip(mob/living/carbon/human/H)
	..()
