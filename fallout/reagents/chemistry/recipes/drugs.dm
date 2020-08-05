/datum/chemical_reaction/hydra
	results = list(/datum/reagent/drug/hydra = 3)
	required_reagents = list(/datum/reagent/nightstalker_blood = 2, /datum/reagent/toxin/radscorpion_venom = 2, /datum/reagent/consumable/cave_fungus = 1)
	required_temp = 500

/datum/chemical_reaction/jet
	results = list(/datum/reagent/drug/jet = 3)
	required_reagents = list(/datum/reagent/ammonia = 2, /datum/reagent/fuel/oil = 1)
	mix_message = "The mixture turns a deep brown and begins to give off fumes."
	required_temp = 400

/datum/chemical_reaction/rocket
	results = list(/datum/reagent/drug/rocket = 5)
	required_reagents = list(/datum/reagent/drug/jet = 2, /datum/reagent/consumable/nuka_cola_f13 = 2, /datum/reagent/detergent = 1)

/datum/chemical_reaction/mentats
	results = list(/datum/reagent/drug/mentats = 5)
	required_reagents = list(/datum/reagent/consumable/brain_fungus = 3, /datum/reagent/lead = 1, /datum/reagent/detergent = 1)
	required_temp = 500

/datum/chemical_reaction/psycho
	results = list(/datum/reagent/drug/psycho = 5)
	required_reagents = list(/datum/reagent/medicine/morphine = 2, /datum/reagent/drug/jet = 2, /datum/reagent/toxin/acid/f13 = 1)
	mix_message = "The mixture turns bright crimson and bubbles furiously."
	required_temp = 500

/datum/chemical_reaction/rebound
	results = list(/datum/reagent/drug/rebound = 2)
	required_reagents = list(/datum/reagent/drug/jet = 1, /datum/reagent/medicine/epinephrine = 1)

/datum/reagent/drug/turbo
	results = list(/datum/reagent/drug/turbo = 5)
	required_reagents = list(/datum/reagent/toxin/cazador_venom = 1, /datum/reagent/drug/jet = 2, /datum/reagent/toxin/turpentine = 2)
	required_temp = 500
