//ANIMAL VENOMS

/datum/reagent/toxin/ms13_venom
	name = "American Venom"
	description = "If you're seeing this, you need to have some GOD DAMNED FAITH (and ahelp it too, probably)."
	color = "#792300" // rgb: 121, 35, 0
	toxpwr = 2.5
	taste_description = "betrayal and lead"

/datum/reagent/toxin/ms13_venom/cazador
	name = "Cazador Venom"
	description = "A powerful venom carried by Cazadores. Causes lethargy and pain in low doses, and paralysis in large doses."
	color = "#792300" // rgb: 121, 35, 0
	toxpwr = 2.5
	taste_description = "stinging pain"

/datum/reagent/toxin/ms13_venom/cazador/on_mob_life(mob/living/carbon/M)
	if(current_cycle >= 5)
		SEND_SIGNAL(M, COMSIG_ADD_MOOD_EVENT, "numb", /datum/mood_event/narcotic_medium, name)
	switch(current_cycle)
		if(11)
			to_chat(M, "<span class='warning'>You're starting to lose all feeling in your limbs...</span>" )
		if(12 to 24)
			M.adjustStaminaLoss(2.5*REM, 0)
			if(prob(30))
				to_chat(M, "<span class='userdanger'>Your breathing spasms as you gasp for breath!</span>")
				M.emote("gasp")
				M.adjustOrganLoss(ORGAN_SLOT_LUNGS, 2*REM)
				M.adjustOxyLoss(2*REM)
		if(23)
			to_chat(M, "<span class='warning'>You collapse to the floor as your limbs fail you!</span>" )
		if(24 to INFINITY) //well my poor friend, if you've reached this point, you're almost certain to die, since you're about to get paralysed.
			M.Stun(35)
			if(prob(80))
				var/cazador_fuck = rand(1,10)
				switch(cazador_fuck)
					if(1)
						to_chat(M, "<span class='warning'>Your heart struggles weakly in your chest...</span>")
						M.adjustOrganLoss(ORGAN_SLOT_HEART, 3*REM)
					if(2)
						to_chat(M, "<span class='warning'>You fight against your failing lungs to draw a breath...</span>")
						M.adjustOrganLoss(ORGAN_SLOT_LUNGS, 3*REM)
						M.adjustOxyLoss(2*REM)
					if(3 to 10)
						M.adjustToxLoss(3*REM)
			. = 1
	..()

/datum/reagent/toxin/ms13_venom/radscorpion
	name = "Radscorpion Venom"
	description = "A powerful venom carried by Radscorpions. Causes heart damage and muscle spasms."
	color = "#792300" // rgb: 121, 35, 0
	toxpwr = 2.5
	taste_description = "stinging pain"

/datum/reagent/toxin/ms13_venom/nightstalker
	name = "Nightstalker Venom"
	description = "A powerful venom carried by Nightstalkers. Causes blurred vision, vomiting and bleeding."
	color = "#792300" // rgb: 121, 35, 0
	toxpwr = 2.5
	taste_description = "bitterness"

/datum/reagent/toxin/ms13_venom/ant
	name = "Giant Ant Venom"
	description = "A weak venom carried by Giant Ants. Causes pain and vomiting."
	color = "#792300" // rgb: 121, 35, 0
	toxpwr = 2.5
	taste_description = "bitterness"

/datum/reagent/toxin/acid/ms13
	name = "Acid"
	description = "A noxious mix of scavenged acids."
	color = "#00FF32"
	toxpwr = 1
	acidpwr = 10
	taste_description = "acid"
	self_consuming = TRUE

/datum/reagent/toxin/turpentine
	name = "Turpentine"
	description = "A strong organic solvent. Do not drink."
	color = "#00FF32"
	toxpwr = 1
	taste_description = "turpentine"

/datum/reagent/toxin/fusion_fuel
	name = "Fusion Cell Fuel"
	description = "A mix of various acids, metals, and radioactive material, used as a power source inside fusion cells."
	color = "#00FF32"
	toxpwr = 1.5
	taste_description = "ions"
