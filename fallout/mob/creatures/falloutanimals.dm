/////////////////////////////////////////////////////////////
/////////////////// MOJAVE SUN ANIMALS //////////////////////
/////////////////////////////////////////////////////////////

//USE FOR LIKE FARMABLE AND TAMEABLE STUFF/HOSTILES

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
	butcher_results = list(/obj/item/fallout/hide/brahmin = 1, /obj/item/fallout/carcass/large/brahmin = 1, /obj/item/fallout/animalitem/brahmin/horns = 2)//brahmin meat, tongue, horns, hide
	attack_sound = 'sound/weapons/punch1.ogg'
	speed = 3
	health = 200
	maxHealth = 200
	melee_damage_lower = 3
	melee_damage_upper = 5
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
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab = 1)
	splatter = TRUE
	health = 50
	maxHealth = 50
	is_young = TRUE
	adult_type = /mob/living/simple_animal/hostile/retaliate/fallout/brahmin

//brahmiluff

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
	butcher_results = list(/obj/item/fallout/hide/brahmiluff = 1, /obj/item/fallout/carcass/large/brahmiluff = 1, /obj/item/fallout/animalitem/brahmiluff/horns = 2)//brahmiluff meat, tongue, horns, hide, fur
	attack_sound = 'sound/weapons/punch1.ogg'
	health = 300
	maxHealth = 300
	melee_damage_lower = 5
	melee_damage_upper = 20
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

//clucker - chicken

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
	butcher_results = list(/obj/item/fallout/carcass/clucker = 1, /obj/item/fallout/animalitem/clucker/feather = 1)//feathers(rare, homie bald), beak, "chicken"
	health = 20
	maxHealth = 20
	speed = 1
	food_type = list(/obj/item/reagent_containers/food/snacks/grown/fallout/razorgrain, /obj/item/reagent_containers/food/snacks/grown/fallout/baifan)
	eggable = TRUE
	egg_type = /obj/item/reagent_containers/food/snacks/egg/fallout/clucker
	smallasslad = TRUE
	tame = TRUE

//slepnir - horse mount

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
	butcher_results = list(/obj/item/fallout/hide/slepnir = 1, /obj/item/fallout/carcass/large/slepnir/front = 1, /obj/item/fallout/carcass/large/slepnir/back = 1, /obj/item/fallout/animalitem/slepnir/hooves = 2)//slepnir hide, hooves, hair, meat
	attack_sound = 'fallout/sound/f13weapons/meleesounds/slam.ogg'
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

//pigrat - pig but a rat

/mob/living/simple_animal/hostile/fallout/pigrat
	name = "pigrat"
	desc = "A foul abomination of the earths two most filthy creatures, initially wild beasts but if tamed are known to be a source of nutritious meat and milk."
	icon_state = "pigrat"
	gender = FEMALE
	speak = list("squeeee","Roink","EEEEEEEEEEEK")
	speak_emote = list("screeches")
	emote_hear = list("grunts")
	emote_see = list("flobs")
	attack_verb_continuous = "bites"
	attack_verb_simple = "bite"
	speak_chance = 30
	turns_per_move = 5
	butcher_results = list(/obj/item/fallout/hide/pigrat = 1, /obj/item/fallout/carcass/large/pigrat = 1, /obj/item/fallout/animalitem/pigrat/snout = 1)//pigrat hide, snout, meat
	attack_sound = 'sound/weapons/bite.ogg'
	health = 100
	maxHealth = 100
	melee_damage_lower = 10
	melee_damage_upper = 15
	speed = 1
	food_type = list(/obj/item/reagent_containers/food/snacks/grown/fallout/xander, /obj/item/reagent_containers/food/snacks/grown/fallout/carrot)
	tame_chance = 5
	bonus_tame_chance = 5
	milkable = TRUE
	extract = null//pigrat milk
	breedable = TRUE
	young_type = /mob/living/simple_animal/fallout/pigratyoung
	adult_type = /mob/living/simple_animal/hostile/fallout/pigrat/tamed

