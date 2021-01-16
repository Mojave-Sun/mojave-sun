/datum/chemical_reaction/radshield
	results = list(/datum/reagent/medicine/radshield = 5)
	required_reagents = list(/datum/reagent/medicine/antiseptic = 2, /datum/reagent/consumable/glowing_fungus = 2, /datum/reagent/medicine/stimpak_fluid = 1)

/datum/chemical_reaction/radaway
	results = list(/datum/reagent/medicine/radaway = 5)
	required_reagents = list(/datum/reagent/blood = 2, /datum/reagent/medicine/antiseptic = 2, /datum/reagent/iodine = 1)

//STIMPAKS- CAN BE CRAFTED UP INTO HIGHER TIERS
/datum/chemical_reaction/stimpak
	results = list(/datum/reagent/medicine/stimpak_fluid = 5)
	required_reagents = list(/datum/reagent/blood = 1, /datum/reagent/medicine/antiseptic = 2, /datum/reagent/medicine/healing_powder = 2)
	mix_message = "The healing powder dissolves into the mixture."

/datum/chemical_reaction/woundpak
	results = list(/datum/reagent/medicine/woundpak_fluid = 5)
	required_reagents = list(/datum/reagent/blood = 1, /datum/reagent/medicine/antiseptic = 2, /datum/reagent/medicine/coagulant = 2)
	mix_message = "The mixture turns a pale, pleasing yellow."

//SUPER STIMPAK OPTIONS- ANY HIGH END NUKA-COLA WILL WORK
/datum/chemical_reaction/super_stimpak_quantum
	results = list(/datum/reagent/medicine/super_stimpak_fluid = 5)
	required_reagents = list(/datum/reagent/medicine/stimpak_fluid = 4, /datum/reagent/medicine/morphine = 4, /datum/reagent/consumable/nuka_quantum = 2)

/datum/chemical_reaction/super_stimpak_quartz
	results = list(/datum/reagent/medicine/super_stimpak_fluid = 5)
	required_reagents = list(/datum/reagent/medicine/stimpak_fluid = 4, /datum/reagent/medicine/morphine = 4, /datum/reagent/consumable/nuka_quartz = 2)

/datum/chemical_reaction/super_stimpak_victory
	results = list(/datum/reagent/medicine/super_stimpak_fluid = 5)
	required_reagents = list(/datum/reagent/medicine/stimpak_fluid = 4, /datum/reagent/medicine/morphine = 4, /datum/reagent/consumable/nuka_victory = 2)

//HYPER STIMPAK- NUKA-FUSION BAYBEE!!
/datum/chemical_reaction/hyper_stimpak
	results = list(/datum/reagent/medicine/hyper_stimpak_fluid = 5)
	required_reagents = list(/datum/reagent/medicine/super_stimpak_fluid = 4, /datum/reagent/medicine/epinephrine = 4, /datum/reagent/consumable/nuka_fusion = 2)

//ANTIVENOMS- IF ADDING AN ANIMAL VENOM, ADD A RECIPE USING IT HERE
/datum/chemical_reaction/antivenom_cazador
	results = list(/datum/reagent/medicine/antivenom = 5)
	required_reagents = list(/datum/reagent/medicine/antiseptic = 2, /datum/reagent/toxin/ms13_venom/cazador = 3)

/datum/chemical_reaction/antivenom_radscorpion
	results = list(/datum/reagent/medicine/antivenom = 5)
	required_reagents = list(/datum/reagent/medicine/antiseptic = 2, /datum/reagent/toxin/ms13_venom/radscorpion = 3)

/datum/chemical_reaction/antivenom_nightstalker
	results = list(/datum/reagent/medicine/antivenom = 5)
	required_reagents = list(/datum/reagent/medicine/antiseptic = 2, /datum/reagent/toxin/ms13_venom/nightstalker = 3)

/datum/chemical_reaction/antivenom_ant
	results = list(/datum/reagent/medicine/antivenom = 5)
	required_reagents = list(/datum/reagent/medicine/antiseptic = 2, /datum/reagent/toxin/ms13_venom/ant = 3)

/datum/chemical_reaction/bitter_drink
	results = list(/datum/reagent/medicine/bitter_drink = 2)
	required_reagents = list(/datum/reagent/consumable/broc_flower = 1, /datum/reagent/consumable/xander_root = 1)

//SPECIAL MEDICINE CRAFTING RECIPES
/datum/chemical_reaction/antiseptic
	results = list(/datum/reagent/medicine/antiseptic = 5)
	required_reagents = list(/datum/reagent/consumable/ethanol = 2, /datum/reagent/iodine = 1, /datum/reagent/hydrogen_peroxide = 2)
