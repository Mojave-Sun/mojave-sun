/////////////////////////////////////////////////////////////
/////////////////// MOJAVE SUN ANIMALS //////////////////////
/////////////////////////////////////////////////////////////

//USE FOR LIKE FARMABLE AND TAMEABLE STUFF/HOSTILES GO ELSEWHERE

//brahmin

/mob/living/simple_animal/hostile/retaliate/fallout/brahmin
	name = "brahmin"
	desc = "Mutated cattle, renowed over the wastes for their labor, milk, fertilizer, leather, and meat."
	icon_state = "brahmin"
	gender = FEMALE //bessies
	speak = list("groo","mooo","RWHOOOO")
	speak_emote = list("snorts","grumbles")
	emote_hear = list("brays.")
	emote_see = list("shakes its head.")
	attack_verb_continuous = "headbutts"
	attack_verb_simple = "headbutt"
	turns_per_move = 3
	butcher_results = list()//brahmin meat, tongue, horns, hide
	guaranteed_butcher_results = list()//brahmin meat
	attack_sound = 'sound/weapons/punch1.ogg'
	health = 200
	maxHealth = 200
	melee_damage_lower = 1
	melee_damage_upper = 2
	food_type = list(/obj/item/reagent_containers/food/snacks/grown/fallout/tato, /obj/item/reagent_containers/food/snacks/grown/fallout/potato, /obj/item/reagent_containers/food/snacks/grown/fallout/razorgrain, /obj/item/reagent_containers/food/snacks/grown/fallout/baifan, /obj/item/reagent_containers/food/snacks/grown/fallout/cabbage)
	milkable = TRUE
	extract = null//brahmin milk
	rideable = TRUE
	breedable = TRUE
	young_type = /mob/living/simple_animal/fallout/brahminyoung
	adult_type = /mob/living/simple_animal/hostile/retaliate/fallout/brahmin

/mob/living/simple_animal/fallout/brahminyoung
	name = "brahmin calf"
	desc = "Mutated cattle, renowed over the wastes for their labor, milk, fertilizer, leather, and meat."
	icon_state = "brahmin"
	speak = list("eee","ooo")
	speak_emote = list("sniffs","grimbles")
	emote_hear = list("brays.")
	emote_see = list("shakes its head.")
	attack_verb_continuous = "taps"
	attack_verb_simple = "tap"
	speak_chance = 20
	turns_per_move = 3
	melee_damage_lower = 0
	melee_damage_upper = 0
	food_type = list(/obj/item/reagent_containers/food/snacks/grown/fallout/tato, /obj/item/reagent_containers/food/snacks/grown/fallout/potato, /obj/item/reagent_containers/food/snacks/grown/fallout/razorgrain, /obj/item/reagent_containers/food/snacks/grown/fallout/baifan, /obj/item/reagent_containers/food/snacks/grown/fallout/cabbage)
	butcher_results = list()//brahmin veal?
	guaranteed_butcher_results = list()//brahmin meat
	health = 50
	maxHealth = 50
	melee_damage_lower = 0
	melee_damage_upper = 0
	is_young = TRUE
	adult_type = /mob/living/simple_animal/hostile/retaliate/fallout/brahmin

/mob/living/simple_animal/hostile/retaliate/fallout/brahmin/brahmiluff
	name = "brahmiluff"
	desc = "Mutated wild cattle, native to the cold and covered in fur, a close relative to the brahmin and a native species to the area."
	icon_state = "brahmiluff"
	gender = MALE
	speak = list("grrr","mooo","RWHOOOO")
	speak_emote = list("grunts","bleats")
	emote_hear = list("brays.")
	emote_see = list("shakes its head.")
	attack_verb_continuous = "headbutts"
	attack_verb_simple = "headbutt"
	turns_per_move = 1
	butcher_results = list()//brahmiluff meat, tongue, horns, hide, fur
	guaranteed_butcher_results = list()//brahmiluff meat
	attack_sound = 'sound/weapons/punch1.ogg'
	health = 300
	maxHealth = 300
	melee_damage_lower = 5
	melee_damage_upper = 10
	food_type = list(/obj/item/reagent_containers/food/snacks/grown/fallout/blackberry, /obj/item/reagent_containers/food/snacks/grown/fallout/mutfruit, /obj/item/reagent_containers/food/snacks/grown/fallout/razorgrain, /obj/item/reagent_containers/food/snacks/grown/fallout/carrot, /obj/item/reagent_containers/food/snacks/grown/fallout/cavefungus)
	milkable = TRUE
	extract = null//brahmiluff milk
	rideable = TRUE
	breedable = FALSE
	young_type = null
	adult_type = null
	bonus_tame_chance = 5
	offsetx = 6
	offsety = 5

/mob/living/simple_animal/fallout/clucker
	name = "clucker"
	desc = "A bald wasteland chicken, produces nutritious eggs and tasty meat."
	icon_state = "clucker"
	gender = FEMALE //male clucker when?
	speak = list("kakoo","KRAWWW","cluck")
	speak_emote = list("squaks")
	emote_hear = list("cheeps")
	emote_see = list("flaps its wings")
	turns_per_move = 2
	butcher_results = list()//feathers(rare, homie bald), beak, "chicken"
	guaranteed_butcher_results = list()//chicken
	health = 20
	maxHealth = 20
	speed = 1
	food_type = list(/obj/item/reagent_containers/food/snacks/grown/fallout/razorgrain, /obj/item/reagent_containers/food/snacks/grown/fallout/baifan)
	eggable = TRUE
	egg_type = null//clucker egg
	eggsleft = 0
	rideable = FALSE
	saddled = FALSE
	smallasslad = TRUE
	tame = TRUE

/mob/living/simple_animal/hostile/retaliate/fallout/slepnir
	name = "slepnir"
	desc = "A large, mutated horse, featuring six working legs it provides excellent mobility and speed, as well as being a backbone of unpowered travel across the wastes."
	icon = 'fallout/icons/mob/32x64.dmi'
	icon_state = "slepnir"
	gender = MALE
	speak = list("nyehhh","hyooooo","WHEHEHHANAHA")
	speak_emote = list("whinneys")
	emote_hear = list("neighs")
	emote_see = list("stomps")
	attack_verb_continuous = "kicks"
	attack_verb_simple = "kick"
	speak_chance = 10
	turns_per_move = 5
	butcher_results = list()//slepnir hide, hooves, hair, meat
	guaranteed_butcher_results = list()//meat
	attack_sound = 'sound/weapons/punch3.ogg'
	health = 400
	maxHealth = 400
	melee_damage_lower = 5
	melee_damage_upper = 20 //getting kicked by a horse should hurt
	speed = 1.5
	food_type = list(/obj/item/reagent_containers/food/snacks/grown/fallout/apple, /obj/item/reagent_containers/food/snacks/grown/fallout/cmutfruit)
	tame_chance = 5
	bonus_tame_chance = 15
	rideable = TRUE
	largeasslad = TRUE
	offsetx = 2
	offsety = 10
