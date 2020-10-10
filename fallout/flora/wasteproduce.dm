/////////////////////////////////////////////////////////////
//////////////////////// FRUIT //////////////////////////////
/////////////////////////////////////////////////////////////

///////////////////// BARREL CACTUS /////////////////////////

/obj/item/seeds/fallout/barrelcactus
	name = "barrel cactus seeds"
	desc = "These seeds grow into a barrel cactus."
	species = "cactus2"
	growing_color =  "#a6b115"
	plantname = "Barrel Cactus"
	harvest_icon = 1
	genes = list(/datum/plant_gene/trait/repeated_harvest)
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/barrelcactus
	mutatelist = list(/obj/item/seeds/fallout/pricklypear)
	lifespan = 60
	endurance = 20
	yield = 2
	growthstages = 4
	production = 5
	maturation = 5
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/barrelcactus
	seed = /obj/item/seeds/fallout/barrelcactus
	name = "barrel cactus fruit"
	desc = "Barrel cactus fruit are found on spherical barrel cacti and are both nutritious and highly toxic."
	bitesize_mod = 2
	foodtype = FRUIT | TOXIC
	icon_state = "barrelcactus"
	filling_color = "#a6b115"
	tastes = list("sourness"= 10, "burning"= 1)

///////////////////// MUTFRUIT /////////////////////////

/obj/item/seeds/fallout/mutfruit
	name = "mutfruit seeds"
	desc = "These seeds grow into a mutfruit sapling."
	species = "bush"
	growing_color =  "#59496d"
	plantname = "Mutfruit Sapling"
	harvest_icon = 1
	genes = list(/datum/plant_gene/trait/repeated_harvest, /datum/plant_gene/trait/squash)
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/mutfruit
	mutatelist = list(/obj/item/seeds/fallout/cmutfruit)
	lifespan = 30
	endurance = 20
	yield = 3
	growthstages = 4
	production = 5
	maturation = 5
	//reagents_add =

/obj/item/reagent_containers/food/snacks/grown/fallout/mutfruit
	seed = /obj/item/seeds/fallout/mutfruit
	name = "mutfruit"
	desc = "Mutfruit provides both hydration and sustenance, but the mutated plant also carries small amounts of radiation."
	bitesize_mod = 2
	foodtype = FRUIT
	icon_state = "mutfruit"
	filling_color = "#5f035f"
	tastes = list("warmth"= 5, "sweetness"= 5)

//CRUNCHY MUTFRUITx

/obj/item/seeds/fallout/cmutfruit
	name = "crunchy mutfruit husks"
	desc = "These husks grow crunchy mutfruits from the ground."
	species = "vines"
	growing_color =  "#da9249"
	plantname = "Crunchy Mutfruits"
	harvest_icon = 1
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/cmutfruit
	mutatelist = list()
	lifespan = 80
	endurance = 60
	yield = 3
	growthstages = 3
	production = 1
	maturation = 6
	//reagents_add =

/obj/item/reagent_containers/food/snacks/grown/fallout/cmutfruit
	seed = /obj/item/seeds/fallout/cmutfruit
	name = "crunchy mutfruit"
	desc = "A special kind of mutfruit species, grown in the ground and significantly sweeter and crunchier than normal."
	foodtype = FRUIT
	bitesize_mod = 2
	icon_state = "cmutfruit"
	filling_color = "#7c3e04"
	tastes = list("crunchiness"= 5, "apples?..."= 1)

//APPLEx

/obj/item/seeds/fallout/apple
	name = "apple seeds"
	desc = "Some mutated apple shrub seeds."
	species = "tree"
	growing_color =  "#9b3434"
	plantname = "Apple Shrub"
	harvest_icon = 1
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/apple
	mutatelist = list(/obj/item/seeds/fallout/cmutfruit)
	lifespan = 100
	endurance = 30
	yield = 5
	growthstages = 5
	production = 6
	maturation = 10
	//reagents_add =

/obj/item/reagent_containers/food/snacks/grown/fallout/apple
	seed = /obj/item/seeds/fallout/apple
	name = "apple"
	desc = "A radiation proofed dark red apple."
	bitesize_mod = 1
	foodtype = FRUIT
	icon_state = "apple"
	filling_color = "#9b7470"
	tastes = list("apple"= 1)

///////////////////// PRICKLY PEAR /////////////////////////

/obj/item/seeds/fallout/pricklypear
	name = "prickly pear seeds"
	desc = "These seeds grow into a prickly pear cactus."
	species = "cactus"
	growing_color =  "#8a0483"
	plantname = "Prickly Pear Cactus"
	harvest_icon = 1
	genes = list(/datum/plant_gene/trait/repeated_harvest,/datum/plant_gene/trait/stinging) //could be a bad idea idk
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/pricklypear
	mutatelist = list(/obj/item/seeds/fallout/barrelcactus)
	lifespan = 60
	endurance = 20
	yield = 2
	growthstages = 4
	production = 4
	maturation = 5
	//reagents_add =

/obj/item/reagent_containers/food/snacks/grown/fallout/pricklypear
	seed = /obj/item/seeds/fallout/pricklypear
	name = "prickly pear fruit"
	desc = "Grown on the prickly pear cactus, these plants bear high nutrition yet are covered in menacing spikes."
	icon_state = "prickly"
	filling_color = "#8a0483"
	foodtype = FRUIT
	bitesize_mod = 2
	tastes = list("sweetness"= 1)

/obj/item/reagent_containers/food/snacks/grown/fallout/pricklypear/pickup(mob/living/user)
	..()
	if(!iscarbon(user))
		return FALSE
	var/mob/living/carbon/C = user
	if(C.gloves)
		return FALSE
	if(HAS_TRAIT(C, TRAIT_PIERCEIMMUNE))
		return FALSE
	var/hit_zone = (C.held_index_to_dir(C.active_hand_index) == "l"? "l_":"r_") + "arm"
	var/obj/item/bodypart/affecting = C.get_bodypart(hit_zone)
	if(affecting)
		if(affecting.receive_damage(brute = 10))
			C.update_damage_overlays()
	to_chat(C, "<span class='userdanger'>The spines pierce your bare hand!</span>")
	return TRUE

