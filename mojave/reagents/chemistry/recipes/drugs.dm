/datum/chemical_reaction/ms13/hydra
	results = list(/datum/reagent/drug/ms13/hydra = 3)
	required_reagents = list(/datum/reagent/nightstalker_blood = 2, /datum/reagent/toxin/radscorpion_venom = 2, /datum/reagent/consumable/cave_fungus = 1)
	required_temp = 500

/datum/chemical_reaction/ms13/jet
	results = list(/datum/reagent/drug/ms13/jet = 3)
	required_reagents = list(/datum/reagent/ammonia = 2, /datum/reagent/fuel/oil = 1)
	mix_message = "The mixture turns a deep brown and begins to give off brown fumes."
	required_temp = 400

/datum/chemical_reaction/ms13/rocket
	results = list(/datum/reagent/drug/ms13/rocket = 5)
	required_reagents = list(/datum/reagent/drug/ms13/jet = 2, /datum/reagent/consumable/ms13/nuka_cola = 2, /datum/reagent/ms13/detergent = 1)

/datum/chemical_reaction/ms13/mentats
	results = list(/datum/reagent/drug/ms13/mentats = 5)
	required_reagents = list(/datum/reagent/consumable/ms13/brain_fungus = 3, /datum/reagent/ms13/lead = 1, /datum/reagent/ms13/detergent = 1)
	required_temp = 500

/datum/chemical_reaction/ms13/psycho
	results = list(/datum/reagent/drug/psycho = 5)
	required_reagents = list(/datum/reagent/medicine/ms13/med_x = 2, /datum/reagent/medicine/ms13/adrenaline = 2, /datum/reagent/toxin/ms13/acid = 1)
	mix_message = "The mixture turns a dark crimson and bubbles furiously."
	required_temp = 500

/datum/chemical_reaction/ms13/rebound
	results = list(/datum/reagent/drug/rebound = 2)
	required_reagents = list(/datum/reagent/drug/ms13/jet = 2, /datum/reagent/medicine/ms13/adrenaline = 1)

/datum/chemical_reaction/ms13/turbo
	results = list(/datum/reagent/drug/turbo = 5)
	required_reagents = list(/datum/reagent/toxin/cazador_venom = 1, /datum/reagent/drug/jet = 2, /datum/reagent/toxin/turpentine = 2)
	required_temp = 500

/datum/chemical_reaction/ms13/nightstalker_squeezins
	results = list(/datum/reagent/drug/nightstalker_squeezins = 3)
	required_reagents = list(/datum/reagent/nightstalker_blood = 1, /datum/reagent/consumable/cave_fungus = 1, /datum/reagent/consumable/flour = 1)
	mix_message = "The mixture slowly turns a sickly green and thickens into a gel."
	required_temp = 350
