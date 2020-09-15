#define RIDING_LAYER 4.6

/////////////////////////////////////////////////////////////
///////// MOJAVE SUN ANIMALS AND RANCHING CHANGES ///////////
/////////////////////// BASE CODE ///////////////////////////
/////////////////////////////////////////////////////////////

//Cattle-Prod Functionality, hopefully allows for stunning simplemobs to feed and tame them

/obj/item/melee/baton/attack(mob/M, mob/living/carbon/human/user)
	. = ..()
	if(turned_on)
		. = ..()
		if(isanimal(M))
			var/mob/living/simple_animal/critter = M
			critter.Stun(5 SECONDS)

//Non-Aggresive Mobs, Defenceless Mobs, things like, babies and such

/mob/living/simple_animal/fallout
	name = "fallout mob"
	desc = "If you see this, kill it, purge it and call the developer hotline, we will beat those mappers/admins, lickety split!"
	icon = 'fallout/icons/mob/falloutanimals.dmi'
	icon_state = ""
	gender = NEUTER
	mob_biotypes = MOB_ORGANIC|MOB_BEAST
	speak = list()
	speak_emote = list()
	emote_hear = list()
	emote_see = list()
	speak_chance = 15
	turns_per_move = 5
	see_in_dark = 6
	butcher_results = list()
	guaranteed_butcher_results = list()
	loot = list()
	response_help_continuous = "pats"
	response_help_simple = "pat"
	response_disarm_continuous = "pushes aside"
	response_disarm_simple = "push aside"
	response_harm_continuous = "kicks"
	response_harm_simple = "kick"
	attack_verb_continuous = "kicks"
	attack_verb_simple = "kick"
	attack_sound = 'sound/weapons/punch1.ogg'
	speak_emote = list()
	health = 100
	maxHealth = 100
	speed = 2
	blood_volume = BLOOD_VOLUME_NORMAL
	food_type = list()
	tame_chance = 25
	bonus_tame_chance = 15
	footstep_type = FOOTSTEP_MOB_HEAVY
	status_flags = CANSTUN
	environment_smash = ENVIRONMENT_SMASH_NONE
	mob_size = MOB_SIZE_LARGE
	stop_automated_movement_when_pulled = 1
	wound_bonus = -5
	bare_wound_bonus = 5
	splatter = FALSE
	//does the homie have chemss/chems to extract? Poison, Milk, Other :flushed:
	var/milkable = FALSE
	//Chems that the creature makes
	var/extract = null
	var/obj/item/fallout/animalchem/chems = null
	//does the homie lay eggs?
	var/eggable = FALSE
	var/egg_type = null
	var/eggsleft = 0
	//can the homie be ridden?
	var/rideable = FALSE
	//does the homie have a saddle to ride?
	var/saddled = FALSE
	//feed to clone system working?
	var/breedable = FALSE
	//small sprite lad? Jostle em
	var/smallasslad = FALSE
	//32x64 sprite lad?
	var/largeasslad = FALSE
	//is it a bambino doe?
	var/is_young = FALSE
	//do they got a bambino tho????
	var/has_young = FALSE
	//bambino
	var/young_type = null
	//adult
	var/adult_type = null
	//timer on growing up
	var/growth
	//hunger for tamed mobs, dictates starvation and things like production of eggs/milk and such
	var/hunger = 200
	var/maxhunger = 200
	//changes the players sprite adjustment when riding
	var/offsetx = 0
	var/offsety = 0

/mob/living/simple_animal/fallout/Initialize()
	icon_dead = "[icon_state]_dead"
	var/matrix/bambinoscale = matrix()
	if(is_young == TRUE)
		bambinoscale.Scale(0.7, 0.7)
		transform = bambinoscale
	if(smallasslad == TRUE)
		//makes them small ass lads look all funky n shi
		pixel_x = rand(-6, 6)
		pixel_y = rand(0, 10)
	if(largeasslad == TRUE)
		pixel_x = -16
	if(tame)
		if(milkable == TRUE)
			chems = new()
		if(eggable == TRUE)
			eggsleft = 0
	else
		return . = ..()

