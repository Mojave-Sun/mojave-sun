#define IS_SHARP_AXE	3
#define STATIC_NUTRIENT_CAPACITY_FALLOUT 50

/////////////////////////////////////////////////////////////
//////////// MOJAVE SUN BOTANY TWEAKS DIRECTORY /////////////
/////////////////////////////////////////////////////////////

//seeds potency change - can be used for tweaking other starting plant variables
//also consiser plant code

/obj/item/seeds/fallout
	growing_icon = 'fallout/icons/hydroponics/growing.dmi'
	icon = 'fallout/icons/hydroponics/seeds.dmi'
	icon_state = "seed"
	potency = 50
	growthstages = 5

/obj/item/reagent_containers/food/snacks/grown/fallout
	icon = 'fallout/icons/hydroponics/harvest.dmi'

//food size change, less gimmicky jumbofoods

/obj/item/reagent_containers/food/snacks/grown/fallout/Initialize(mapload, obj/item/seeds/new_seed)
	. = ..()
	if(!tastes)
		tastes = list("[name]" = 1)

	if(new_seed)
		seed = new_seed.Copy()
	else if(ispath(seed))
		// This is for adminspawn or map-placed growns. They get the default stats of their seed type.
		seed = new seed()
		seed.adjust_potency(50-seed.potency)

	pixel_x = rand(-5, 5)
	pixel_y = rand(-5, 5)

	if(dried_type == -1)
		dried_type = src.type

	if(seed)
		for(var/datum/plant_gene/trait/T in seed.genes)
			T.on_new(src, loc)
		seed.prepare_result(src)
		var/matrix/M = matrix()
		if(seed.potency >= 80)
			M.Scale(1, 1)
			transform = M
			return
		else
			M.Scale(seed.potency/80, seed.potency/80)
			transform = M
		add_juice()

/////////////////////////////////////////////////////////////
////////////////// MOJAVE SUN BOTANY ITEMS //////////////////
/////////////////////////////////////////////////////////////

//fallout plant bag, for new seed packets

/obj/item/storage/bag/plants/fallout
	icon = 'fallout/icons/hydroponics/equipment.dmi'

/obj/item/storage/bag/plants/fallout/ComponentInitialize()
	. = ..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	STR.max_w_class = WEIGHT_CLASS_NORMAL
	STR.max_combined_w_class = 100
	STR.max_items = 100
	STR.set_holdable(list(
		//obj/item/fallout/seedpacket,
		/obj/item/reagent_containers/food/snacks/grown,
		/obj/item/grown,
		/obj/item/reagent_containers/honeycomb,
		/obj/item/graft,
		))

//wastelander secateur/geneshear realistic mutlitool
/obj/item/secateurs/shears
	name = "shears"
	desc = "It's a tool for delicately removing grafts or harshly cutting off plant parts to control a plants genetic growth."
	icon = 'fallout/icons/hydroponics/equipment.dmi'
	icon_state = "shears"
	inhand_icon_state = "shears"
	lefthand_file = 'fallout/icons/mob/inhands/equipment/hydroponics_lefthand.dmi'
	righthand_file = 'fallout/icons/mob/inhands/equipment/hydroponics_righthand.dmi'
	flags_1 = CONDUCT_1
	force = 10
	throwforce = 5
	w_class = WEIGHT_CLASS_SMALL
	slot_flags = ITEM_SLOT_BELT
	custom_materials = list(/datum/material/iron=4000)
	attack_verb_continuous = list("slashes", "slices", "cuts")
	attack_verb_simple = list("slashed", "sliced", "cut")
	hitsound = 'sound/weapons/bladeslice.ogg'
	item_flags = EYE_STAB
	sharpness = SHARP_POINTY

/obj/item/geneshears/shears
	name = "shears"
	desc = "It's a tool for delicately removing grafts or harshly cutting off plant parts to control a plants genetic growth."
	icon = 'fallout/icons/hydroponics/equipment.dmi'
	icon_state = "shears"
	inhand_icon_state = "shears"
	lefthand_file = 'fallout/icons/mob/inhands/equipment/hydroponics_lefthand.dmi'
	righthand_file = 'fallout/icons/mob/inhands/equipment/hydroponics_righthand.dmi'
	flags_1 = CONDUCT_1
	force = 10
	throwforce = 5
	w_class = WEIGHT_CLASS_SMALL
	slot_flags = ITEM_SLOT_BELT
	custom_materials = list(/datum/material/iron=4000)
	attack_verb_continuous = list("slashes", "slices", "cuts")
	attack_verb_simple = list("slashed", "sliced", "cut")
	hitsound = 'sound/weapons/bladeslice.ogg'
	item_flags = EYE_STAB
	sharpness = SHARP_POINTY

