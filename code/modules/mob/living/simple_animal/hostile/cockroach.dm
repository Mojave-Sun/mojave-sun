/mob/living/simple_animal/hostile/cockroach
	name = "cockroach"
	desc = "This station is just crawling with bugs."
	icon_state = "cockroach"
	icon_dead = "cockroach"
	health = 1
	maxHealth = 1
	turns_per_move = 5
	loot = list(/obj/effect/decal/cleanable/insectguts)
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	minbodytemp = 270
	maxbodytemp = INFINITY
	pass_flags = PASSTABLE | PASSGRILLE | PASSMOB
	mob_size = MOB_SIZE_TINY
	mob_biotypes = MOB_ORGANIC|MOB_BUG
	response_disarm_continuous = "shoos"
	response_disarm_simple = "shoo"
	response_harm_continuous = "splats"
	response_harm_simple = "splat"
	speak_emote = list("chitters")
	density = FALSE
	melee_damage_lower = 0
	melee_damage_upper = 0
	obj_damage = 0
	ventcrawler = VENTCRAWLER_ALWAYS
	gold_core_spawnable = FRIENDLY_SPAWN
	verb_say = "chitters"
	verb_ask = "chitters inquisitively"
	verb_exclaim = "chitters loudly"
	verb_yell = "chitters loudly"
	del_on_death = TRUE
	environment_smash = ENVIRONMENT_SMASH_NONE
	faction = list("neutral")
	var/squish_chance = 50

/mob/living/simple_animal/hostile/cockroach/Initialize()
	. = ..()
	add_cell_sample()

/mob/living/simple_animal/hostile/cockroach/add_cell_sample()
	AddElement(/datum/element/swabable, CELL_LINE_TABLE_COCKROACH, CELL_VIRUS_TABLE_GENERIC_MOB, 1, 7)

/obj/projectile/glockroachbullet
	damage = 10 //same damage as a hivebot
	damage_type = BRUTE

/obj/item/ammo_casing/glockroach
	name = "0.9mm bullet casing"
	desc = "A... 0.9mm bullet casing? What?"
	projectile_type = /obj/projectile/glockroachbullet

/mob/living/simple_animal/hostile/cockroach/glockroach
	name = "glockroach"
	desc = "HOLY SHIT, THAT COCKROACH HAS A GUN!"
	icon_state = "glockroach"
	melee_damage_lower = 5
	melee_damage_upper = 5
	obj_damage = 20
	gold_core_spawnable = HOSTILE_SPAWN
	projectilesound = 'sound/weapons/gun/pistol/shot.ogg'
	projectiletype = /obj/projectile/glockroachbullet
	casingtype = /obj/item/ammo_casing/glockroach
	ranged = TRUE
	faction = list("hostile")

/mob/living/simple_animal/hostile/cockroach/death(gibbed)
	if(SSticker.mode && SSticker.mode.station_was_nuked) //If the nuke is going off, then cockroaches are invincible. Keeps the nuke from killing them, cause cockroaches are immune to nukes.
		return
	..()

/mob/living/simple_animal/hostile/cockroach/Crossed(atom/movable/AM)
	. = ..()
	if(isliving(AM))
		var/mob/living/A = AM
		if(A.mob_size > MOB_SIZE_SMALL && !(A.movement_type & FLYING))
			if(HAS_TRAIT(A, TRAIT_PACIFISM))
				A.visible_message("<span class='notice'>[A] carefully steps over [src].</span>", "<span class='notice'>You carefully step over [src] to avoid hurting it.</span>")
				return
			if(prob(squish_chance))
				A.visible_message("<span class='notice'>[A] squashed [src].</span>", "<span class='notice'>You squashed [src].</span>")
				adjustBruteLoss(1) //kills a normal cockroach
			else
				visible_message("<span class='notice'>[src] avoids getting crushed.</span>")
	else if(isstructure(AM))
		if(prob(squish_chance))
			AM.visible_message("<span class='notice'>[src] is crushed under [AM].</span>")
			adjustBruteLoss(1)
		else
			visible_message("<span class='notice'>[src] avoids getting crushed.</span>")

/mob/living/simple_animal/hostile/cockroach/ex_act() //Explosions are a terrible way to handle a cockroach.
	return

/mob/living/simple_animal/hostile/cockroach/hauberoach
	name = "hauberoach"
	desc = "Is that cockroach wearing a tiny yet immaculate replica 19th century Prussian spiked helmet? ...Is that a bad thing?"
	icon_state = "hauberoach"
	attack_verb_continuous = "rams its spike into"
	attack_verb_simple = "ram your spike into"
	melee_damage_lower = 5
	melee_damage_upper = 20
	obj_damage = 20
	gold_core_spawnable = HOSTILE_SPAWN
	attack_sound = 'sound/weapons/bladeslice.ogg'
	faction = list("hostile")
	sharpness = SHARP_POINTY
	squish_chance = 0 // manual squish if relevant

/mob/living/simple_animal/hostile/cockroach/hauberoach/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/caltrop, 10, 15, 100, (CALTROP_BYPASS_SHOES | CALTROP_SILENT))

/mob/living/simple_animal/hostile/cockroach/hauberoach/Crossed(atom/movable/AM)
	var/mob/living/A = AM
	if(istype(A) && A.mob_size > MOB_SIZE_SMALL && !(A.movement_type & FLYING))
		if(!HAS_TRAIT(A, TRAIT_PIERCEIMMUNE))
			A.visible_message("<span class='danger'>[A] steps onto [src]'s spike!</span>", "<span class='userdanger'>You step onto [src]'s spike!</span>")
		else if(HAS_TRAIT(A, TRAIT_PACIFISM))
			A.visible_message("<span class='notice'>[A] carefully steps over [src].</span>", "<span class='notice'>You carefully step over [src] to avoid hurting it.</span>")
		else
			A.visible_message("<span class='notice'>[A] squashes [src], not even noticing its spike.</span>", "<span class='notice'>You squashed [src], not even noticing its spike.</span>")
			adjustBruteLoss(1) //kills a normal cockroach
	..()
