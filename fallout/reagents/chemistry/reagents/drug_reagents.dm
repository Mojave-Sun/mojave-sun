//UNCRAFTABLE (MUST BE SCAVENGED)
/datum/reagent/drug/buffout
	name = "Buffout"
	description = "A highly potent anabolic steroid popular before the war with athletes. Causes mild liver and heart damage."
	color = "#60A584" // rgb: 96, 165, 132
	overdose_threshold = 20

/datum/reagent/drug/calmex //useful for surgery
	name = "Calmex"
	description = "A light anaesthetic. Reduces inhibitions and dulls the senses."
	color = "#BC13FE" // rgb: 96, 165, 132
	overdose_threshold = 30

/datum/reagent/drug/calmex/on_mob_life(mob/living/carbon/M)
	if(current_cycle >= 5)
		SEND_SIGNAL(M, COMSIG_ADD_MOOD_EVENT, "numb", /datum/mood_event/narcotic_medium, name)
	..()

//datum/reagent/drug/calmex/reaction_mob(mob/living/carbon/C, method=INJECT, reac_volume)
//	if(method == INJECT)
//		for(var/s in C.surgeries)
//			var/datum/surgery/S = s
//			S.speed_modifier = max(0.2, S.speed_modifier)
//	..()

/datum/reagent/drug/calmex/overdose_process(mob/living/M)
	switch(current_cycle)
		if(11)
			to_chat(M, "<span class='warning'>You start to feel tired...</span>" )
		if(12 to 24)
			M.drowsyness += 1
		if(24 to INFINITY)
			M.Sleeping(40, 0)
			. = 1
	..()

/datum/reagent/drug/daddy_o
	name = "Daddy-O"
	description = "Increases brain power, but slurs speech."
	color = "#60A584" // rgb: 96, 165, 132
	overdose_threshold = 30

/datum/reagent/drug/day_tripper
	name = "Day Tripper"
	description = "A mild hallucinogen. Helps take the edge off, but weakens muscles."
	color = "#60A584" // rgb: 96, 165, 132
	overdose_threshold = 30

/datum/reagent/drug/smooch
	name = "Smooch"
	description = "A novel smokable from Northern Nevada. Tastes terrible, but causes mellowness and ecstacy. Prolonged use causes extreme brain damage."
	color = "#65FF00"
	overdose_threshold = 20
	addiction_threshold = 10
	taste_description = "putrid death"

/datum/reagent/drug/smooch/on_mob_metabolize(mob/living/L)
	..()
	SEND_SIGNAL(L, COMSIG_ADD_MOOD_EVENT, "smooch_drug", /datum/mood_event/happiness_drug)

/datum/reagent/drug/smooch/on_mob_delete(mob/living/L)
	SEND_SIGNAL(L, COMSIG_CLEAR_MOOD_EVENT, "smooch_drug")
	..()

/datum/reagent/drug/smooch/on_mob_life(mob/living/carbon/M)
	M.set_drugginess(15)
	M.jitteriness = 0
	//M.confused = 0
	M.adjustOrganLoss(ORGAN_SLOT_BRAIN, 0.2)
	if(prob(7))
		M.emote(pick("twitch","drool","moan","giggle"))
	..()
	. = 1

/datum/reagent/drug/smooch/overdose_process(mob/living/M)
	M.adjustOrganLoss(ORGAN_SLOT_BRAIN, 0.5)
	M.adjustToxLoss(0.5, 0)
	M.adjust_disgust(2)
	..()
	. = 1

/datum/reagent/drug/smooch/addiction_act_stage1(mob/living/M)
	M.hallucination += 10
	if((M.mobility_flags & MOBILITY_MOVE) && !ismovable(M.loc))
		for(var/i = 0, i < 8, i++)
			step(M, pick(GLOB.cardinals))
	M.Jitter(5)
	M.adjustOrganLoss(ORGAN_SLOT_BRAIN, 10)
	if(prob(20))
		M.emote(pick("twitch","drool","moan"))
	..()