/obj/item/secateurs/shears/fallout/attack_self(mob/user)
	var/obj/item/geneshears/shears/gene = new /obj/item/geneshears/shears(drop_location())
	to_chat(user, "<span class='notice'>You hold the shears aggresively, ready to remove stems.</span>")
	qdel(src)
	user.put_in_active_hand(gene)

/obj/item/geneshears/fallout/shears/attack_self(mob/user)
	var/obj/item/secateurs/shears/sec = new /obj/item/secateurs/shears(drop_location())
	to_chat(user, "<span class='notice'>You hold the shears delicately, ready to remove grafts.</span>")
	qdel(src)
	user.put_in_active_hand(sec)

//AXES - for muh lumberjacking

/obj/item/hatchet/fallout
	name = "hatchet"
	desc = "A very sharp axe blade upon a short fibremetal handle. It has a long history of chopping things, but now it is used for chopping wood."
	icon = 'fallout/icons/objects/items_and_weapons.dmi'
	icon_state = "hatchet"
	inhand_icon_state = "hatchet"
	lefthand_file = 'fallout/icons/mob/inhands/equipment/hydroponics_lefthand.dmi'
	righthand_file = 'fallout/icons/mob/inhands/equipment/hydroponics_righthand.dmi'
	flags_1 = CONDUCT_1
	force = 12
	w_class = WEIGHT_CLASS_SMALL
	throwforce = 15
	throw_speed = 3
	throw_range = 4
	sharpness = IS_SHARP_AXE

//animal mounting items - basic stuff, mainly the saddle and lasso

/obj/item/saddle/fallout
	desc = "A cowboys tool of the trade, get on comfy on your beast pard'."
	icon = 'fallout/icons/hydroponics/equipment.dmi'
	icon_state = "saddle"
	drop_sound = 'sound/items/handling/cloth_drop.ogg'
	pickup_sound =  'sound/items/handling/cloth_pickup.ogg'

/obj/item/key/lasso/fallout
	name = "lasso"
	desc = "A cowboys tool of the tade, used for reighning them critters, W'hooowhey! Ride!"
	force = 15
	icon = 'fallout/icons/hydroponics/equipment.dmi'
	icon_state = "lasso"
	pickup_sound =  'sound/items/handling/cloth_pickup.ogg'

/////////////////////////////////////////////////////////////
////////////// MOJAVE SUN BOTANY CHEMS //////////////////////
/////////////////////////////////////////////////////////////

//fertilizer reagents
/datum/reagent/plantnutriment/fallout/fertilizer
	name = "fertilizer"
	description = "A mixture of waste and rotten plant matter that nurtures plants and keeps them free of pests."
	reagent_state = "SOLID"
	color = "#44341F"
	taste_description = "rot"

/datum/reagent/plantnutriment/fallout/fertilizer/on_mob_life(mob/living/carbon/M)
	M.adjustToxLoss(0.5*REM, 0)
	. = 1
	..()

/datum/reagent/plantnutriment/fallout/fertilizer/on_hydroponics_apply(obj/item/seeds/myseed, datum/reagents/chems, obj/machinery/hydroponics/mytray)
	. = ..()
	if(chems.has_reagent(src.type, 1))
		mytray.adjustHealth(round(chems.get_reagent_amount(src.type) * 0.25))
		mytray.adjustPests(-rand(1,2))

/datum/reagent/plantnutriment/eznutriment/fallout
	name = "micronutrient fertilizer"
	description = "A mixture of waste and rotten plant matter that nurtures plants and keeps them free of pests, while boosting the potency and yield at the cost of mild mutagenic growth."

/datum/reagent/plantnutriment/robustharvestnutriment/fallout
	name = "yield fertilizer"
	description = "A mixture of waste and rotten plant matter that nurtures plants and keeps them free of pests, while boosting yield at the cost of reducing mutagenic growth."

/datum/reagent/plantnutriment/endurogrow/fallout
	name = "enduro-grow fertilizer"

/datum/reagent/plantnutriment/liquidearthquake/fallout
	name = "plant-now fertilizer"

//fertilizer bags

/obj/item/reagent_containers/fallout/fertilizer
	icon = 'fallout/icons/hydroponics/equipment.dmi'
	icon_state = "daesack"
	name = "saddle-up fertilizer"
	desc = "A pre-war bag of standardised garden fertilizer, a faded inscription says - Saddle-up with happy healthy plants!"
	volume = 100
	amount_per_transfer_from_this = 10
	possible_transfer_amounts = list(1,2,5,10,15,25,50)
	list_reagents = list(/datum/reagent/plantnutriment/fallout/fertilizer = 100)