/mob/living/simple_animal/fallout/Destroy()
	if(milkable == TRUE)
		qdel(chems)
		chems = null
		return ..()

//hunger and baby grow/birth/speed shitcode
/mob/living/simple_animal/fallout/Life()
	. =..()
	if(saddled == TRUE)
		saddleup()
		egg_type = null
	if(largeasslad == TRUE)
		pixel_x = -16
	if(tame)
		visible_message("<span class='alertalien'>[src] is now tamed.</span>")
		var/hungerrate = rand(0.2,0.3)
		hunger -= hungerrate
		if(hunger == 0)
			hungerrate = 0
		if(stat == CONSCIOUS && breedable == TRUE)
			if((prob(3) && has_young))
				has_young++
			if(has_young > 10)
				has_young = 0
				visible_message("<span class='alertalien'>[src] has produced a baby.</span>")
				new young_type(src.loc)
			if(is_young)
				growth++
				if(growth > 50)
					is_young = 0
					new adult_type(src.loc)
					qdel(src)
					visible_message("<span class='alertalien'>[src] has fully grown.</span>")
					if(milkable == TRUE)
						chems = new()
					return
		if(milkable == TRUE)
			if(hunger > 0)
				chems.generateChem()
			return
		if(eggable == TRUE)
			if(!stat)
				if(hunger >= 150 && eggsleft < 8)
					eggsleft += rand(1, 4)
					hunger -= 100
				if(hunger == 0)
					eggsleft = 0 //starvin now foo
				else
					return
			if((!stat && prob(3) && eggsleft > 0) && egg_type)
				visible_message("<span class='alertalien'>[src] [pick(EGG_LAYING_MESSAGES)]</span>")
				eggsleft--
				var/obj/item/E = new egg_type(get_turf(src))
				E.pixel_x = rand(-6,6)
				E.pixel_y = rand(-6,6)
				return

/mob/living/simple_animal/fallout/proc/saddleup()
	var/speedmodifier = speed/(hunger/maxhunger)
	if(saddled == TRUE)
		can_buckle = TRUE
		buckle_lying = FALSE
		add_overlay("[icon_state]_saddled")
		var/datum/component/riding/D = LoadComponent(/datum/component/riding)
		D.set_riding_offsets(RIDING_OFFSET_ALL, list(TEXT_NORTH = list(0, 8 + offsety), TEXT_SOUTH = list(0, 8 + offsety), TEXT_EAST = list(-2 - offsetx, 8 + offsety), TEXT_WEST = list(2 + offsetx, 8 + offsety)))
		D.set_vehicle_dir_layer(SOUTH, RIDING_LAYER)
		D.set_vehicle_dir_layer(NORTH, OBJ_LAYER)
		D.set_vehicle_dir_layer(EAST, OBJ_LAYER)
		D.set_vehicle_dir_layer(WEST, OBJ_LAYER)
		D.keytype = /obj/item/key/lasso
		D.drive_verb = "ride"
		update_icon()
		D.vehicle_move_delay = speedmodifier

