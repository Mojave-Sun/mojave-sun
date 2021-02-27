/mob/living/simple_animal/hostile/ms13/ghoul
	name = "feral ghoul"
	desc = "The remnants of what was once a human being with aspirations and desires. Reduced to a soul lacking husk of flesh with a single purpose."
	icon = 'mojave/icons/mob/ms13enemies.dmi'
	icon_state = "feralghoul"
	gender = NEUTER
	speak = list("hnnnhhh","heuhhhh","nnnnhhh")
	speak_emote = list("grumbles","growls")
	emote_hear = list("lets out a weak groan.")
	emote_see = list("idly twitches")
	attack_verb_continuous = "tears"
	attack_verb_simple = "claws"
	turns_per_move = 1
	butcher_results = list(/obj/item/ms13/hide/brahmiluff = 1, /obj/item/ms13/carcass/large/brahmiluff/front = 1, /obj/item/ms13/carcass/large/brahmiluff/back = 1, /obj/item/ms13/animalitem/brahmiluff/horns = 2)//brahmiluff meat, tongue, horns, hide, fur
	attack_sound = list('sound/creatures/venus_trap_hurt.ogg', 'sound/creatures/venus_trap_hit.ogg')
	health = 100
	maxHealth = 100
	melee_damage_lower = 5
	melee_damage_upper = 20

/mob/living/simple_animal/hostile/ms13/ghoul/brown
	icon_state = "feralghoul_brown"

/mob/living/simple_animal/hostile/ms13/ghoul/frozen
	name = "frozen feral ghoul"
	desc = "A frozen corpse that has decided to seek heat once more. It's a miracle they can walk with all that ice in them."
	icon_state = "iceghoul"
	health = 130
	maxHealth = 130
	melee_damage_lower = 10
	melee_damage_upper = 25
	speed = 1.5

/mob/living/simple_animal/hostile/ms13/ghoul/radioactive
	name = "glowing feral ghoul"
	desc = "A feral ghoul. It looks like it has spent is entire lifetime sitting in a radioactive lake, as the damn thing can probably power a building if you hooked it up."
	icon_state = "glowinghoul"
	health = 120
	maxHealth = 120
	melee_damage_lower = 5
	melee_damage_upper = 30
	speed = 0.9
	light_range = 2
	light_color = "#4ba54f"
