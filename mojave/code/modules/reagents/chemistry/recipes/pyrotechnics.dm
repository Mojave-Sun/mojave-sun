//Another way to make gunpowder
/datum/chemical_reaction/ms13/gunpowder
	results = list(/datum/reagent/gunpowder = 3)
	required_reagents = list(/datum/reagent/ash = 1, /datum/reagent/sulfur = 1, /datum/reagent/saltpetre = 1)
	//reaction_tags = REACTION_TAG_EASY | REACTION_TAG_EXPLOSIVE

/datum/chemical_reaction/ms13/nitrocellulose
	results = list(/datum/reagent/ms13/nitrocellulose = 1)
	required_reagents = list(/datum/reagent/cellulose = 1, /datum/reagent/toxin/acid = 1, /datum/reagent/toxin/acid/nitracid = 1)
	//reaction_tags = REACTION_TAG_MODERATE | REACTION_TAG_EXPLOSIVE