/datum/reagent/drug/smooch/addiction_act_stage2(mob/living/M)
	M.hallucination += 20
	if((M.mobility_flags & MOBILITY_MOVE) && !ismovable(M.loc))
		for(var/i = 0, i < 8, i++)
			step(M, pick(GLOB.cardinals))
	M.Jitter(10)
	M.Dizzy(10)
	M.adjustOrganLoss(ORGAN_SLOT_BRAIN, 10)
	if(prob(30))
		M.emote(pick("twitch","drool","moan"))
	..()

/datum/reagent/drug/smooch/addiction_act_stage3(mob/living/M)
	M.hallucination += 30
	if((M.mobility_flags & MOBILITY_MOVE) && !ismovable(M.loc))
		for(var/i = 0, i < 12, i++)
			step(M, pick(GLOB.cardinals))
	M.Jitter(15)
	M.Dizzy(15)
	M.adjustOrganLoss(ORGAN_SLOT_BRAIN, 10)
	if(prob(40))
		M.emote(pick("twitch","drool","moan"))
	..()

/datum/reagent/drug/smooch/addiction_act_stage4(mob/living/carbon/human/M)
	M.hallucination += 30
	if((M.mobility_flags & MOBILITY_MOVE) && !ismovable(M.loc))
		for(var/i = 0, i < 16, i++)
			step(M, pick(GLOB.cardinals))
	M.Jitter(50)
	M.Dizzy(50)
	M.adjustToxLoss(5, 0)
	M.adjustOrganLoss(ORGAN_SLOT_BRAIN, 10)
	if(prob(50))
		M.emote(pick("twitch","drool","moan"))
	..()
	. = 1

/datum/reagent/drug/steady
	name = "Steady"
	description = "A military grade relaxant. Reduces weapon sway and increases effective accuracy, but carries a severe risk of addiction."
	color = "#60A584" // rgb: 96, 165, 132
	addiction_threshold = 5
	overdose_threshold = 30

/datum/reagent/drug/x_cell
	name = "X-Cell"
	description = "A general purpose performance enhancer. Gives a general boost to all SPECIAL stats, but with a high risk of addiction."
	color = "#60A584" // rgb: 96, 165, 132
	addiction_threshold = 5
	overdose_threshold = 30

//CRAFTABLE DRUGS
/datum/reagent/drug/hydra
	name = "Hydra"
	description = "A curative agent that anaesthetises and restores crippled limbs. Causes heart damage."
	color = "#60A584" // rgb: 96, 165, 132
	overdose_threshold = 30

/datum/reagent/drug/jet
	name = "Jet"
	description = "A highly addictive meta-amphetamine. Causes lung damage and addiction."
	color = "#60A584" // rgb: 96, 165, 132
	overdose_threshold = 30

/datum/reagent/drug/rocket
	name = "Rocket"
	description = "A variant of jet. Has more potent combat properties, but carries a higher risk of addiction."
	color = "#60A584" // rgb: 96, 165, 132
	overdose_threshold = 30

/datum/reagent/drug/mentats //effectively blends the effects of neurine and mannitol, but carries a risk of addiction, and overdosing can seriously fuck your brain up
	name = "Mentats"
	description = "A powerful nootropic that increases mental faculties and cures brain damage, but increases thirst."
	color = "#60A584" // rgb: 96, 165, 132
	addiction_threshold = 20
	overdose_threshold = 30

/datum/reagent/drug/mentats/on_mob_life(mob/living/carbon/C)
	C.adjustOrganLoss(ORGAN_SLOT_BRAIN, -2*REM)
	if(prob(15))
		C.cure_trauma_type(resilience = TRAUMA_RESILIENCE_BASIC)
	..()