///////////////////// PUNGA /////////////////////////

/obj/item/seeds/fallout/punga
	name = "punga pits"
	desc = "These small black pits grow into a punga bush"
	species = "bush"
	growing_color =  "#695d19"
	plantname = "Punga Bush"
	harvest_icon = 1
	genes = list(/datum/plant_gene/trait/plant_type/fungal_metabolism, /datum/plant_gene/trait/repeated_harvest, /datum/plant_gene/trait/squash)
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/pungafruit
	lifespan = 80
	endurance = 30
	maturation = 15
	production = 1
	yield = 3
	growthstages = 4
	//reagents_add =

/obj/item/reagent_containers/food/snacks/grown/fallout/pungafruit
	seed = /obj/item/seeds/fallout/punga
	name = "pungafruit"
	desc = "A large fleshy fruit with a yellowish-brown, thick skin. Due to growing in radioactive environments it purges radiation and toxins from the body."
	icon_state = "punga"
	bitesize_mod = 2
	foodtype = FRUIT | TOXIC
	filling_color = "#695d19"
	tastes = list("sourness"= 6, "cleansing"= 1)

//refined punga

/obj/item/seeds/fallout/geigpunga
	name = "geiger punga pits"
	desc = "These small glowing green pits grow into a punga bush"
	species = "bush"
	growing_color =  "#55ff06"
	plantname = "Geigerpunga Bush"
	harvest_icon = 1
	genes = list(/datum/plant_gene/trait/plant_type/fungal_metabolism, /datum/plant_gene/trait/repeated_harvest, /datum/plant_gene/trait/squash)
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/geigpungafruit
	lifespan = 100
	endurance = 20
	maturation = 8
	instability = 100
	production = 4
	yield = 2
	growthstages = 4
	//reagents_add =

/obj/item/reagent_containers/food/snacks/grown/fallout/geigpungafruit
	seed = /obj/item/seeds/fallout/geigpunga
	name = "geiger pungafruit"
	desc = "A mutated pung afruit, glowing green and ever shifting."
	icon_state = "geigpunga"
	bitesize_mod = 2
	foodtype = FRUIT | TOXIC
	filling_color = "#55ff06"
	tastes = list("acid"= 6, "warmth"= 5, "cleansing"= 1)

///////////////////// SNAPTAIL /////////////////////////x

/obj/item/seeds/fallout/snaptail
	name = "snaptail grains"
	desc = "These waxy grains grow into the sugary snaptail plant."
	species = "stalk"
	growing_color =  "#bda75f"
	wholeiconcolor = TRUE
	plantname = "Snaptail Reeds"
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/snaptail
	lifespan = 40
	endurance = 50
	yield = 5
	growthstages = 5
	production = 2
	maturation = 8
	//reagents_add =

/obj/item/reagent_containers/food/snacks/grown/fallout/snaptail
	seed = /obj/item/seeds/fallout/snaptail
	name = "snaptail"
	desc = "A post-apocalyptic mutated sugarcane variant."
	icon_state = "snaptail"
	bitesize_mod = 1
	foodtype = SUGAR | GROSS
	filling_color = "#caa3a3"
	tastes = list("sugar"= 5, "reed"= 5)

///////////////////// TARBERRY /////////////////////////x

/obj/item/seeds/fallout/tarberry
	name = "tarberry seeds"
	desc = "These seeds grow into a tarberry bush."
	species = "vines"
	growing_color =  "#2f2525ff"
	plantname = "Tarberry Bush"
	harvest_icon = 1
	genes = list(/datum/plant_gene/trait/squash)
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/tarberry
	genes = list(/datum/plant_gene/trait/repeated_harvest)
	mutatelist = list(/obj/item/seeds/fallout/blackberry)
	lifespan = 30
	endurance = 30
	yield = 8
	growthstages = 3
	production = 5
	maturation = 2
	//reagents_add =

/obj/item/reagent_containers/food/snacks/grown/fallout/tarberry
	seed = /obj/item/seeds/fallout/tarberry
	name = "tarberry"
	desc = "A dark and sticky berry, found in cold and damp environments."
	bitesize_mod = 1
	foodtype = FRUIT | GROSS
	icon_state = "tarberry"
	filling_color = "#2f2525ff"
	tastes = list("oil"= 5, "juice"= 1)

//BLACKBERRYx

/obj/item/seeds/fallout/blackberry
	name = "blackberry seeds"
	desc = "These seeds grow into a mutated blackberry bush."
	species = "bush"
	growing_color =  "#351b3d"
	plantname = "Blackberry Bush"
	harvest_icon = 1
	genes = list(/datum/plant_gene/trait/squash)
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/blackberry
	genes = list(/datum/plant_gene/trait/repeated_harvest)
	mutatelist = list(/obj/item/seeds/fallout/radberry, /obj/item/seeds/fallout/tarberry)
	lifespan = 40
	endurance = 20
	yield = 5
	growthstages = 4
	production = 3
	maturation = 4
	//reagents_add =

/obj/item/reagent_containers/food/snacks/grown/fallout/blackberry
	seed = /obj/item/seeds/fallout/blackberry
	name = "blackberry"
	desc = "A radiation-induced mutated version of the pre-war blackberry."
	bitesize_mod = 1
	foodtype = FRUIT
	icon_state = "blackberry"
	filling_color = "#15172a"
	tastes = list("berries"= 5, "juice"= 1)

//RADBERRYx

/obj/item/seeds/fallout/radberry
	name = "radberry pips"
	desc = "The seeds grow into the radioactive radberry."
	species = "bush2"
	growing_color =  "#00ff2a"
	plantname = "Radberry Shrub"
	harvest_icon = 1
	genes = list(/datum/plant_gene/trait/squash)
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/radberry
	lifespan = 10
	endurance = 20
	instability = 100
	yield = 3
	growthstages = 3
	production = 1
	maturation = 6
	//reagents_add =

/obj/item/reagent_containers/food/snacks/grown/fallout/radberry
	seed = /obj/item/seeds/fallout/radberry
	name = "tarberry"
	desc = "A highly radioactive berry."
	icon_state = "radberry"
	bitesize_mod = 1
	foodtype = FRUIT | GROSS
	filling_color = "#00ff2a"
	tastes = list("metal"= 5, "sweetness"= 1)

