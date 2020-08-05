/datum/reagent/medicine/stimpak_fluid
	name = "Stimpak Fluid"
	description = "A shot of stimpak makes the pain go away."
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

/datum/reagent/medicine/super_stimpack_fluid
	name = "Super Stimpak Fluid"
	description = "A more potent stimpak fluid for severe trauma. Causes weakness and muscle spasms, making it unsuitable for combat."
	reagent_state = LIQUID
	color = "#FF0000"
	metabolization_rate = 2.5 * REAGENTS_METABOLISM
	overdose_threshold = 30

/datum/reagent/medicine/healing_powder
	name = "Healing Powder"
	description = "A makeshift medicine made from various foraged herbs and flowers."
	reagent_state = SOLID
	color = "#70483C"
	metabolization_rate = 2.5 * REAGENTS_METABOLISM
	overdose_threshold = 30

/datum/reagent/medicine/fixer
	name = "Fixer"
	description = "Helps ease addictions and remove withdrawal symptoms, but causes headaches, shaking and confusion."
	reagent_state = SOLID
	color = "#70483C"
	metabolization_rate = 2.5 * REAGENTS_METABOLISM
	overdose_threshold = 30

/datum/reagent/medicine/rad_x
	name = "Rad-X"
	description = "Protects against radiation, but causes minor dehydration."
	reagent_state = SOLID
	color = "#70483C"
	metabolization_rate = 2.5 * REAGENTS_METABOLISM
	overdose_threshold = 30

/datum/reagent/medicine/radaway
	name = "RadAway"
	description = "Purges radiation, but causes vomiting and headaches."
	reagent_state = LIQUID
	color = "#70483C"
	metabolization_rate = 2.5 * REAGENTS_METABOLISM
	overdose_threshold = 30

/datum/reagent/medicine/antivenom
	name = "Antivenom"
	description = "Clears animal venom, but causes minor dehydration."
	reagent_state = LIQUID
	color = "#70483C"
	metabolization_rate = 2.5 * REAGENTS_METABOLISM
	overdose_threshold = 30

/datum/reagent/medicine/x_111
	name = "X-111 RadAway"
	description = "An experimental radiation purgative. Purges radiations with fewer side effects than RadAway."
	reagent_state = SOLID
	color = "#70483C"
	metabolization_rate = 2.5 * REAGENTS_METABOLISM
	overdose_threshold = 30

/datum/reagent/medicine/catseye
	name = "Catseye"
	description = "A prewar drug allowing for low light vision."
	reagent_state = SOLID
	color = "#70483C"
	metabolization_rate = 2.5 * REAGENTS_METABOLISM
	overdose_threshold = 30

/datum/reagent/medicine/bitter_drink
	name = "Bitter Drink"
	description = "A cocktail of herbal remedies and drugs, carried commonly by tribals expecting trouble."
	reagent_state = LIQUID
	color = "#70483C"
	metabolization_rate = 2.5 * REAGENTS_METABOLISM
	overdose_threshold = 30