/mob/living/simple_animal/fallout/pigratyoung
	name = "pigrat"
	desc = "A foul abomination of the earths two most filthy creatures, initially wild beasts but if tamed are known to be a source of nutritious meat and milk."
	icon_state = "pigrat"
	speak = list("squee","oink","yeeee")
	speak_emote = list("screeches")
	emote_hear = list("grunts")
	emote_see = list("flobs")
	attack_verb_continuous = "nips"
	attack_verb_simple = "nip"
	speak_chance = 30
	turns_per_move = 5
	melee_damage_lower = 0
	melee_damage_upper = 0
	speed = 1
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab = 1)
	splatter = TRUE
	health = 30
	maxHealth = 30
	is_young = TRUE
	adult_type = /mob/living/simple_animal/hostile/fallout/pigrat/tamed

/mob/living/simple_animal/hostile/fallout/pigrat/tamed
	faction = list("neutral")

//molerat

/mob/living/simple_animal/hostile/fallout/molerat
	name = "molerat"
	desc = "A disgusting flesh beast, known for its hostility and edible meat."
	icon_state = "molerat"
	gender = FEMALE
	speak = list("hggghghghg","skreeeee","chiiiiiiiii")
	speak_emote = list("screeches")
	emote_hear = list("natters")
	emote_see = list("scratches")
	attack_verb_continuous = "bites"
	attack_verb_simple = "bite"
	speak_chance = 30
	turns_per_move = 5
	butcher_results = list(/obj/item/fallout/hide/molerat = 1, /obj/item/fallout/carcass/molerat = 1)//molerat hide, teeth, meat
	attack_sound = 'sound/weapons/bite.ogg'
	health = 100
	maxHealth = 100
	melee_damage_lower = 7
	melee_damage_upper = 10
	speed = 1.5
	food_type = list(/obj/item/reagent_containers/food/snacks/grown/fallout/potato)
	tame_chance = 20
	bonus_tame_chance = 5
	breedable = TRUE
	young_type = /mob/living/simple_animal/fallout/moleratyoung
	adult_type = /mob/living/simple_animal/hostile/fallout/molerat/tamed

/mob/living/simple_animal/hostile/fallout/molerat/tamed
	faction = list("neutral")

/mob/living/simple_animal/fallout/moleratyoung
	name = "molerat"
	desc = "A small disgusting flesh beast, known for its hostility and edible meat."
	icon_state = "molerat"
	speak = list("ghghg","sroooo","eeeee")
	speak_emote = list("screeches")
	emote_hear = list("natters")
	emote_see = list("scratches")
	attack_verb_continuous = "nips"
	attack_verb_simple = "nip"
	speak_chance = 30
	turns_per_move = 5
	melee_damage_lower = 0
	melee_damage_upper = 0
	speed = 1.5
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab = 1)
	splatter = TRUE
	health = 10
	maxHealth = 10
	is_young = TRUE
	adult_type = /mob/living/simple_animal/hostile/fallout/molerat/tamed

//radroach

/mob/living/simple_animal/hostile/fallout/radroach
	name = "radroach"
	desc = "A large mutated cockroach, an angry beast thats extremely territorial."
	icon_state = "radroach"
	gender = FEMALE
	speak_emote = list("screeches")
	emote_hear = list("natters")
	emote_see = list("twitches")
	attack_verb_continuous = "pincers"
	attack_verb_simple = "pincer"
	speak_chance = 0
	turns_per_move = 5
	butcher_results = list()//radroach meat, eggs, innards
	attack_sound = 'sound/weapons/bite.ogg'
	health = 50
	maxHealth = 50
	melee_damage_lower = 10
	melee_damage_upper = 15
	speed = 2
	food_type = list(/obj/item/reagent_containers/food)//they eat anything
	tame_chance = 5
	bonus_tame_chance = 5
	eggable = TRUE
	egg_type = /obj/item/reagent_containers/food/snacks/egg/fallout/radroach
	var/poison_per_bite = 5
	var/poison_type = /datum/reagent/toxin