///////////////////// YUCCA /////////////////////////

/obj/item/seeds/fallout/yucca
	name = "yucca seeds"
	desc = "These seeds grow into an yucca plant."
	species = "yucca"
	plantname = "yucca plant"
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/yucca
	lifespan = 50
	endurance = 30
	yield = 3
	growthstages = 4
	production = 2
	maturation = 4
	genes = list(/datum/plant_gene/trait/repeated_harvest)
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/yucca
	seed = /obj/item/seeds/fallout/yucca
	name = "yucca fruit"
	desc = "The fleshy banana like fruit. It smells and tastes similar to a sweet potato."
	icon_state = "yucca"
	bitesize_mod = 4
	foodtype = FRUIT
	filling_color = "#b4a031ff"
	tastes = list("sweet potato"= 5)

/////////////////////////////////////////////////////////////
/////////////////////  VEGETABLES ///////////////////////////
/////////////////////////////////////////////////////////////

//////////////////////// TATO /////////////////////////////

/obj/item/seeds/fallout/tato
	name = "tato sprouts"
	desc = "These tato sprouts replicate the disgusting tato plant."
	species = "bush2"
	growing_color =  "#703e2e"
	plantname = "Tato Plant"
	harvest_icon = 1
	genes = list(/datum/plant_gene/trait/repeated_harvest)
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/tato
	mutatelist = list(/obj/item/seeds/fallout/tomato, /obj/item/seeds/fallout/potato)
	lifespan = 40
	endurance = 80
	yield = 2
	growthstages = 3
	production = 2
	maturation = 4
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/tato
	seed = /obj/item/seeds/fallout/tato
	name = "tato"
	desc = "A raw tato, an awful tasting combination of the pre-war tomato and potato plant."
	bitesize_mod = 3
	foodtype = VEGETABLES | GROSS
	icon_state = "tato"
	filling_color = "#4b2727"
	tastes = list("raw eggs"= 5)

//POTATO

/obj/item/seeds/fallout/potato
	name = "potato sprouts"
	desc = "Pre-war potato sprouts, grow into clusters of potatos in the soil, highly resistant."
	species = "root"
	plantname = "Potatos"
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/potato
	mutatelist = list(/obj/item/seeds/fallout/tato)
	lifespan = 30
	endurance = 90
	yield = 4
	growthstages = 3
	production = 1
	maturation = 6
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/potato
	seed = /obj/item/seeds/fallout/potato
	name = "potato"
	desc = "A starchy resilient tubor, a classic staple food, radiation proofed and amazing cooked."
	bitesize_mod = 2
	foodtype = VEGETABLES | GROSS
	icon_state = "potato"
	filling_color = "#ada876"
	tastes = list("raw potato"= 5)

//TOMATO

/obj/item/seeds/fallout/tomato
	name = "tomato seeds"
	desc = "Pre-war tomato seeds, radiation proofed and just as juicy."
	species = "bush"
	growing_color =  "#a7200e"
	plantname = "Tomato Plant"
	harvest_icon = 1
	genes = list(/datum/plant_gene/trait/squash, /datum/plant_gene/trait/repeated_harvest)
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/tomato
	mutatelist = list(/obj/item/seeds/fallout/tato, /datum/plant_gene/trait/repeated_harvest)
	lifespan = 30
	endurance = 30
	yield = 3
	growthstages = 4
	production = 3
	maturation = 3
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/tomato
	seed = /obj/item/seeds/fallout/tomato
	name = "tomato"
	desc = "A juicy red, radiation proofed tomato, a unique plant to survive in the wastes."
	bitesize_mod = 2
	foodtype = FRUIT | VEGETABLES
	icon_state = "tomato"
	filling_color = "#8d1d1d"
	tastes = list("tomato"= 5)

////////////////////// JALEPENO /////////////////////////////

/obj/item/seeds/fallout/jalepeno
	name = "jalepeno seeds"
	desc = "These seeds grow into long spicy desert-proof peppers."
	species = "bush"
	growing_color =  "#233b29"
	plantname = "Jalepeno Plant"
	harvest_icon = 1
	genes = list(/datum/plant_gene/trait/repeated_harvest)
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/jalepeno
	mutatelist = list(/obj/item/seeds/fallout/radpepper)
	lifespan = 40
	endurance = 60
	yield = 5
	growthstages = 4
	production = 2
	maturation = 10
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/jalepeno
	seed = /obj/item/seeds/fallout/jalepeno
	name = "jalepeno"
	desc = "A spicy jalepeno pepper, climatised to the wasteland, tasty and spicy."
	bitesize_mod = 1
	foodtype = VEGETABLES
	icon_state = "jalepeno"
	filling_color = "#233b29"
	tastes = list("spicy"= 5)

//RADPEPPER

/obj/item/seeds/fallout/radpepper
	name = "radpepper seeds"
	desc = "The seeds grow into an even spicier and radioactive jalepeno variant."
	species = "bush"
	growing_color =  "#fffb02"
	plantname = "Radpepper Bush"
	harvest_icon = 1
	genes = list(/datum/plant_gene/trait/squash, /datum/plant_gene/trait/repeated_harvest)
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/radpepper
	mutatelist = list(/obj/item/seeds/fallout/jalepeno)
	lifespan = 10
	instability = 100
	endurance = 50
	yield = 1
	growthstages = 4
	production = 1
	maturation = 1
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/radpepper
	seed = /obj/item/seeds/fallout/radpepper
	name = "radpepper"
	desc = "A mutated jalepeno variant, condensed spiciness create an extremely powerful and somewhat painful taste."
	bitesize_mod = 1
	foodtype = VEGETABLES | TOXIC
	icon_state = "radpepper"
	filling_color = "#837e3c"
	tastes = list("death"= 5, "pain"= 5)

//////////////////////// ONION //////////////////////////////

