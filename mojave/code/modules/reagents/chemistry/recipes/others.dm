//Sulfur to sulf acid and back
/datum/chemical_reaction/ms13/sulf_to_sulf_acid
	results = list(/datum/reagent/toxin/acid = 1)
	required_reagents = list(/datum/reagent/sulfur = 1)
	mix_message = "The yellow chunk of solid begins to dissolve into a liquid."
	required_temp = 400
	//reaction_tags = REACTION_TAG_EASY | REACTION_TAG_DAMAGING | REACTION_TAG_BURN | REACTION_TAG_TOXIN

//Another recipe for nitric acid; heat up the sulfur and saltpetre mixture to easily get this
/datum/chemical_reaction/ms13/nitracid
	results = list(/datum/reagent/toxin/acid/nitracid = 2)
	required_reagents = list(/datum/reagent/toxin/acid = 1, /datum/reagent/saltpetre = 1)
	required_temp = 480
	//reaction_tags = REACTION_TAG_EASY | REACTION_TAG_DAMAGING | REACTION_TAG_BURN | REACTION_TAG_TOXIN