/mob/living/simple_animal/hostile/fallout/radroach/AttackingTarget()
	. = ..()
	if(.)
		inject_poison(target)

/mob/living/simple_animal/hostile/fallout/radroach/proc/inject_poison(mob/living/L)
	if(poison_type && istype(L) && L.reagents)
		L.reagents.add_reagent(poison_type, poison_per_bite)

//gecko

/mob/living/simple_animal/hostile/fallout/gecko
	name = "gecko"
	desc = "A large mutated bipedal lizard, an angry squatter of the wastes, keen to fish-like prey and also rarely used as a mount."
	icon_state = "gecko"
	gender = FEMALE
	speak = list("scrakakakka","RWOOPWOOP","sssssss")
	speak_emote = list("hisses")
	emote_hear = list("flaps")
	emote_see = list("slaps")
	attack_verb_continuous = "scratches"
	attack_verb_simple = "scratch"
	speak_chance = 40
	turns_per_move = 5
	butcher_results = list(/obj/item/fallout/hide/gecko = 1, /obj/item/fallout/carcass/gecko = 1, /obj/item/fallout/animalitem/gecko/claws = 1)//gecko meat, eggs, hide
	attack_sound = 'sound/weapons/slash.ogg'//scratch
	health = 150
	maxHealth = 150
	melee_damage_lower = 15
	melee_damage_upper = 20
	speed = 1.8
	//food_type = //insert TECHNOFISH TM HERE)
	tame_chance = 5
	bonus_tame_chance = 15
	rideable = TRUE
	eggable = TRUE
	egg_type = /obj/item/reagent_containers/food/snacks/egg/fallout/gecko
	offsetx = 2
	offsety = 5

/mob/living/simple_animal/hostile/fallout/gecko/ice
	icon_state = "icegecko"
	butcher_results = list(/obj/item/fallout/hide/gecko/ice = 1, /obj/item/fallout/carcass/gecko = 1, /obj/item/fallout/animalitem/gecko/claws = 1)

/mob/living/simple_animal/hostile/fallout/gecko/sand
	icon_state = "sandgecko"
	butcher_results = list(/obj/item/fallout/hide/gecko/sand = 1, /obj/item/fallout/carcass/gecko = 1, /obj/item/fallout/animalitem/gecko/claws = 1)

//mirelurk

/mob/living/simple_animal/hostile/fallout/mirelurk
	name = "mirelurk"
	desc = "A large mutated crab monster, lurks its prey from the deep, keen to meat and a vital food source for many roamers."
	icon_state = "cavelurk"
	speak = list("click","ckckckkc","CHCHCHHCHC")
	speak_emote = list("histles")
	emote_hear = list("clicks")
	emote_see = list("slaps")
	attack_verb_continuous = "claws"
	attack_verb_simple = "claw"
	speak_chance = 40
	turns_per_move = 10
	butcher_results = list()//mirelurk meat, eggs, chitin
	attack_sound = 'sound/weapons/slash.ogg'
	health = 400
	maxHealth = 400
	melee_damage_lower = 20
	melee_damage_upper = 25
	speed = 3
	food_type = list(/obj/item/reagent_containers/food/snacks/meat)
	tame_chance = 5
	bonus_tame_chance = 5
	rideable = TRUE
	eggable = TRUE
	egg_type = /obj/item/reagent_containers/food/snacks/egg/fallout/mirelurk
	offsetx = 2
	offsety = 5

/mob/living/simple_animal/hostile/fallout/mirelurk/radlurk
	icon_state = "radlurk"

/mob/living/simple_animal/hostile/fallout/mirelurk/nukalurk
	icon_state = "mirelurk"

//giantant