/obj/item/seeds/fallout/onion
	name = "onion sprouts"
	desc = "The sprouts grow into a hardy onion plant."
	species = "root"
	plantname = "Onions"
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/onion
	mutatelist = list(/obj/item/seeds/fallout/garlic)
	lifespan = 20
	endurance = 70
	yield = 3
	growthstages = 3
	production = 5
	maturation = 6
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/onion
	seed = /obj/item/seeds/fallout/onion
	name = "onion"
	desc = "A hardy and aromatic root vegetable, a staple ingredient in cooking good food."
	bitesize_mod = 4
	foodtype = VEGETABLES | GROSS
	icon_state = "onion"
	filling_color = "#5d5151"
	tastes = list("sour"= 5)

//GARLIC

/obj/item/seeds/fallout/garlic
	name = "garlic seeds"
	desc = "These garlic seeds grow into a condensed onion variant."
	species = "root"
	plantname = "Garlic Plant"
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/garlic
	mutatelist = list(/obj/item/seeds/fallout/onion)
	maturation = 10
	production = 1
	yield = 5
	instability = 15
	growthstages = 3
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/garlic
	seed = /obj/item/seeds/fallout/garlic
	name = "garlic"
	desc = "A potent and tasty onion variant, also works as a medicinal root."
	bitesize_mod = 1
	foodtype = VEGETABLES
	icon_state = "garlic"
	filling_color = "#707070"
	tastes = list("garlic"= 5)

//////////////////////// XANDER /////////////////////////////

/obj/item/seeds/fallout/xander
	name = "xander roots"
	desc = "These xander roots grow in size, producing denser and healing Xander roots."
	species = "root"
	plantname = "Xander Roots"
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/xander
	maturation = 10
	production = 1
	yield = 5
	instability = 15
	growthstages = 3
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/xander
	seed = /obj/item/seeds/fallout/xander
	name = "xander root"
	desc = "A bitter, turnip like root, known for its toxin healing and fulfilment."
	bitesize_mod = 4
	foodtype = VEGETABLES | GROSS
	icon_state = "xander"
	filling_color = "#2f2424"
	tastes = list("bitterness"= 5)


//////////////////////// CARROT /////////////////////////////

/obj/item/seeds/fallout/carrot
	name = "carrot seeds"
	desc = "Some hardy mutated carrot seeds."
	species = "root"
	plantname = "Carrots"
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/carrot
	maturation = 10
	production = 1
	yield = 5
	instability = 15
	growthstages = 3
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/carrot
	seed = /obj/item/seeds/fallout/carrot
	name = "carrot"
	desc = "A root vegetable, useful for its mildsweetness and eye healing properties."
	bitesize_mod = 2
	foodtype = VEGETABLES
	icon_state = "carrot"
	filling_color = "#815c1f"
	tastes = list("sweetness"= 1)


//////////////////////// RAZORGRAIN /////////////////////////

/obj/item/seeds/fallout/razorgrain
	name = "razorgrain grains"
	desc = "Some hardy mutated wheat grains, a staple plant in the wasteland."
	species = "stalk"
	growing_color = "#644e2c"
	wholeiconcolor = TRUE
	plantname = "Razorgrain Stalks"
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/razorgrain
	yield = 4
	production = 1
	maturation = 5
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/razorgrain
	seed = /obj/item/seeds/fallout/razorgrain
	name = "razorgrain"
	desc = "A hardy grain, known for its materials properties and starchy powder, a backbone of the wasteland."
	bitesize_mod = 1
	foodtype = GRAIN | GROSS
	icon_state = "razorgrain"
	filling_color = "#8f905b"
	tastes = list("chalky grain"= 5)


//////////////////////// BAIFAN /////////////////////////////

/obj/item/seeds/fallout/baifan
	name = "baifan grains"
	desc = "Some hardy mutated rice grains, a staple plant in the wasteland."
	species = "stalk"
	growing_color = "#688265"
	wholeiconcolor = TRUE
	plantname = "Baifan Stalks"
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/baifan
	yield = 4
	production = 1
	maturation = 5
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/baifan
	seed = /obj/item/seeds/fallout/baifan
	name = "baifan"
	desc = "A hardy grain, grows best in warm damp environments, yields a rice-like grain."
	bitesize_mod = 1
	foodtype = GRAIN | GROSS
	icon_state = "baifan"
	filling_color = "#505749"
	tastes = list("chalky grain"= 5, "raw rice"= 1)


/////////////////////// CABBAGE /////////////////////////////

/obj/item/seeds/fallout/cabbage
	name = "cabbage seeds"
	desc = "Some hardy cabbage seeds."
	species = "vines"
	growing_color =  "#334632"
	plantname = "Cabbage Plant"
	harvest_icon = 1
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/cabbage
	maturation = 10
	production = 1
	yield = 5
	instability = 15
	growthstages = 3
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/cabbage
	seed = /obj/item/seeds/fallout/cabbage
	name = "cabbage"
	desc = "A resilient leaf plant, only green thing out here."
	bitesize_mod = 4
	foodtype = VEGETABLES
	icon_state = "cabbage"
	filling_color = "#2d382a"
	tastes = list("cabbage"= 5)


//////////////////////// PINYON /////////////////////////////

/obj/item/seeds/fallout/pinyon
	name = "pinyon nuts"
	desc = "Some pinyon nuts, grows into a pinyon pine"
	species = "tree"
	growing_color =  "#7b7c68"
	plantname = "Pinyon Pine"
	harvest_icon = 1
	genes = list(/datum/plant_gene/trait/repeated_harvest)
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/pinyon
	lifespan = 60
	endurance = 20
	yield = 2
	growthstages = 5
	production = 5
	maturation = 5
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/pinyon
	seed = /obj/item/seeds/fallout/pinyon
	name = "pinyon nuts"
	desc = "Sour pinyon nuts, good if youre starving and contain many nutrients."
	bitesize_mod = VEGETABLES
	foodtype = 2
	icon_state = "pinyon"
	filling_color = "#7b7c68"
	tastes = list("nutty"= 4, "sourness"= 1)


///////////////////////// MESQUITE //////////////////////////