/mob/living/simple_animal/fallout/attackby(obj/item/O, mob/user, params)
	. = ..()
	if(is_type_in_list(O, food_type))
		user.visible_message("<span class='notice'>[user] hand-feeds [O] to [src].</span>", "<span class='notice'>You hand-feed [O] to [src].</span>")
		qdel(O)
		if(do_after(user, 3 SECONDS, target = src))
			if (prob(tame_chance)) //note: lack of feedback message is deliberate, keep them guessing!
				tame = TRUE
				tamed(user)
			else
				tame_chance += bonus_tame_chance
	if(tame == 1)
		visible_message("<span class='alertalien'>[src] is now tamed.</span>")
	if(stat == CONSCIOUS && tame)
		if(is_type_in_list(O, food_type))
			if(hunger <= maxhunger)
				user.visible_message("<span class='notice'>[user] hand-feeds the [O] to [src].</span>", "<span class='notice'>You hand-feed [O] to [src].</span>")
				hunger += 20
				if(is_young)
					visible_message("<span class='alertalien'>[src] adorably chews the [O].</span>")
					qdel(O)
				if(!has_young && !is_young && breedable == TRUE && hunger >= 150 && prob(30))
					has_young = 1
					visible_message("<span class='alertalien'>[src] hungrily consumes the [O].</span>")
					qdel(O)
				else
					visible_message("<span class='alertalien'>[src] absently munches the [O].</span>")
					qdel(O)
			else if(hunger >= maxhunger)
				user.visible_message("<span class='notice'>The [src] rejects the [O] they dont seem to be hungry right now.</span>")
		if(rideable == TRUE)
			if(istype(O, /obj/item/saddle) && !saddled)
				if(tame && do_after(user,55,target=src))
					playsound(get_turf(src), "rustle", 50, TRUE)
					user.visible_message("<span class='notice'>You manage to put [O] on [src], you can now ride [p_them()].</span>")
					qdel(O)
					saddled = TRUE
					return
				else
					user.visible_message("<span class='warning'>[src] is rocking around! You can't put the saddle on!</span>")
		if(milkable == TRUE)
			if(istype(O, /obj/item/reagent_containers/glass))
				chems.extractAnimal(O, user)
				return TRUE
			else
				return ..()

/obj/item/fallout/animalchem
	name = "animalchem"
	var/mob/living/simple_animal/fallout/chemicalgen = null

/obj/item/fallout/animalchem/Initialize()
	create_reagents(50)
	reagents.add_reagent(chemicalgen.extract, 20)
	. = ..()

/obj/item/fallout/animalchem/proc/extractAnimal(obj/O, mob/user)
	var/obj/item/reagent_containers/glass/G = O
	if(G.reagents.total_volume >= G.volume)
		to_chat(user, "<span class='warning'>[O] is full.</span>")
		return
	var/transfered = reagents.trans_to(O, rand(5,10))

	if(transfered)
		if(chemicalgen.extract == /datum/reagent/consumable/milk)
			user.visible_message("<span class='notice'>[user] milks [src] using \the [O].</span>", "<span class='notice'>You milk [src] using \the [O].</span>")
		else
			user.visible_message("<span class='notice'>[user] extracts the [chemicalgen.extract] from the [src] using \the [O].</span>", "<span class='notice'>You extract the [chemicalgen.extract] from the [src] using \the [O].</span>")
	else
		to_chat(user, "<span class='warning'>The glands are dry. Wait a bit longer...</span>")

/obj/item/fallout/animalchem/proc/generateChem()
	if(prob(5))
		reagents.add_reagent(chemicalgen.extract, rand(5, 10))

//Aggressive Mobs - Things that Run/Attack you (TG shitcode, I know)