/obj/item/reagent_containers/fallout/fertilizer/potency
	icon_state = "daesack2"
	name = "yard-boy fertilizer"
	desc = "A pre-war bag of standardised garden fertilizer, known to be higher in micronutrients than other brands, a faded inscription says - Yard-boy keeps your grass ah' growin!"
	list_reagents = list(/datum/reagent/plantnutriment/eznutriment/fallout = 100)

/obj/item/reagent_containers/fallout/fertilizer/yield
	icon_state = "daesack3"
	name = "plants-4-days fertilizer"
	desc = "A pre-war bag of standardised garden fertilizer, known to be help stimulate plant yield, a faded inscription says - Plants-4-Days!"
	list_reagents = list(/datum/reagent/plantnutriment/robustharvestnutriment/fallout = 100)

/obj/item/reagent_containers/fallout/fertilizer/endurance
	icon_state = "daesack4"
	name = "enduro-grow fertilizer"
	desc = "A pre-war bag of standardised garden fertilizer, known to be help stimulate plant endurance, a faded inscription says - Enduro-grow patented formula ensures your plants goes on and on and on!"
	list_reagents = list(/datum/reagent/plantnutriment/endurogrow/fallout = 100)

/obj/item/reagent_containers/fallout/fertilizer/productionspeed
	icon_state = "daesack5"
	name = "plant-now fertilizer"
	desc = "A pre-war bag of standardised garden fertilizer, known to be help stimulate plant production growth at the cost of speeding weed spread, a faded inscription says - Sick and tired of waiting for plants to grow? Fear no more! With Plant-Now!"
	list_reagents = list(/datum/reagent/plantnutriment/liquidearthquake/fallout = 100)

/////////////////////////////////////////////////////////////
////////////// MOJAVE SUN BOTANY STRUCTURES /////////////////
/////////////////////////////////////////////////////////////

//fallout barrel

/obj/structure/fermenting_barrel/fallout
	icon = 'fallout/icons/hydroponics/equipment.dmi'
	icon_state = "barrel"

/obj/structure/fermenting_barrel/fallout/Initialize()
	. = ..()
	pixel_x = rand(-5, 5)
	pixel_y = rand(-5, 5)

//fallout seed extractor

/obj/structure/rustic_extractor
	name = "seed grinder"
	desc = "A crude grinding machine repurposed from kitchen appliances. Plants go in, seeds come out."
	icon = 'fallout/icons/hydroponics/equipment.dmi'
	icon_state = "seedextractor"
	density = TRUE
	anchored = TRUE

/obj/structure/rustic_extractor/proc/seedify(obj/item/O, t_max, obj/structure/rustic_extractor/extractor, mob/living/user)
	var/t_amount = 0
	var/list/seeds = list()
	if(t_max == -1)
		t_max = rand(1,2) //Slightly worse than the actual thing

	var/seedloc = O.loc
	if(extractor)
		seedloc = extractor.loc

	if(istype(O, /obj/item/reagent_containers/food/snacks/grown/))
		var/obj/item/reagent_containers/food/snacks/grown/F = O
		if(F.seed)
			if(user && !user.temporarilyRemoveItemFromInventory(O)) //couldn't drop the item
				return
			while(t_amount < t_max)
				var/obj/item/seeds/t_prod = F.seed.Copy()
				seeds.Add(t_prod)
				t_prod.forceMove(seedloc)
				t_amount++
			qdel(O)
			return seeds

	else if(istype(O, /obj/item/grown))
		var/obj/item/grown/F = O
		if(F.seed)
			if(user && !user.temporarilyRemoveItemFromInventory(O))
				return
			while(t_amount < t_max)
				var/obj/item/seeds/t_prod = F.seed.Copy()
				t_prod.forceMove(seedloc)
				t_amount++
			qdel(O)
		return 1

	return 0

/obj/structure/rustic_extractor/attackby(obj/item/O, mob/user, params)

	if(default_unfasten_wrench(user, O)) //So we can move them around
		return

	else if(seedify(O,-1, src, user))
		to_chat(user, "<span class='notice'>You extract some seeds.</span>")
		return
	else if(user.a_intent != INTENT_HARM)
		to_chat(user, "<span class='warning'>You can't extract any seeds from \the [O.name]!</span>")
	else
		return ..()

//fallout fertilizer bin