/obj/item/seeds/fallout/mesquite
	name = "mesquite seeds"
	desc = "Some honey mesquite seeds."
	species = "bush"
	growing_color =  "#525011"
	plantname = "Mesquite Plant"
	harvest_icon = 1
	genes = list(/datum/plant_gene/trait/repeated_harvest)
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/mesquite
	lifespan = 80
	endurance = 60
	yield = 3
	growthstages = 4
	production = 1
	maturation = 6
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/mesquite
	seed = /obj/item/seeds/fallout/mesquite
	name = "mesquite"
	desc = "Sweet medicinal honey mesquite pods, had a multitude of purposes."
	bitesize_mod = 2
	foodtype = VEGETABLES
	icon_state = "mesquite"
	filling_color = "#223a24"
	tastes = list("sour"= 5, "sweet"= 5)


/////////////////////// BUFFALO /////////////////////////////

/obj/item/seeds/fallout/buffalo
	name = "buffalo seeds"
	desc = "Some buffalo gourd seeds."
	species = "vines"
	growing_color =  "#cadca3"
	plantname = "Buffalo Vines"
	harvest_icon = 1
	genes = list(/datum/plant_gene/trait/squash)
	product = (/obj/item/reagent_containers/food/snacks/grown/fallout/)
	lifespan = 60
	endurance = 20
	yield = 8
	growthstages = 3
	production = 10
	maturation = 10
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/buffalo
	seed = /obj/item/seeds/fallout/buffalo
	name = "buffalo"
	desc = "A large buffalo gourd, a decent ingredient, but nasty when raw."
	bitesize_mod = 6
	foodtype = VEGETABLES | GROSS
	icon_state = "buffalo"
	filling_color = "#2b3325"
	tastes = list("wood"= 5)


//////////////////////// MAIZE //////////////////////////////

/obj/item/seeds/fallout/maize
	name = "maize seeds"
	desc = "A hardy packet of a post-war corn-like crop."
	species = "corn"
	plantname = "Maize Stalks"
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/maize
	yield = 4
	production = 1
	growthstages = 3
	maturation = 5
	//reagents_add =

/obj/item/reagent_containers/food/snacks/grown/fallout/maize
	seed = /obj/item/seeds/fallout/maize
	name = "maize"
	desc = "A hardy maize crop, known for its extensive use in the west."
	bitesize_mod = 4
	foodtype = VEGETABLES | GRAIN
	icon_state = "maize"
	filling_color = "#bbb81c"
	tastes = list("corn"= 5)


/////////////////////////////////////////////////////////////
///////////////////// FLOWER/HERBS //////////////////////////
/////////////////////////////////////////////////////////////

///////////////////////// ASH ROSE //////////////////////////

/obj/item/seeds/fallout/ashrose
	name = "ash rose seeds"
	desc = "Some ash rose seeds, a potent flower known for expelling radiation and toxins."
	species = "flower2"
	growing_color =  "#612a20"
	plantname = "Ash Roses"
	harvest_icon = 1
	genes = list(/datum/plant_gene/trait/repeated_harvest)
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/ashrose
	lifespan = 25
	endurance = 10
	maturation = 6
	production = 3
	yield = 5
	instability = 25
	growthstages = 3
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/ashrose
	seed = /obj/item/seeds/fallout/ashrose
	name = "ash rose"
	desc = "A potent radiation and toxin healing flower."
	bitesize_mod = 1
	foodtype = GROSS
	icon_state = "ashrose"
	filling_color = "#411c19"
	tastes = list("sourness"= 5)

//radrose

/obj/item/seeds/fallout/radrose
	name = "rad rose seeds"
	desc = "Some rad rose seeds, an extremely potent and radioactive version of the ash rose flower."
	species = "flower2"
	growing_color =  "#18f2fa"
	plantname = "Rad Roses"
	harvest_icon = 1
	genes = list(/datum/plant_gene/trait/repeated_harvest)
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/radrose
	lifespan = 25
	endurance = 10
	maturation = 6
	production = 3
	yield = 5
	instability = 100
	growthstages = 3
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/radrose
	seed = /obj/item/seeds/fallout/radrose
	name = "rad rose"
	desc = "An extremely potent and radioactive version of the ash rose flower."
	bitesize_mod = 1
	foodtype = GROSS | TOXIC
	icon_state = "radrose"
	filling_color = "#579797"
	tastes = list("warmth"= 5, "sourness"= 5, "pain"= 5)

/////////////////////////// SOOT ////////////////////////////

/obj/item/seeds/fallout/soot
	name = "soot seeds"
	desc = "Some soot seeds, a poisonous flower."
	species = "flower"
	growing_color =  "#7c2292"
	plantname = "Soot Flowers"
	harvest_icon = 1
	genes = list(/datum/plant_gene/trait/repeated_harvest)
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/soot
	lifespan = 25
	endurance = 10
	maturation = 6
	production = 3
	yield = 5
	instability = 25
	growthstages = 3
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/soot
	seed = /obj/item/seeds/fallout/soot
	name = "soot flower"
	desc = "A poisonous soot flower."
	bitesize_mod = 1
	foodtype = GROSS | TOXIC
	icon_state = "soot"
	filling_color = "#462050"
	tastes = list("bitterness"= 5)

//toxicsoot

/obj/item/seeds/fallout/toxicsoot
	name = "toxic soot seeds"
	desc = "Some mutated soot seeds, grows into an extremely poisonous flower"
	species = "flower"
	growing_color =  "#229235"
	plantname = "Toxic Soot Flowers"
	harvest_icon = 1
	genes = list(/datum/plant_gene/trait/repeated_harvest)
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/toxicsoot
	lifespan = 25
	endurance = 10
	maturation = 6
	production = 3
	yield = 5
	instability = 25
	growthstages = 3
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/toxicsoot
	seed = /obj/item/seeds/fallout/toxicsoot
	name = "toxic soot flower"
	desc = "An extremely poisonous soot flower."
	bitesize_mod = 1
	foodtype = GROSS | TOXIC
	icon_state = "toxsoot"
	filling_color = "#34773f"
	tastes = list("bitterness"= 10)

////////////////////////// DATURA ///////////////////////////