/mob/living/simple_animal/hostile/fallout
	name = "fallout mob"
	desc = "If you see this, kill it, purge it and call the developer hotline, we will beat those mappers/admins, lickety split!"
	icon = 'fallout/icons/mob/falloutanimals.dmi'
	icon_state = ""
	gender = NEUTER
	mob_biotypes = MOB_ORGANIC|MOB_BEAST
	speak = list()
	speak_emote = list()
	emote_hear = list()
	emote_see = list()
	speak_chance = 15
	turns_per_move = 5
	see_in_dark = 6
	butcher_results = list()
	guaranteed_butcher_results = list()
	loot = list()
	response_help_continuous = "pats"
	response_help_simple = "pat"
	response_disarm_continuous = "pushes aside"
	response_disarm_simple = "push aside"
	response_harm_continuous = "kicks"
	response_harm_simple = "kick"
	attack_verb_continuous = "kicks"
	attack_verb_simple = "kick"
	attack_sound = 'sound/weapons/punch1.ogg'
	speak_emote = list()
	health = 100
	maxHealth = 100
	speed = 2
	blood_volume = BLOOD_VOLUME_NORMAL
	food_type = list()
	tame_chance = 10
	bonus_tame_chance = 15
	aggro_vision_range = 10
	a_intent = INTENT_HARM
	see_in_dark = 8
	obj_damage = 10
	footstep_type = FOOTSTEP_MOB_HEAVY
	status_flags = CANSTUN
	environment_smash = ENVIRONMENT_SMASH_NONE
	mob_size = MOB_SIZE_LARGE
	stop_automated_movement_when_pulled = 1
	wound_bonus = -5
	bare_wound_bonus = 5
	splatter = FALSE
	var/milkable = FALSE
	var/extract = null
	var/obj/item/fallout/animalchem/chems = null
	var/eggable = FALSE
	var/egg_type = null
	var/eggsleft = 0
	var/rideable = FALSE
	var/saddled = FALSE
	var/breedable = FALSE
	var/smallasslad = FALSE
	var/largeasslad = FALSE
	var/is_young = FALSE
	var/has_young = FALSE
	var/young_type = null
	var/adult_type = null
	var/growth
	var/hunger = 200
	var/maxhunger = 200
	var/offsetx = 0
	var/offsety = 0

/mob/living/simple_animal/hostile/fallout/Initialize()
	icon_dead = "[icon_state]_dead"
	var/matrix/bambinoscale = matrix()
	if(is_young == TRUE)
		bambinoscale.Scale(0.7, 0.7)
		transform = bambinoscale
		return
	if(smallasslad == TRUE)
		//makes them small ass lads look all funky n shi
		pixel_x = rand(-6, 6)
		pixel_y = rand(0, 10)
	if(largeasslad == TRUE)
		pixel_x = -16
	if(tame)
		if(milkable == TRUE)
			chems = new()
		if(eggable == TRUE)
			eggsleft = 0
	else
		return . = ..()

/mob/living/simple_animal/hostile/fallout/Destroy()
	if(milkable == TRUE)
		qdel(chems)
		chems = null
		return ..()

//hunger and baby grow/birth/speed shitcode
/mob/living/simple_animal/hostile/fallout/Life()
	. =..()
	if(saddled == TRUE)
		saddleup()
		egg_type = null
	if(largeasslad == TRUE)
		pixel_x = -16
	if(tame)
		visible_message("<span class='alertalien'>[src] is now tamed.</span>")
		var/hungerrate = rand(0.2,0.3)
		hunger -= hungerrate
		if(hunger == 0)
			hungerrate = 0
		if(stat == CONSCIOUS && breedable == TRUE)
			if((prob(3) && has_young))
				has_young++
			if(has_young > 10)
				has_young = 0
				visible_message("<span class='alertalien'>[src] has produced a baby.</span>")
				new young_type(src.loc)
			if(is_young)
				growth++
				if(growth > 50)
					is_young = 0
					new adult_type(src.loc)
					qdel(src)
					visible_message("<span class='alertalien'>[src] has fully grown.</span>")
					if(milkable == TRUE)
						chems = new()
					return
		if(milkable == TRUE)
			if(hunger > 0)
				chems.generateChem()
			return
		if(eggable == TRUE)
			if(!stat)
				if(hunger >= 150 && eggsleft < 8)
					eggsleft += rand(1, 4)
					hunger -= 100
				if(hunger == 0)
					eggsleft = 0 //starvin now foo
				else
					return
			if((!stat && prob(3) && eggsleft > 0) && egg_type)
				visible_message("<span class='alertalien'>[src] [pick(EGG_LAYING_MESSAGES)]</span>")
				eggsleft--
				var/obj/item/E = new egg_type(get_turf(src))
				E.pixel_x = rand(-6,6)
				E.pixel_y = rand(-6,6)
				return