/datum/reagent/drug/mentats/overdose_process(mob/living/M)
	M.Jitter(3)
	M.adjustToxLoss(0.5, 0)
	M.adjustOrganLoss(ORGAN_SLOT_BRAIN, -5*REM)
	if(prob(50))
		to_chat(M, "<span class='warning'>[pick("Your head hurts a lot.", "Your head pounds incessantly.")]</span>")
	if(prob(33))
		to_chat(M, "<span class='userdanger'>[pick("Your head hurts!", "You feel a burning knife inside your brain!", "A wave of pain fills your head!")]</span>")
		M.Stun(35)
	if(prob(1))
		to_chat(M, "<span class='userdanger'>You feel something within your head snap.</span>") //M.gain_trauma_type(BRAIN_TRAUMA_MILD, TRAUMA_RESILIENCE_ABSOLUTE) figure out how to make this work
	..()

/datum/reagent/drug/mentats/addiction_act_stage1(mob/living/M)
	M.Jitter(2)
	if(prob(20))
		to_chat(M, "<span class='warning'>[pick("Your head hurts.", "Your head pounds.")]</span>")
	..()

/datum/reagent/drug/mentats/addiction_act_stage2(mob/living/M)
	M.Jitter(3)
	M.Dizzy(5)
	if(prob(20))
		to_chat(M, "<span class='warning'>[pick("Your head hurts.", "Your head pounds.")]</span>")
	..()

/datum/reagent/drug/mentats/addiction_act_stage3(mob/living/M)
	M.Jitter(5)
	M.Dizzy(10)
	if(prob(20))
		M.adjustStaminaLoss(25)
		to_chat(M, "<span class='warning'>[pick("Your head hurts a lot.", "Your head pounds incessantly.")]</span>")
	..()

/datum/reagent/drug/mentats/addiction_act_stage4(mob/living/M)
	M.Jitter(5)
	M.Dizzy(10)
	if(prob(20))
		M.Stun(35)
		to_chat(M, "<span class='userdanger'>[pick("Your head hurts!", "You feel a burning knife inside your brain!", "A wave of pain fills your head!")]</span>")
	..()

/datum/reagent/drug/psycho //military grade bath salts? SIGN ME AND THE REST OF AMERICA THE FUCK UP!
	name = "Psycho"
	description = "A military grade amphetamine. Causes increased strength and endurance, but induces a powerful psychosis."
	color = "#60A584" // rgb: 96, 165, 132
	addiction_threshold = 10
	overdose_threshold = 20
	var/datum/brain_trauma/special/psychotic_brawling/bath_salts/rage

/datum/reagent/drug/psycho/on_mob_metabolize(mob/living/L)
	..()
	ADD_TRAIT(L, TRAIT_STUNIMMUNE, type)
	ADD_TRAIT(L, TRAIT_SLEEPIMMUNE, type)
	L.apply_status_effect(STATUS_EFFECT_SPASMS)
	if(iscarbon(L))
		var/mob/living/carbon/C = L
		rage = new()
		C.gain_trauma(rage, TRAUMA_RESILIENCE_ABSOLUTE)
	L.overlay_fullscreen("psycho", /obj/screen/fullscreen/color_vision/red)
	if(prob(25))
		L.adjustOrganLoss(ORGAN_SLOT_HEART, 1)

/datum/reagent/drug/psycho/on_mob_end_metabolize(mob/living/L)
	REMOVE_TRAIT(L, TRAIT_STUNIMMUNE, type)
	REMOVE_TRAIT(L, TRAIT_SLEEPIMMUNE, type)
	L.remove_status_effect(STATUS_EFFECT_SPASMS)
	if(rage)
		QDEL_NULL(rage)
	L.clear_fullscreen("psycho")
	..()

/datum/reagent/drug/psycho/overdose_start(mob/living/M)
	to_chat(M, "<span class='narsiesmall'>YOU FEEL AN INSATIABLE BLOODLUST!</span>")

/datum/reagent/drug/psycho/overdose_process(mob/living/M)
	M.Jitter(10)
	M.adjustOrganLoss(ORGAN_SLOT_HEART, 0.5)
	if(prob(5))
		M.drop_all_held_items()
	if(prob(15))
		M.emote(pick("scream","twitch"))
	if(prob(15))
		M.adjustToxLoss(3, 0)
	..()