/mob/living/simple_animal/hostile/fallout/giantant
	name = "giant ant"
	desc = "A large mutated ant, loyal to the hive and will protect it at all costs."
	icon_state = "ant"
	speak = list("chchch","skreeeeee","SKEEEEEE")
	speak_emote = list("chitters")
	emote_hear = list("clicks")
	emote_see = list("dances")
	attack_verb_continuous = "pincers"
	attack_verb_simple = "pincer"
	speak_chance = 40
	turns_per_move = 5
	butcher_results = list()//ant meat, eggs, chitin
	attack_sound = 'sound/weapons/slash.ogg'
	health = 100
	maxHealth = 100
	melee_damage_lower = 5
	melee_damage_upper = 30
	speed = 2
	food_type = list(/obj/item/seeds/fallout/punga, /obj/item/seeds/fallout/geigpunga)
	tame_chance = 5
	bonus_tame_chance = 5
	eggable = TRUE
	egg_type = /obj/item/reagent_containers/food/snacks/egg/fallout/ant

//nightstalker, very good mount

/mob/living/simple_animal/hostile/fallout/nightstalker
	name = "nightstalker"
	desc = "A large hybrid and dangerous creature of a snake and lion, known for its speed, cunning and squeezin!"
	icon = 'fallout/icons/mob/32x64.dmi'
	icon_state = "nightstalker"
	gender = FEMALE
	speak = list("sssssss","grrrrr","HEHEHEHEHEHE")
	speak_emote = list("hisses")
	emote_hear = list("chuckles")
	emote_see = list("scratches")
	attack_verb_continuous = "mauls"
	attack_verb_simple = "maul"
	speak_chance = 20
	turns_per_move = 3
	butcher_results = list(/obj/item/fallout/hide/nightstalker = 1, /obj/item/fallout/carcass/large/nightstalker = 1, /obj/item/fallout/animalitem/nightstalker/teeth = 2)//nightstalker hide, extract, meat
	attack_sound = 'fallout/sound/f13weapons/meleesounds/slam.ogg'
	health = 400
	maxHealth = 400
	melee_damage_lower = 20
	melee_damage_upper = 40
	speed = 1
	food_type = list(/obj/item/reagent_containers/food/snacks/meat)
	tame_chance = 2
	bonus_tame_chance = 2 //this things a jack of all tame trades
	rideable = TRUE
	eggable = TRUE
	egg_type = /obj/item/reagent_containers/food/snacks/egg/fallout/nightstalker
	milkable = TRUE
	extract = null//nightstalkers squeezin
	largeasslad = TRUE
	offsetx = 2
	offsety = 10
	var/poison_per_bite = 10
	var/poison_type = /datum/reagent/toxin

/mob/living/simple_animal/hostile/fallout/nightstalker/AttackingTarget()
	. = ..()
	if(.)
		inject_poison(target)

/mob/living/simple_animal/hostile/fallout/nightstalker/proc/inject_poison(mob/living/L)
	if(poison_type && istype(L) && L.reagents)
		L.reagents.add_reagent(poison_type, poison_per_bite)

//honeybeast - mutated beehive thing

/mob/living/simple_animal/hostile/fallout/honeybeast
	name = "honeybeast"
	desc = "A large mutated clusterous queen, sporting a menancing hive, OH THE BEES, AHHHHHHHHHHHH, BEEES."
	icon_state = "honeybeast"
	speak = list("bzzzzz","BZZZZZZZ")
	speak_emote = list("buzzes")
	emote_hear = list("clicks")
	emote_see = list("dances")
	attack_verb_continuous = "pincers"
	attack_verb_simple = "pincer"
	speak_chance = 60
	turns_per_move = 3
	butcher_results = list()//honeybeast meat, queen bee, chitin
	attack_sound = 'sound/weapons/bite.ogg'
	health = 400
	maxHealth = 400
	melee_damage_lower = 5
	melee_damage_upper = 10
	speed = 3
	food_type = list(/obj/item/seeds/fallout/pricklypear)
	tame_chance = 5
	bonus_tame_chance = 20
	milkable = TRUE
	extract = null//honey

/mob/living/simple_animal/hostile/fallout/honeybeast/Aggro()
	. = ..()
	if(prob(40))
		var/mob/living/simple_animal/hostile/poison/bees/short/B
		new B

//radscorpion