/mob/living/simple_animal/hostile/fallout/proc/saddleup()
	var/speedmodifier = speed/(hunger/maxhunger)
	if(saddled == TRUE)
		can_buckle = TRUE
		buckle_lying = FALSE
		add_overlay("[icon_state]_saddled")
		var/datum/component/riding/D = LoadComponent(/datum/component/riding)
		D.set_riding_offsets(RIDING_OFFSET_ALL, list(TEXT_NORTH = list(0, 8 + offsety), TEXT_SOUTH = list(0, 8 + offsety), TEXT_EAST = list(-2 - offsetx, 8 + offsety), TEXT_WEST = list(2 + offsetx, 8 + offsety)))
		D.set_vehicle_dir_layer(SOUTH, RIDING_LAYER)
		D.set_vehicle_dir_layer(NORTH, OBJ_LAYER)
		D.set_vehicle_dir_layer(EAST, OBJ_LAYER)
		D.set_vehicle_dir_layer(WEST, OBJ_LAYER)
		D.keytype = /obj/item/key/lasso
		D.drive_verb = "ride"
		update_icon()
		D.vehicle_move_delay = speedmodifier

/mob/living/simple_animal/hostile/fallout/attackby(obj/item/O, mob/user, params)
	. = ..()
	if(is_type_in_list(O, food_type))
		user.visible_message("<span class='notice'>[user] hand-feeds [O] to [src].</span>", "<span class='notice'>You hand-feed [O] to [src].</span>")
		qdel(O)
		if(do_after(user, 3 SECONDS, target = src))
			if (prob(tame_chance)) //note: lack of feedback message is deliberate, keep them guessing!
				tame = TRUE
				tamed(user)
			else
				tame_chance += bonus_tame_chance
	if(stat == CONSCIOUS && tame)
		if(is_type_in_list(O, food_type))
			if(hunger <= maxhunger)
				user.visible_message("<span class='notice'>[user] hand-feeds the [O] to [src].</span>", "<span class='notice'>You hand-feed [O] to [src].</span>")
				hunger += 20
				if(is_young)
					visible_message("<span class='alertalien'>[src] adorably chews the [O].</span>")
					qdel(O)
				if(!has_young && !is_young && breedable == TRUE && hunger >= 150 && prob(30))
					has_young = 1
					visible_message("<span class='alertalien'>[src] hungrily consumes the [O].</span>")
					qdel(O)
				else
					visible_message("<span class='alertalien'>[src] absently munches the [O].</span>")
					qdel(O)
			else if(hunger >= maxhunger)
				user.visible_message("<span class='notice'>The [src] rejects the [O] they dont seem to be hungry right now.</span>")
		if(rideable == TRUE)
			if(istype(O, /obj/item/saddle) && !saddled)
				if(tame && do_after(user,55,target=src))
					playsound(get_turf(src), "rustle", 50, TRUE)
					user.visible_message("<span class='notice'>You manage to put [O] on [src], you can now ride [p_them()].</span>")
					qdel(O)
					saddled = TRUE
					return
				else
					user.visible_message("<span class='warning'>[src] is rocking around! You can't put the saddle on!</span>")
		if(milkable == TRUE)
			if(istype(O, /obj/item/reagent_containers/glass))
				chems.extractAnimal(O, user)
				return TRUE
			else
				return ..()

//Mobs that attack in retaliation, Brahmin, etc. (oh yeah, boo hoo, no more slaughtering 85 brahmin for meat dawg)

