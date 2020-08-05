/datum/chemical_reaction/stimpak
	results = list(/datum/reagent/medicine/stimpak_fluid = 5)
	required_reagents = list(/datum/reagent/blood = 1, /datum/reagent/medicine/antiseptic = 2, /datum/reagent/medicine/healing_powder = 2)
	mix_message = "The healing powder dissolves into the mixture."

/datum/chemical_reaction/radshield
	results = list(/datum/reagent/medicine/radshield = 5)
	required_reagents = list(/datum/reagent/antiseptic = 2, /datum/reagent/glowing_fungus = 2, /datum/reagent/stimpak_fluid = 1)

/datum/chemical_reaction/radaway
	results = list(/datum/reagent/medicine/radaway = 5)
	required_reagents = list(/datum/reagent/blood = 2, /datum/reagent/antiseptic = 2, /datum/reagent/iodine = 1)

//SUPER STIMPAK OPTIONS- ANY HIGH END NUKA-COLA WILL WORK
/datum/chemical_reaction/super_stimpak_quantum
	results = list(/datum/reagent/medicine/super_stimpak_fluid = 5)
	required_reagents = list(/datum/reagent/medicine/stimpak_fluid = 2, /datum/reagent/medicine/morphine = 2, /datum/reagent/consumable/nuka_quantum = 1)

/datum/chemical_reaction/super_stimpak_quartz
	results = list(/datum/reagent/medicine/super_stimpak_fluid = 5)
	required_reagents = list(/datum/reagent/medicine/stimpak_fluid = 2, /datum/reagent/medicine/morphine = 2, /datum/reagent/consumable/nuka_quartz = 1)

/datum/chemical_reaction/super_stimpak_victory
	results = list(/datum/reagent/medicine/super_stimpak_fluid = 5)
	required_reagents = list(/datum/reagent/medicine/stimpak_fluid = 2, /datum/reagent/medicine/morphine = 2, /datum/reagent/consumable/nuka_victory = 1)

//ANTIVENOMS- IF ADDING AN ANIMAL VENOM, ADD A RECIPE USING IT HERE
/datum/chemical_reaction/antivenom_cazador
	results = list(/datum/reagent/medicine/antivenom = 5)
	required_reagents = list(/datum/reagent/medicine/antiseptic = 2, /datum/reagent/toxin/cazador_venom = 3)

/datum/chemical_reaction/antivenom_radscorpion
	results = list(/datum/reagent/medicine/antivenom = 5)
	required_reagents = list(/datum/reagent/medicine/antiseptic = 2, /datum/reagent/toxin/radscorpion_venom = 3)

/datum/chemical_reaction/antivenom_nightstalker
	results = list(/datum/reagent/medicine/antivenom = 5)
	required_reagents = list(/datum/reagent/medicine/antiseptic = 2, /datum/reagent/toxin/nightstalker_venom = 3)

/datum/chemical_reaction/antivenom_ant
	results = list(/datum/reagent/medicine/antivenom = 5)
	required_reagents = list(/datum/reagent/medicine/antiseptic = 2, /datum/reagent/toxin/ant_venom = 3)

/datum/chemical_reaction/bitter_drink
	results = list(/datum/reagent/medicine/bitter_drink = 2)
	required_reagents = list(/datum/reagent/consumable/broc_flower = 1, /datum/reagent/consumable/xander_root = 1)

//SPECIAL MEDICINE CRAFTING RECIPES
/datum/chemical_reaction/antiseptic
	results = list(/datum/reagent/medicine/antiseptic = 5)
	required_reagents = list(/datum/reagent/consumable/ethanol = 2, /datum/reagent/iodine = 1, /datum/reagent/hydrogen_peroxide = 2)
