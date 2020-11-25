/obj/item/reagent_containers/hypospray/medipen/stimpak
	name = "stimpak"
	volume = 10
	amount_per_transfer_from_this = 10
	list_reagents = list(/datum/reagent/medicine/stimpak_fluid = 10)
	ignore_flags = 1

/datum/reagent/medicine/stimpak_fluid
	name = "stimpak fluid"
	description = "stimpak"
	reagent_state = LIQUID
	color = "#FF0000"
	metabolization_rate = 2.5 * REAGENTS_METABOLISM
	overdose_threshold = 30

/datum/reagent/medicine/stimpak_fluid/on_mob_life(mob/living/carbon/M)
	M.adjustToxLoss(-4.0*REM, 0)
	M.adjustOxyLoss(-4.0*REM, 0)
	M.adjustBruteLoss(-4.0*REM, 0)
	M.adjustFireLoss(-4.0*REM, 0)
	..()
	. = 1

/datum/reagent/medicine/stimpak_fluid/overdose_process(mob/living/M)
	M.adjustToxLoss(8.0*REM, 0)
	M.adjustOxyLoss(8.0*REM, 0)
	M.adjustBruteLoss(8.0*REM, FALSE, FALSE, BODYPART_ORGANIC)
	M.adjustFireLoss(8.0*REM, FALSE, FALSE, BODYPART_ORGANIC)
	..()
	. = 1