/mob/living/simple_animal/hostile/retaliate/fallout
	name = "fallout mob"
	desc = "If you see this, kill it, purge it and call the developer hotline, we will beat those mappers/admins, lickety split!"
	icon = 'fallout/icons/mob/falloutanimals.dmi'
	icon_state = ""
	gender = NEUTER
	mob_biotypes = MOB_ORGANIC|MOB_BEAST
	speak = list()
	speak_emote = list()
	emote_hear = list()
	emote_see = list()
	speak_chance = 15
	turns_per_move = 5
	see_in_dark = 6
	butcher_results = list()
	guaranteed_butcher_results = list()
	loot = list()
	response_help_continuous = "pats"
	response_help_simple = "pat"
	response_disarm_continuous = "pushes aside"
	response_disarm_simple = "push aside"
	response_harm_continuous = "kicks"
	response_harm_simple = "kick"
	attack_verb_continuous = "kicks"
	attack_verb_simple = "kick"
	attack_sound = 'sound/weapons/punch1.ogg'
	speak_emote = list()
	health = 100
	maxHealth = 100
	speed = 2
	blood_volume = BLOOD_VOLUME_NORMAL
	food_type = list()
	tame_chance = 10
	bonus_tame_chance = 15
	footstep_type = FOOTSTEP_MOB_HEAVY
	status_flags = CANSTUN
	mob_size = MOB_SIZE_LARGE
	stop_automated_movement_when_pulled = 1
	wound_bonus = -5
	bare_wound_bonus = 5
	splatter = FALSE
	var/milkable = FALSE
	var/extract = null
	var/obj/item/fallout/animalchem/chems = null
	var/eggable = FALSE
	var/egg_type = null
	var/eggsleft = 0
	var/rideable = FALSE
	var/saddled = FALSE
	var/breedable = FALSE
	var/smallasslad = FALSE
	var/largeasslad = FALSE
	var/is_young = FALSE
	var/has_young = FALSE
	var/young_type = null
	var/adult_type = null
	var/growth
	var/hunger = 200
	var/maxhunger = 200
	var/offsetx = 0
	var/offsety = 0

/mob/living/simple_animal/hostile/retaliate/fallout/Initialize()
	icon_dead = "[icon_state]_dead"
	var/matrix/bambinoscale = matrix()
	if(is_young == TRUE)
		bambinoscale.Scale(0.7, 0.7)
		transform = bambinoscale
	if(smallasslad == TRUE)
		//makes them small ass lads look all funky n shi
		pixel_x = rand(-6, 6)
		pixel_y = rand(0, 10)
	if(largeasslad == TRUE)
		pixel_x = -16
	if(tame)
		if(milkable == TRUE)
			chems = new()
		if(eggable == TRUE)
			eggsleft = 0
	else
		return . = ..()

/mob/living/simple_animal/hostile/retaliate/fallout/Destroy()
	if(milkable == TRUE)
		qdel(chems)
		chems = null
		return ..()

//hunger and baby grow/birth/speed shitcode
/mob/living/simple_animal/hostile/retaliate/fallout/Life()
	. =..()
	if(enemies.len && prob(10))
		enemies = list()
		LoseTarget()
		src.visible_message("<span class='notice'>[src] calms down.</span>")
	if(saddled == TRUE)
		saddleup()
		egg_type = null
	if(largeasslad == TRUE)
		pixel_x = -16
	if(tame)
		visible_message("<span class='alertalien'>[src] is now tamed.</span>")
		var/hungerrate = rand(0.2,0.3)
		hunger -= hungerrate
		if(hunger == 0)
			hungerrate = 0
		if(stat == CONSCIOUS && breedable == TRUE)
			if((prob(3) && has_young))
				has_young++
			if(has_young > 10)
				has_young = 0
				visible_message("<span class='alertalien'>[src] has produced a baby.</span>")
				new young_type(src.loc)
			if(is_young)
				growth++
				if(growth > 50)
					is_young = 0
					new adult_type(src.loc)
					qdel(src)
					visible_message("<span class='alertalien'>[src] has fully grown.</span>")
					if(milkable == TRUE)
						chems = new()
					return
		if(milkable == TRUE)
			if(hunger > 0)
				chems.generateChem()
			return
		if(eggable == TRUE)
			if(!stat)
				if(hunger >= 150 && eggsleft < 8)
					eggsleft += rand(1, 4)
					hunger -= 100
				if(hunger == 0)
					eggsleft = 0 //starvin now foo
				else
					return
			if((!stat && prob(3) && eggsleft > 0) && egg_type)
				visible_message("<span class='alertalien'>[src] [pick(EGG_LAYING_MESSAGES)]</span>")
				eggsleft--
				var/obj/item/E = new egg_type(get_turf(src))
				E.pixel_x = rand(-6,6)
				E.pixel_y = rand(-6,6)
				return

