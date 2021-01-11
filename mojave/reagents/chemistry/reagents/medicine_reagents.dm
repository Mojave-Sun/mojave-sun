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

/datum/reagent/medicine/super_stimpak_fluid
	name = "Super Stimpak Fluid"
	description = "A more potent stimpak fluid for severe trauma. Causes weakness and muscle spasms, making it unsuitable for combat."
	reagent_state = LIQUID
	color = "#FF0000"
	metabolization_rate = 2.5 * REAGENTS_METABOLISM
	overdose_threshold = 30

/datum/reagent/medicine/hyper_stimpak_fluid
	name = "Hyper-Stimpak Fluid"
	description = "A wildcat stimpak fluid made for the wasteland. Fucks you up while it's in your system, but has unmatched healing power."
	reagent_state = LIQUID
	color = "#FFCF00"
	metabolization_rate = 2.5 * REAGENTS_METABOLISM
	overdose_threshold = 30

/datum/reagent/medicine/hyper_stimpak_fluid/on_mob_metabolize(mob/living/L)
	L.overlay_fullscreen("hyper_stim", /obj/screen/fullscreen/hyper_stim)
	to_chat(L, "<span class='swarmer'>You feel absolutely fucked up!</span>")

/datum/reagent/medicine/hyper_stimpak_fluid/on_mob_end_metabolize(mob/living/L)
	L.clear_fullscreen("hyper_stim")

/datum/reagent/medicine/hyper_stimpak_fluid/on_mob_life(mob/living/carbon/M)
	M.Jitter(5)
	M.adjustToxLoss(-4.0*REM, 0)
	M.adjustOxyLoss(-4.0*REM, 0)
	M.adjustBruteLoss(-4.0*REM, 0)
	M.adjustFireLoss(-4.0*REM, 0)
	M.adjustOrganLoss(ORGAN_SLOT_LUNGS, -2.0*REM)
	M.adjustOrganLoss(ORGAN_SLOT_HEART, -2.0*REM)
	M.adjustOrganLoss(ORGAN_SLOT_BRAIN, -2.0*REM)
	M.adjustOrganLoss(ORGAN_SLOT_LIVER, -2.0*REM)
	M.adjustOrganLoss(ORGAN_SLOT_EYES, -2.0*REM)
	M.adjustOrganLoss(ORGAN_SLOT_EARS, -2.0*REM)
	M.adjustOrganLoss(ORGAN_SLOT_STOMACH, -2.0*REM)
	if(prob(30))
		var/reaction = rand(1,3)
		switch(reaction)
			if(1)
				M.emote("laugh")
				SEND_SIGNAL(M, COMSIG_ADD_MOOD_EVENT, "hyper_stimpak", /datum/mood_event/happiness_drug_good_od)
			if(2)
				M.emote("sway")
				M.Dizzy(25)
			if(3)
				M.emote("frown")
				SEND_SIGNAL(M, COMSIG_ADD_MOOD_EVENT, "hyper_stimpak", /datum/mood_event/happiness_drug_bad_od)
	if(prob(3) && iscarbon(M))
		M.visible_message("<span class='danger'>[M] starts having a seizure!</span>", "<span class='userdanger'>You have a seizure!</span>")
		M.Unconscious(100)
		M.Jitter(350)
	..()
	. = 1

/datum/reagent/medicine/woundpak_fluid
	name = "Woundpak Fluid"
	description = "A specialised stimpak. Has less direct healing, but is more effective in treating wounds."
	reagent_state = LIQUID
	color = "#FDFD96"
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

/datum/reagent/medicine/radshield
	name = "Radshield"
	description = "A post-war recreation of Rad-X, made from scavenged materials. Causes light headaches and dehydration."
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

/datum/reagent/medicine/antiseptic
	name = "Antiseptic"
	description = "A general purpose antiseptic, ideal for disinfecting wounds and equipment."
	reagent_state = LIQUID
	color = "#70483C"
	metabolization_rate = 2.5 * REAGENTS_METABOLISM
	overdose_threshold = 30