/obj/structure/reagent_dispensers/compostbin
	name = "fertilizer bin"
	desc = "A smelly structure made of wooden slats where refuse is thrown. Dump unwanted seeds and produce in, pull usable fertilizer out."
	icon = 'fallout/icons/hydroponics/equipment.dmi'
	icon_state = "compostbin"
	anchored = TRUE
	reagent_id = "fertilizer"
	var/seed_value = 4
	var/food_value = 15

/obj/structure/reagent_dispensers/compostbin/attackby(obj/item/W, mob/user, params)
	if(W.is_refillable())
		return 0 //so we can refill them via their afterattack.
	if(reagents.total_volume == tank_volume)
		to_chat(user,"<span class='warning'>The [src] is filled to capacity!</span>")
		return
	if(istype(W, /obj/item/seeds/fallout || /obj/item/reagent_containers/food/snacks/grown))
		if(user.transferItemToLoc(W, src))
			to_chat(user, "<span class='notice'>You load the [W] into the [src].</span>")
			playsound(loc, 'sound/effects/blobattack.ogg', 25, 1, -1)
			process_compost()
		else
			to_chat(user, "<span class='warning'>That's not compostable! Try seeds or flowers instead.</span>")
	else if(istype(W, /obj/item/storage/bag/plants/fallout))
		var/obj/item/storage/bag/plants/PB = W
		for(var/obj/item/G in PB.contents)// This check can be less than thorough because the bag has already authenticated the contents, hopefully
			if(SEND_SIGNAL(PB, COMSIG_TRY_STORAGE_TAKE, G, src))
				to_chat(user, "<span class='info'>You empty the [PB] into the [src].</span>")
				playsound(loc, 'sound/effects/blobattack.ogg', 25, 1, -1)
				process_compost()

/obj/structure/reagent_dispensers/compostbin/proc/process_compost()
	for(var/obj/item/C in contents)
		if(istype(C, /obj/item/seeds))
			reagents.add_reagent("fertilizer", seed_value)
			qdel(C)
		else if(istype(C, /obj/item/reagent_containers/food))
			reagents.add_reagent("fertilizer", food_value)
			qdel(C)
		else //Not sure how we got here, but there's only one reasonable thing to do.
			qdel(C)

//fallout plant tray

/obj/machinery/hydroponics/fallout/soil
	name = "soil"
	desc = "A patch of dirt."
	icon = 'fallout/icons/hydroponics/soil.dmi'
	icon_state = "soil-0"
	base_icon_state = "soil"
	smoothing_flags = SMOOTH_BITMASK
	smoothing_groups = list(SMOOTH_GROUP_SOIL)
	canSmoothWith = list(SMOOTH_GROUP_SOIL)
	pixel_z = 0
	nutridrain = 0.3
	maxnutri = 20
	gender = PLURAL
	circuit = null
	density = FALSE
	use_power = NO_POWER_USE
	flags_1 = NODECONSTRUCT_1
	unwrenchable = FALSE