/datum/reagent/drug/psycho/on_mob_life(mob/living/M)
	SEND_SIGNAL(M, COMSIG_ADD_MOOD_EVENT, "gone_psycho", /datum/mood_event/stimulant_heavy, name)
	M.adjustOrganLoss(ORGAN_SLOT_HEART, 1)
	M.hallucination += 5
	..()
	. = 1

/datum/reagent/drug/psycho/addiction_act_stage1(mob/living/M)
	if(prob(20))
		to_chat(M, "<span class='warning'>You feel angry, and you don't know why...</span>")
	..()

/datum/reagent/drug/psycho/addiction_act_stage2(mob/living/M)
	M.Jitter(5)
	if(prob(20))
		to_chat(M, "<span class='warning'>You really want to punch something...</span>")
	..()

/datum/reagent/drug/psycho/addiction_act_stage3(mob/living/M)
	M.adjustOrganLoss(ORGAN_SLOT_HEART, 0.5)
	M.Jitter(10)
	M.Dizzy(10)
	if(prob(20))
		to_chat(M, "<span class='warning'>You're filled with rage...</span>")
	..()

/datum/reagent/drug/psycho/addiction_act_stage4(mob/living/M)
	M.adjustOrganLoss(ORGAN_SLOT_HEART, 1)
	M.adjustOrganLoss(ORGAN_SLOT_BRAIN, 0.5)
	M.Jitter(5)
	M.Dizzy(10)
	if(prob(20))
		to_chat(M, "<span class='narsiesmall'>YOU LUST FOR BLOOD!</span>")
	..()

/datum/reagent/drug/rebound
	name = "Rebound"
	description = "A powerful mix of adrenaline and liquid Jet. Makes the user faster, but causes considerable heart damage."
	color = "#60A584" // rgb: 96, 165, 132
	overdose_threshold = 30

/datum/reagent/drug/turbo
	name = "Turbo"
	description = "Jet mixed with cazador poison and hairspray. Results in extremely strong Jet effects."
	color = "#60A584" // rgb: 96, 165, 132
	overdose_threshold = 30

/datum/reagent/drug/voodoo
	name = "Voodoo"
	description = "A potent mix of animal venoms and alcohol. Results in numbness that reduces damage."
	color = "#60A584" // rgb: 96, 165, 132
	overdose_threshold = 30

/datum/reagent/drug/mutie
	name = "Mutie"
	description = "A potent mutagenic serum that causes random mutations."
	color = "#60A584" // rgb: 96, 165, 132
	overdose_threshold = 30

/datum/reagent/drug/weapon_binding_ritual
	name = "Weapon Binding Ritual"
	description = "TAKE DRUGS. KILL A BEAR."
	color = "#60A584" // rgb: 96, 165, 132
	overdose_threshold = 30

/datum/reagent/drug/overdrive
	name = "Overdrive"
	description = "A modified version of Psycho, designed to produce a stronger effect."
	color = "#60A584" // rgb: 96, 165, 132
	overdose_threshold = 30

//ANIMAL AND INSECT DRUGS

/datum/reagent/drug/ant_nectar
	name = "Ant Nectar"
	description = "A drug naturally produced by giant ants. Increases strength, but dramatically dulls mental faculties."
	color = "#60A584" // rgb: 96, 165, 132
	overdose_threshold = 30

/datum/reagent/drug/fire_ant_nectar
	name = "Fire Ant Nectar"
	description = "A drug naturally produced by giant fire ants. Increases agility, but dramatically dulls mental faculties."
	color = "#60A584" // rgb: 96, 165, 132
	overdose_threshold = 30

/datum/reagent/drug/ant_queen_pheromones
	name = "Ant Queen Pheromones"
	description = "Pheromones naturally produced by giant ant queens. Increases charisma, but dramatically dulls mental faculties."
	color = "#60A584" // rgb: 96, 165, 132
	overdose_threshold = 30

/datum/reagent/drug/nightstalker_squeezins
	name = "Nightstalker Squeezin's"
	description = "A biological drug produced by processing Nightstalker blood."
	color = "#60A584" // rgb: 96, 165, 132
	overdose_threshold = 30
