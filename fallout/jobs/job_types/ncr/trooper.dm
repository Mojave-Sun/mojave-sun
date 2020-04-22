datum/job/f13/ncr/trooper
	title = "NCR Trooper"
	total_positions = 10
	spawn_positions = 10
	supervisors = "Lieutenant, Sergeant, and Corporal, in that order."
	description = "Hold the line, and do as ordered."
	forbid = "The NCR forbids: Recreational drugs(barring med-x), drinking or gambling on duty, disobeying lawful orders. CO determines who is off-duty."
	enforce = "The NCR expects: Do not desert your post. Deserters may be executed for such."

	outfit = /datum/outfit/job/f13/ncr/trooper

	display_order = JOB_DISPLAY_ORDER_F13_TROOPER

/datum/outfit/job/f13/ncr/trooper
	name = "Trooper"
	jobtype = /datum/job/f13/ncr/trooper

/datum/outfit/job/f13/ncr/trooper/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = /obj/item/clothing/under/fallout/ncr/fatigues/winter
	suit = /obj/item/clothing/suit/armor/fallout/ncr
	suit_store = /obj/item/gun/ballistic/automatic/fallout/marksman/service
	
	