/obj/item/seeds/fallout/datura
	name = "datura seeds"
	desc = "Some datura seeds, a native flower that causes the user to hallucinate."
	species = "flower2"
	growing_color =  "#dddddd"
	plantname = "Datura Flowers"
	harvest_icon = 1
	genes = list(/datum/plant_gene/trait/repeated_harvest)
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/datura
	lifespan = 25
	endurance = 10
	maturation = 6
	production = 3
	yield = 5
	instability = 25
	growthstages = 3
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/datura
	seed = /obj/item/seeds/fallout/datura
	name = "datura flower"
	desc = "A native flower that causes the user to hallucinate."
	bitesize_mod = 1
	foodtype = GROSS
	icon_state = "datura"
	filling_color = "#a7a7a7"
	tastes = list("bitterness"= 5)

//radtura

/obj/item/seeds/fallout/radtura
	name = "radtura seeds"
	desc = "Some radtura seeds, an extremely potent and mindbreaking species of datura."
	species = "flower2"
	growing_color =  "#e8bf28"
	plantname = "Radtura Flowers"
	harvest_icon = 1
	genes = list(/datum/plant_gene/trait/repeated_harvest)
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/radtura
	lifespan = 25
	endurance = 10
	maturation = 6
	production = 3
	yield = 5
	instability = 25
	growthstages = 3
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/radtura
	seed = /obj/item/seeds/fallout/radtura
	name = "radtura flower"
	desc = "An extremely potent and mindbreaking species of datura."
	bitesize_mod = 1
	foodtype = GROSS
	icon_state = "radtura"
	filling_color = "#a2a36c"
	tastes = list("bitterness"= 5, "warmth"= 5)

////////////////////////// COTTON ///////////////////////////

/obj/item/seeds/cotton/fallout
	name = "cotton seeds"
	desc = "Some seeds that'll grow into a cotton plant. Wastelanders make good free labor if neccesary."
	icon = 'fallout/icons/hydroponics/seeds.dmi'
	icon_state = "seed"
	growing_icon = 'icons/obj/hydroponics/growing.dmi' //placeholder
	species = "cotton"
	plantname = "Cotton Plant"
	genes = list(/datum/plant_gene/trait/repeated_harvest)
	product = /obj/item/grown/cotton/fallout
	lifespan = 35
	endurance = 25
	maturation = 15
	production = 1
	potency = 50
	yield = 2
	potency = 50
	instability = 15
	growthstages = 3
	//reagents_add =


/obj/item/grown/cotton/fallout
	seed = /obj/item/seeds/cotton/fallout
	name = "cotton"
	desc = "A fluffy bundle of cotton."
	icon_state = "cotton"
	cotton_type = /obj/item/stack/sheet/cotton/fallout
	cotton_name = "raw cotton"

////////////////////////// COYOTE ///////////////////////////

/obj/item/seeds/fallout/coyote
	name = "coyote tobacco stems"
	desc = "Some seeds that grow into a potent native tobacco plant, it has many uses."
	species = "root"
	plantname = "Coyote Tobacco"
	genes = list(/datum/plant_gene/trait/repeated_harvest)
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/coyote
	lifespan = 20
	maturation = 5
	production = 5
	yield = 10
	growthstages = 3
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/coyote
	seed = /obj/item/seeds/fallout/coyote
	name = "coyote"
	desc = "A potent native tobacco plant, it has many uses."
	bitesize_mod = 1
	foodtype = GROSS
	icon_state = "coyote"
	filling_color = "#1d3821"

////////////////////////// ASTER ////////////////////////////

/obj/item/seeds/fallout/aster
	name = "aster seeds"
	desc = "Some aster seeds."
	species = "flower"
	growing_color =  "#3f4c72"
	plantname = "Aster Flowers"
	harvest_icon = 1
	genes = list(/datum/plant_gene/trait/repeated_harvest)
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/aster
	lifespan = 25
	endurance = 10
	maturation = 6
	production = 3
	yield = 7
	instability = 25
	growthstages = 3
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/aster
	seed = /obj/item/seeds/fallout/aster
	name = "aster flower"
	desc = "Some tasty aster flowers."
	bitesize_mod = 1
	icon_state = "aster"
	filling_color = "#1e2b2c"
	tastes = list("salty"= 5, "peppery"= 5)

/////////////////////// ASH BLOSSOM /////////////////////////

/obj/item/seeds/fallout/ashblossom
	name = "ash blossom seeds"
	desc = "These ash blossom seeds grow into the wastelands favourite coffee substitute."
	species = "flower2"
	growing_color =  "#232b44"
	plantname = "Ash Blossoms"
	harvest_icon = 1
	genes = list(/datum/plant_gene/trait/repeated_harvest)
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/ashblossom
	lifespan = 25
	endurance = 10
	maturation = 6
	production = 3
	yield = 5
	instability = 25
	growthstages = 3
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/ashblossom
	seed = /obj/item/seeds/fallout/ashblossom
	name = "ash blossom"
	desc = "A potent coffee like caffeine induced and antiseptic flower."
	bitesize_mod = 1
	foodtype = GROSS
	icon_state = "ashblossom"
	filling_color = "#213436"

///////////////////////// THISTLE ///////////////////////////

/obj/item/seeds/fallout/thistle
	name = "thistle seeds"
	desc = "Some thistle seeds, an invasive mutated and prickly weed."
	species = "vines"
	growing_color =  "#a64e5a"
	plantname = "Thistles"
	harvest_icon = 1
	genes = list(/datum/plant_gene/trait/repeated_harvest,/datum/plant_gene/trait/stinging)
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/thistle
	lifespan = 25
	endurance = 10
	maturation = 6
	production = 3
	yield = 5
	instability = 25
	growthstages = 3
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/thistle
	seed = /obj/item/seeds/fallout/thistle
	name = "thistle"
	desc = "An invasive mutated and prickly weed."
	bitesize_mod = 1
	foodtype = GROSS
	icon_state = "thistle"
	filling_color = "#a64e5a"
	tastes = list("pain"= 5)