/mob/living/simple_animal/hostile/retaliate/fallout/proc/saddleup()
	var/speedmodifier = speed/(hunger/maxhunger)
	if(saddled == TRUE)
		can_buckle = TRUE
		buckle_lying = FALSE
		add_overlay("[icon_state]_saddled")
		var/datum/component/riding/D = LoadComponent(/datum/component/riding)
		D.set_riding_offsets(RIDING_OFFSET_ALL, list(TEXT_NORTH = list(0, 8 + offsety), TEXT_SOUTH = list(0, 8 + offsety), TEXT_EAST = list(-2 - offsetx, 8 + offsety), TEXT_WEST = list(2 + offsetx, 8 + offsety)))
		D.set_vehicle_dir_layer(SOUTH, RIDING_LAYER)
		D.set_vehicle_dir_layer(NORTH, OBJ_LAYER)
		D.set_vehicle_dir_layer(EAST, OBJ_LAYER)
		D.set_vehicle_dir_layer(WEST, OBJ_LAYER)
		D.keytype = /obj/item/key/lasso
		D.drive_verb = "ride"
		update_icon()
		D.vehicle_move_delay = speedmodifier

/mob/living/simple_animal/hostile/retaliate/fallout/Retaliate()
	..()
	src.visible_message("<span class='danger'>The [src] starts kicking off!</span>")

/mob/living/simple_animal/hostile/retaliate/fallout/attackby(obj/item/O, mob/user, params)
	. = ..()
	if(is_type_in_list(O, food_type))
		user.visible_message("<span class='notice'>[user] hand-feeds [O] to [src].</span>", "<span class='notice'>You hand-feed [O] to [src].</span>")
		qdel(O)
		if(do_after(user, 3 SECONDS, target = src))
			if (prob(tame_chance)) //note: lack of feedback message is deliberate, keep them guessing!
				tame = TRUE
				tamed(user)
			else
				tame_chance += bonus_tame_chance
	if(tame == 1)
		visible_message("<span class='alertalien'>[src] is now tamed.</span>")
	if(stat == CONSCIOUS && tame)
		if(is_type_in_list(O, food_type))
			if(hunger <= maxhunger)
				user.visible_message("<span class='notice'>[user] hand-feeds the [O] to [src].</span>", "<span class='notice'>You hand-feed [O] to [src].</span>")
				hunger += 20
				if(is_young)
					visible_message("<span class='alertalien'>[src] adorably chews the [O].</span>")
					qdel(O)
				if(!has_young && !is_young && breedable == TRUE && hunger >= 150 && prob(30))
					has_young = 1
					visible_message("<span class='alertalien'>[src] hungrily consumes the [O].</span>")
					qdel(O)
				else
					visible_message("<span class='alertalien'>[src] absently munches the [O].</span>")
					qdel(O)
			else if(hunger >= maxhunger)
				user.visible_message("<span class='notice'>The [src] rejects the [O] they dont seem to be hungry right now.</span>")
		if(rideable == TRUE)
			if(istype(O, /obj/item/saddle) && !saddled)
				if(tame && do_after(user,55,target=src))
					playsound(get_turf(src), "rustle", 50, TRUE)
					user.visible_message("<span class='notice'>You manage to put [O] on [src], you can now ride [p_them()].</span>")
					qdel(O)
					saddled = TRUE
					return
				else
					user.visible_message("<span class='warning'>[src] is rocking around! You can't put the saddle on!</span>")
		if(milkable == TRUE)
			if(istype(O, /obj/item/reagent_containers/glass))
				chems.extractAnimal(O, user)
				return TRUE
			else
				return ..()