/mob/living/simple_animal/hostile/fallout/radscorpion
	name = "radscorpion"
	desc = "A large mutated scorpion, found across the wastes, extremely lethal with not only its menacing pincers but toxic stinger to boot."
	icon_state = "blackscorpion"
	speak = list("ckkkckkckc","snapsnapsnap","chcthchthcthcthh")
	speak_emote = list("hisses")
	emote_hear = list("clicks")
	emote_see = list("dances")
	attack_verb_continuous = "claws"
	attack_verb_simple = "claw"
	speak_chance = 20
	turns_per_move = 4
	butcher_results = list()//radscoprion meat, radscorpion tail, chitin
	attack_sound = 'sound/weapons/slash.ogg'
	health = 200
	maxHealth = 200
	melee_damage_lower = 30
	melee_damage_upper = 40
	speed = 2
	food_type = list(/obj/item/reagent_containers/food/snacks/grown/fallout/soot, /obj/item/seeds/fallout/toxicsoot)
	tame_chance = 5
	bonus_tame_chance = 5
	milkable = TRUE
	extract = null//poison
	var/poison_per_bite = 20
	var/poison_type = /datum/reagent/toxin

/mob/living/simple_animal/hostile/fallout/radscorpion/AttackingTarget()
	. = ..()
	if(.)
		inject_poison(target)

/mob/living/simple_animal/hostile/fallout/radscorpion/proc/inject_poison(mob/living/L)
	if(poison_type && istype(L) && L.reagents)
		L.reagents.add_reagent(poison_type, poison_per_bite)

/mob/living/simple_animal/hostile/fallout/radscorpion/ice
	icon_state = "bluescorpion"

/mob/living/simple_animal/hostile/fallout/radscorpion/cave
	icon_state = "brownscorpion"

//radstag - hunting animal, runs from the user, gotta use binoculars/scope to get it before it runs

/mob/living/simple_animal/hostile/fallout/radstag
	name = "radstag"
	desc = "A wild mutated deer, a distant relative to the brahmin with its two heads and distinct udders, fleeing at the sight of life, they are a hunters dream and folklore to many.."
	icon_state = "radstag"
	gender = FEMALE
	speak = list("brrrrrrr","weeeeeeee","WOOOOOOOO")
	speak_emote = list("chortles")
	emote_hear = list("stomps")
	emote_see = list("prances")
	attack_verb_continuous = "kicks"
	attack_verb_simple = "kick"
	speak_chance = 10
	turns_per_move = 1
	butcher_results = list(/obj/item/fallout/hide/radstag = 1, /obj/item/fallout/carcass/large/radstag = 1, /obj/item/fallout/animalitem/radstag/antlers = 2)//radstag meat, radstag hide ,radstag horns
	attack_sound = 'fallout/sound/f13weapons/meleesounds/slam.ogg'
	health = 200
	maxHealth = 200
	melee_damage_lower = 15
	melee_damage_upper = 20
	aggro_vision_range = 14
	speed = 1.5
	food_type = list(/obj/item/seeds/fallout/aster)
	tame_chance = 20
	bonus_tame_chance = 25
	rideable = TRUE
	milkable = TRUE
	extract = null//radstag milk
	breedable = TRUE
	young_type = /mob/living/simple_animal/fallout/radstagyoung
	adult_type = /mob/living/simple_animal/hostile/fallout/radstag/tamed
	offsetx = 2
	offsety = 10

/mob/living/simple_animal/hostile/fallout/radstag/GiveTarget(new_target)
	target = new_target
	if(target != null)
		if(isliving(target))
			Aggro()
			visible_message("<span class='danger'>The [name] tries to flee from [target.name]!</span>")
			retreat_distance = 30
			minimum_distance = 30

/mob/living/simple_animal/hostile/fallout/radstag/tamed
	faction = list("neutral")