/obj/item/reagent_containers/food/snacks/grown/fallout/thistle/pickup(mob/living/user)
	..()
	if(!iscarbon(user))
		return FALSE
	var/mob/living/carbon/C = user
	if(C.gloves)
		return FALSE
	if(HAS_TRAIT(C, TRAIT_PIERCEIMMUNE))
		return FALSE
	var/hit_zone = (C.held_index_to_dir(C.active_hand_index) == "l"? "l_":"r_") + "arm"
	var/obj/item/bodypart/affecting = C.get_bodypart(hit_zone)
	if(affecting)
		if(affecting.receive_damage(burn = 20))
			C.update_damage_overlays()
	to_chat(C, "<span class='userdanger'>The thistles sting your bare hand!</span>")
	return TRUE

////////////////////////// AGAVE ////////////////////////////

/obj/item/seeds/fallout/agave
	name = "agave spines"
	desc = "These seeds grow into the burn healing agave plant."
	species = "cactus2"
	growing_color =  "#37524e"
	plantname = "Agave"
	harvest_icon = 1
	genes = list(/datum/plant_gene/trait/repeated_harvest)
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/agave
	lifespan = 25
	endurance = 10
	maturation = 6
	production = 3
	yield = 5
	instability = 25
	growthstages = 4
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/agave
	seed = /obj/item/seeds/fallout/agave
	name = "agave"
	desc = "A strange kind of fleshy grass often used as a primitive burn medication that rapidly depletes stored nutrients in the body."
	bitesize_mod = 1
	icon_state = "agave"
	filling_color = "#37524e"
	tastes = list("bitterness"= 5)

/////////////////////// BROC FLOWER /////////////////////////

/obj/item/seeds/fallout/brocflower
	name = "broc flower seeds"
	desc = "These seeds grow into broc flowers."
	species = "flower"
	growing_color =  "#88561c"
	plantname = "Broc Flowers"
	harvest_icon = 1
	genes = list(/datum/plant_gene/trait/repeated_harvest)
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/brocflower
	lifespan = 25
	endurance = 10
	maturation = 6
	production = 3
	yield = 5
	instability = 25
	growthstages = 3
	//reagents_add =

/obj/item/reagent_containers/food/snacks/grown/fallout/brocflower
	seed = /obj/item/seeds/fallout/brocflower
	name = "broc flower"
	desc = "This vibrant, orange flower grows on tall stalks in the wasteland and exhibits moderate healing properties."
	bitesize_mod = 1
	icon_state = "brocflower"
	filling_color = "#493d28"
	tastes = list("broc"= 5)

/////////////////////////////////////////////////////////////
//////////////////////// FUNGUS /////////////////////////////
/////////////////////////////////////////////////////////////

//////////////////////// CAVEFUNG ///////////////////////////

/obj/item/seeds/fallout/cavefungus
	name = "cave fungus spores"
	desc = "These spores grow into cave fungi, an edible variety of mushroom with anti-toxic properties."
	species = "mushroom"
	icon_harvest = "mushroom-grow4"
	growing_color =  "#cd6c4b"
	wholeiconcolor = TRUE
	plantname = "Cave Fungus Mushrooms"
	genes = list(/datum/plant_gene/trait/plant_type/fungal_metabolism)
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/cavefungus
	lifespan = 50
	endurance = 10
	maturation = 8
	production = 3
	yield = 6
	growthstages = 4
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/cavefungus
	seed = /obj/item/seeds/fallout/cavefungus
	name = "cave fungus"
	desc = "An edible mushroom, with multiple toxin healing and cooking properties."
	bitesize_mod = 1
	icon_state = "cavefungus"
	filling_color = "#64553b"
	tastes = list("mushroom"= 5)

//GLOWCAVEFUNG

/obj/item/seeds/fallout/glowfungus
	name = "glow fungus spores"
	desc = "These spores grow into glowing cave fungi, an edible variety of mushroom with potent anti-toxic properties."
	species = "mushroom"
	icon_harvest = "mushroom-grow4"
	growing_color =  "#98b752"
	wholeiconcolor = TRUE
	plantname = "Glowfungus Mushrooms"
	genes = list(/datum/plant_gene/trait/plant_type/fungal_metabolism, /datum/plant_gene/trait/glow/falloutgreen)
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/cavefungus
	lifespan = 50
	endurance = 10
	maturation = 8
	production = 3
	yield = 6
	growthstages = 4
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/glowfungus
	seed = /obj/item/seeds/fallout/glowfungus
	name = "glow fungus"
	desc = "A radioactive mushroom, with multiple potent toxin healing and radioactive properties."
	bitesize_mod = 1
	icon_state = "glowfungus"
	foodtype = TOXIC
	filling_color = "#357944"
	tastes = list("mushroom"= 5, "warmth"= 5)

/datum/plant_gene/trait/glow/falloutgreen
	//oh no, now i'm radioactive
	name = "Radioactive Bioluminescence"
	rate = 0.01
	glow_color = "#3eff3e"

//////////////////////// BLIGHT /////////////////////////////

/obj/item/seeds/fallout/blight
	name = "blight spores"
	desc = "These spores grow into the blight mushroom, an potentially edible fungus."
	species = "blight"
	icon_harvest = "blight-grow4"
	plantname = "Blight Fungus"
	genes = list(/datum/plant_gene/trait/plant_type/fungal_metabolism)
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/blight
	lifespan = 50
	endurance = 10
	maturation = 8
	production = 3
	yield = 6
	growthstages = 4
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/blight
	seed = /obj/item/seeds/fallout/blight
	name = "blight"
	desc = "A potentially edible mushroom weed."
	bitesize_mod = 1
	icon_state = "blight"
	foodtype = GROSS | TOXIC
	filling_color = "#575c2a"
	tastes = list("spice"= 5, "gunk"= 5)

////////////////////// BRAIN FUNGUS /////////////////////////

/obj/item/seeds/fallout/brainfung
	name = "brain fungus spores"
	desc = "These spores grow into the brain fungus, a deadly neurotoxic mushroom, that secretes its chemicals if picked up."
	species = "brainfung"
	icon_harvest = "brainfung-grow4"
	plantname = "Brain Fungus"
	genes = list(/datum/plant_gene/trait/plant_type/fungal_metabolism)
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/brainfung
	lifespan = 50
	endurance = 10
	maturation = 8
	production = 3
	yield = 6
	growthstages = 4
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/brainfung
	seed = /obj/item/seeds/fallout/brainfung
	name = "brain fungus"
	desc = "An extremly toxic brain damaging fungus, handle with extreme care."
	bitesize_mod = 1
	foodtype = GROSS | TOXIC
	icon_state = "brainfung"
	filling_color = "#c87070"
	tastes = list("illness"= 5)