/obj/machinery/hydroponics/fallout/soil/examine(mob/user)
	if(myseed)
		to_chat(user, "<span class='info'>It has <span class='name'>[myseed.plantname]</span> planted.</span>")
		if(in_range(user, src) || isobserver(user))
		//ENDURANCE
			if(myseed.endurance <= 25)
				to_chat(user, "<span class='red'> The plant looks weak!</span>")
			if(myseed.endurance > 26 && myseed.endurance <= 50)
				to_chat(user, "<span class='yellow'> The plant looks slightly-weak.</span>")
			if(myseed.endurance > 51 && myseed.endurance <= 75)
				to_chat(user, "<span class='yellow'> The plant looks hardy.</span>")
			if(myseed.endurance > 76 && myseed.endurance <= 100)
				to_chat(user, "<span class='green'> The plant looks extremely hardy.</span>")
		//MATURATION
			if(myseed.maturation > 1 && myseed.maturation <= 3)
				to_chat(user, "<span class='green'> The plant looks mature quickly.</span>")
			if(myseed.maturation > 4 && myseed.maturation <= 6)
				to_chat(user, "<span class='yellow'> The plant looks mature at a normal rate.</span>")
			if(myseed.maturation > 7)
				to_chat(user, "<span class='red'> The plant still does not look mature after a while.</span>")
		//YIELD
			if(myseed.yield == 0)
				to_chat(user, "<span class='red'> The plant has no crop growing!</span>")
			if(myseed.yield > 1 && myseed.yield <= 3)
				to_chat(user, "<span class='red'> The plant has very few crop.</span>")
			if(myseed.yield > 4 && myseed.yield <= 6)
				to_chat(user, "<span class='yellow'> The plant has a normal amount of crop.</span>")
			if(myseed.yield > 7)
				to_chat(user, "<span class='green'> The plant is abundant in crop!</span>")
			//POTENTCY
			if(myseed.potency <= 25)
				to_chat(user, "<span class='red'> The plant has very small crop.</span>")
			if(myseed.potency > 26 && myseed.potency <= 50)
				to_chat(user, "<span class='yellow'> The plant has average crop.</span>")
			if(myseed.potency > 51 && myseed.potency <= 75)
				to_chat(user, "<span class='yellow'> The plant has above-average crop.</span>")
			if(myseed.potency > 76 && myseed.potency <= 100)
				to_chat(user, "<span class='green'> The plant has very large crop!</span>")
			//INSTABILITY
			if(myseed.instability > 50 && myseed.instability <= 75)
				to_chat(user, "<span class='yellow'> The soil seems to be bubbling slightly.</span>")
			if(myseed.instability > 76 && myseed.instability <= 100)
				to_chat(user, "<span class='yellow'> The soil is bubbling agressively!</span>")
			//WEEED
			if(weedlevel >= 5)
				to_chat(user, "<span class='red'> Its filled with weeds!</span>")
			if(pestlevel >= 5)
				to_chat(user, "<span class='red'> Its filled with critters!</span>")
			if (dead)
				to_chat(user, "<span class='warning'>It's dead!</span>")
			else if (harvest)
				to_chat(user, "<span class='info'>It's ready to harvest.</span>")
			else if (plant_health <= (myseed.endurance / 2))
				to_chat(user, "<span class='warning'>It looks unhealthy.</span>")
			to_chat(user,"<span class='info'>Water: [waterlevel]/[maxwater].</span>")
			to_chat(user,"<span class='info'>Nutrient: [reagents.total_volume]/[maxnutri].</span>")
			return
	else
		to_chat(user, "<span class='info'>It's empty.</span>")
		to_chat(user,"<span class='info'>Water: [waterlevel]/[maxwater].</span>")
		to_chat(user,"<span class='info'>Nutrient: [reagents.total_volume]/[maxnutri].</span>")
	return

/obj/machinery/hydroponics/fallout/soil/attackby(obj/item/O, mob/user, params)
	if(O.tool_behaviour == TOOL_SHOVEL && !istype(O, /obj/item/shovel/spade)) //Doesn't include spades because of uprooting plants
		to_chat(user, "<span class='notice'>You begin clearing up the [src]!</span>")
		if(do_after(user, 1000, target = src))
			to_chat(user, "<span class='notice'>You clear up [src]!</span>")
			qdel(src)
	else
		return ..()

/obj/machinery/hydroponics/fallout/soil/Initialize()
	//ALRIGHT YOU DEGENERATES. YOU HAD REAGENT HOLDERS FOR AT LEAST 4 YEARS AND NONE OF YOU MADE HYDROPONICS TRAYS HOLD NUTRIENT CHEMS INSTEAD OF USING "Points".
	//SO HERE LIES THE "nutrilevel" VAR. IT'S DEAD AND I PUT IT OUT OF IT'S MISERY. USE "reagents" INSTEAD. ~ArcaneMusic, accept no substitutes.
	create_reagents(50)
	reagents.add_reagent(/datum/reagent/plantnutriment/fallout/fertilizer, 50) //Half filled nutrient trays for dirt trays to have more to grow with in prison/lavaland.
	. = ..()

/obj/machinery/hydroponics/fallout/soil/update_icon_lights()
	return // Has no lights

/obj/machinery/hydroponics/fallout/soil/CtrlClick(mob/user)
	return //Soil has no electricity.

/////////////////////////////////////////////////////////////
////////////////// MOJAVE SUN BOTANY MISC  //////////////////
/////////////////////////////////////////////////////////////

//forest and snow areas

//#define SNOW_PLANT_DENSE_SPAWN_LIST list(/obj/structure/flora/grass/wasteland/snow = 10, /obj/structure/flora/fallout/tree/tallpine = 7, /obj/structure/flora/fallout/tree/deadsnow = 5, /obj/structure/flora/fallout/tree/pine = 5)

/area/f13/snow
	name = "Snow"
	icon_state = "snow"
	requires_power = FALSE
	poweralm = FALSE
	power_environ = FALSE
	power_equip = FALSE
	outdoors = TRUE
	flags_1 = NONE

/area/f13/snow/deepforest
	name = "Deep Forest"
	icon_state = "deepforest"

/area/f13/snow/forest
	name = "Forest"
	icon_state = "forest"

/area/f13/snow/lightforest
	name = "Light Forest"
	icon_state = "lightforest"