/mob/living/simple_animal/fallout/radstagyoung
	name = "radstag"
	desc = "A wild mutated deer, a distant relative to the brahmin with its two heads and distinct udders, fleeing at the sight of life, they are a hunters dream and folklore to many.."
	icon_state = "radstag"
	speak = list("brrrr","weee","wo")
	speak_emote = list("chortles")
	emote_hear = list("stomps")
	emote_see = list("prances")
	attack_verb_continuous = "nips"
	attack_verb_simple = "nip"
	speak_chance = 30
	turns_per_move = 5
	melee_damage_lower = 0
	melee_damage_upper = 0
	speed = 1.5
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab = 1)
	splatter = TRUE
	health = 50
	maxHealth = 50
	is_young = TRUE
	adult_type = /mob/living/simple_animal/hostile/fallout/radstag/tamed

//mongrel

/mob/living/simple_animal/hostile/fallout/mongrel
	name = "mongrel"
	desc = "An extremely hostile mutated flesh beast, somewhat dog, somehow, a fearsome pack predator of the wastes."
	icon_state = "mongrel"
	speak = list("grrrrr","BYARK","GRRRRRR")
	speak_emote = list("growls")
	emote_hear = list("whines")
	emote_see = list("kicks")
	attack_verb_continuous = "bites"
	attack_verb_simple = "bite"
	speak_chance = 40
	turns_per_move = 3
	butcher_results = list(/obj/item/fallout/hide/mongrel = 1, /obj/item/fallout/carcass/mongrel = 1)//mongrel meat, mongrel skin
	attack_sound = 'sound/weapons/bite.ogg'
	health = 100
	maxHealth = 100
	melee_damage_lower = 15
	melee_damage_upper = 30
	speed = 1.5
	food_type = list(/obj/item/reagent_containers/food/snacks/meat)
	tame_chance = 10
	bonus_tame_chance = 10
	breedable = TRUE
	young_type = /mob/living/simple_animal/fallout/mongrelyoung
	adult_type = /mob/living/simple_animal/hostile/fallout/mongrel/tamed

/mob/living/simple_animal/hostile/fallout/mongrel/tamed
	faction = list("neutral")

/mob/living/simple_animal/fallout/mongrelyoung
	name = "mongrel"
	desc = "An extremely hostile mutated flesh beast, somewhat dog, somehow, a fearsome pack predator of the wastes."
	icon_state = "mongrel"
	speak = list("grr","byork")
	speak_emote = list("growls")
	emote_hear = list("whines")
	emote_see = list("kicks")
	attack_verb_continuous = "nips"
	attack_verb_simple = "nip"
	speak_chance = 50
	turns_per_move = 5
	melee_damage_lower = 0
	melee_damage_upper = 0
	speed = 1.5
	butcher_results = list()//mungrel meat
	splatter = TRUE
	health = 50
	maxHealth = 50
	is_young = TRUE
	adult_type = /mob/living/simple_animal/hostile/fallout/mongrel/tamed

//wolf

/mob/living/simple_animal/hostile/fallout/wolf
	name = "wolf"
	desc = "An extremely hostile native pack wolf, only hardened by radiation, fearsome and a killer."
	icon_state = "wolf"
	speak = list("grrrrr","WHOOOOOOOO","GRRRRRR")
	speak_emote = list("howls")
	emote_hear = list("grunts")
	emote_see = list("kicks")
	attack_verb_continuous = "bites"
	attack_verb_simple = "bite"
	speak_chance = 40
	turns_per_move = 3
	butcher_results = list(/obj/item/fallout/hide/wolf = 1,/obj/item/fallout/carcass/wolf = 1, /obj/item/fallout/animalitem/wolf/teeth = 2)//wolf meat, wolf hide
	attack_sound = 'sound/weapons/bite.ogg'
	health = 200
	maxHealth = 200
	melee_damage_lower = 30
	melee_damage_upper = 40
	speed = 1.5
	food_type = list(/obj/item/reagent_containers/food/snacks/meat)
	tame_chance = 5
	bonus_tame_chance = 5

//tunneler - idk what this was but cool sprite :flushed:

/mob/living/simple_animal/hostile/fallout/tunneler
	name = "tunneler"
	desc = "A preadatory cave lurker, a native species to the area, youre unsure what it could be..."
	icon_state = "tunneler"
	speak = list("eeeeeeeeeeeeeeeeee","ooooooooooooooooo","ssssssssssssssssssssss")
	speak_emote = list("projects")
	emote_hear = list("screeches")
	emote_see = list("flomps")
	attack_verb_continuous = "harms"
	attack_verb_simple = "harm"
	speak_chance = 80
	turns_per_move = 3
	butcher_results = list(/obj/item/fallout/hide/tunneler = 1, /obj/item/fallout/carcass/large/tunneller = 1)//tunneler meat, tunneler hide
	attack_sound = 'sound/weapons/slash.ogg'
	health = 300
	maxHealth = 300
	melee_damage_lower = 30
	melee_damage_upper = 40
	speed = 1
	food_type = list(/obj/item/reagent_containers/food/snacks/grown/fallout/blight)
	tame_chance = 5
	bonus_tame_chance = 5
	rideable = TRUE
	offsetx = 2
	offsety = 10

//yaoguai

/mob/living/simple_animal/hostile/fallout/yaoguai
	name = "yao guai"
	desc = "A massive mutated bear wolf, monster, fuck, you better get running boy."
	icon = 'fallout/icons/mob/32x64.dmi'
	icon_state = "yaoguai"
	gender = MALE
	speak = list("ROARRRRRR","GRRRRRRRRR","RWAAAAAAAAA")
	speak_emote = list("growls")
	emote_hear = list("grunts")
	emote_see = list("scratches")
	attack_verb_continuous = "mauls"
	attack_verb_simple = "maul"
	speak_chance = 40
	turns_per_move = 10
	butcher_results = list(/obj/item/fallout/hide/yaoguai = 1, /obj/item/fallout/carcass/large/yaoguai/front = 1, /obj/item/fallout/carcass/large/yaoguai/back = 1)//yaoguai hide, yaoguai meat
	attack_sound = 'fallout/sound/f13weapons/meleesounds/slam.ogg'
	health = 500
	maxHealth = 500
	melee_damage_lower = 50
	melee_damage_upper = 60
	speed = 4
	food_type = list(/obj/item/reagent_containers/food/snacks/meat/slab/human)
	tame_chance = 5
	bonus_tame_chance = 2
	rideable = TRUE
	largeasslad = TRUE
	offsetx = 2
	offsety = 10

//hellpig - pig from hell, very good mount if you have 100 human flesh - prolly gonna be ooooh wee mojave sun sekrit mount wowza

/mob/living/simple_animal/hostile/fallout/hellpig
	name = "hellpig"
	desc = "A massive mutated pig, wild, deadly start praying boy."
	icon = 'fallout/icons/mob/64x64.dmi'
	icon_state = "hellpig"
	gender = MALE
	speak = list("EEEEEEEEEEEE","RWOOIIIIIIIIIINK","SQUEEEEEEEEEEE")
	speak_emote = list("honks")
	emote_hear = list("screech")
	emote_see = list("stomps")
	attack_verb_continuous = "chomps"
	attack_verb_simple = "chomp"
	speak_chance = 40
	turns_per_move = 3
	butcher_results = list(/obj/item/fallout/hide/large/hellpig = 1, /obj/item/fallout/carcass/large/hellpig/front = 1, /obj/item/fallout/carcass/large/hellpig/back = 1, /obj/item/fallout/carcass/large/hellpig/leg = 4)//hellpig hide, hellpig meat, hellpig tusks
	attack_sound = 'fallout/sound/f13weapons/meleesounds/slam.ogg'
	health = 600
	maxHealth = 600
	melee_damage_lower = 40
	melee_damage_upper = 60
	speed = 2
	food_type = list(/obj/item/reagent_containers/food/snacks/meat/slab/human)
	tame_chance = 1
	bonus_tame_chance = 1
	rideable = TRUE
	largeasslad = TRUE
	status_flags = null
	offsetx = 2
	offsety = 10