/obj/item/reagent_containers/food/snacks/grown/fallout/brainfung/pickup(mob/living/user)
	..()
	if(!iscarbon(user))
		return FALSE
	var/mob/living/carbon/C = user
	if(C.gloves)
		return FALSE
	if(HAS_TRAIT(C, TRAIT_PIERCEIMMUNE))
		return FALSE
	else
		C.adjustOrganLoss(ORGAN_SLOT_BRAIN, 50)
	to_chat(C, "<span class='userdanger'>The brainfungus injects you!</span>")
	return TRUE

//////////////////////// FIRECAP ////////////////////////////

/obj/item/seeds/fallout/firecap
	name = "firecap spores"
	desc = "These spores grow into the firecap mushroom, a burning pest of a plant."
	species = "mushroom"
	icon_harvest = "mushroom-grow4"
	growing_color =  "#eb9320"
	wholeiconcolor = TRUE
	plantname = "Firecap Cluster"
	genes = list(/datum/plant_gene/trait/plant_type/fungal_metabolism)
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/firecap
	lifespan = 50
	endurance = 10
	maturation = 8
	production = 3
	yield = 6
	growthstages = 4
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/firecap
	seed = /obj/item/seeds/fallout/firecap
	name = "firecap"
	desc = "A burning pest of a mushroom, sears the flesh of all that touch or consume it."
	bitesize_mod = 1
	foodtype = TOXIC
	icon_state = "firecap"
	filling_color = "#3f2e0f"
	tastes = list("fire"= 5, "mushroom"= 1)

/obj/item/reagent_containers/food/snacks/grown/fallout/firecap/pickup(mob/living/user)
	..()
	if(!iscarbon(user))
		return FALSE
	var/mob/living/carbon/C = user
	if(C.gloves)
		return FALSE
	if(HAS_TRAIT(C, TRAIT_PIERCEIMMUNE))
		return FALSE
	var/hit_zone = (C.held_index_to_dir(C.active_hand_index) == "l"? "l_":"r_") + "arm"
	var/obj/item/bodypart/affecting = C.get_bodypart(hit_zone)
	if(affecting)
		if(affecting.receive_damage(burn = 50))
			C.update_damage_overlays()
	to_chat(C, "<span class='userdanger'>The thistles sting your bare hand!</span>")
	return TRUE

//////////////////////// GUTSHROOM ////////////////////////////

/obj/item/seeds/fallout/gutshroom
	name = "gutshroom spores"
	desc = "These spores grow into a toxic fungus plant, that cause intense stomach pain."
	species = "longshroom"
	icon_harvest = "longshroom-grow4"
	growing_color =  "#a33b0c"
	wholeiconcolor = TRUE
	plantname = "Gutshroom Cluster"
	genes = list(/datum/plant_gene/trait/plant_type/fungal_metabolism)
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/gutshroom
	lifespan = 50
	endurance = 10
	maturation = 8
	production = 3
	yield = 6
	growthstages = 4
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/gutshroom
	seed = /obj/item/seeds/fallout/gutshroom
	name = "gutshroom"
	desc = "A toxic fungus plant, that causes awful intestine and stomach pain."
	bitesize_mod = 1
	foodtype = GROSS | TOXIC
	icon_state = "gutshroom"
	filling_color = "#38372a"
	tastes = list("pain"= 5)

/obj/item/reagent_containers/food/snacks/grown/fallout/gutshroom/pickup(mob/living/user)
	..()
	if(!iscarbon(user))
		return FALSE
	var/mob/living/carbon/C = user
	if(C.gloves)
		return FALSE
	if(HAS_TRAIT(C, TRAIT_PIERCEIMMUNE))
		return FALSE
	else
		C.adjustOrganLoss(ORGAN_SLOT_STOMACH, 100)
	to_chat(C, "<span class='userdanger'>The gutshroom secretes onto you!</span>")
	return TRUE

//////////////////////// LURE WEED //////////////////////////

/obj/item/seeds/fallout/lureweed
	name = "lureweed spores"
	desc = "These spores grow into the invasive lureweed, pretty bland but filling."
	species = "lureweed"
	icon_harvest = "lureweed-grow4"
	growing_color = "#735d32"
	wholeiconcolor = TRUE
	plantname = "Lureweeds"
	genes = list(/datum/plant_gene/trait/plant_type/fungal_metabolism)
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/lureweed
	lifespan = 50
	endurance = 10
	maturation = 8
	production = 3
	yield = 6
	growthstages = 4
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/lureweed
	seed = /obj/item/seeds/fallout/lureweed
	name = "lureweed"
	desc = "A long and hard, edible and invasive fungus, only really used as food as a last resort."
	bitesize_mod = 8
	icon_state = "lureweed"
	filling_color = "#383322"
	tastes = list("lureweed"= 5)

////////////////////////// NARA /////////////////////////////

/obj/item/seeds/fallout/nara
	name = "nara spores"
	desc = "These spores grow into the nara fungus, part flesh and plant, it contains blood and restorative enzymes."
	species = "longshroom"
	icon_harvest = "longshroom-grow4"
	growing_color =  "#3c729e"
	wholeiconcolor = TRUE
	plantname = "Nara Fungus"
	genes = list(/datum/plant_gene/trait/plant_type/fungal_metabolism)
	product = /obj/item/reagent_containers/food/snacks/grown/fallout/nara
	lifespan = 50
	endurance = 10
	maturation = 8
	production = 3
	yield = 6
	growthstages = 4
	//reagents_add =


/obj/item/reagent_containers/food/snacks/grown/fallout/nara
	seed = /obj/item/seeds/fallout/nara
	name = "nara fungus"
	desc = "Part flesh and plant, this invasive fungus contains blood and restorative enzymes."
	bitesize_mod = 2
	icon_state = "nara"
	filling_color = "#770d0d"
	tastes = list("blood"= 5)
