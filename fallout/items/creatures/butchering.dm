/////////////////////////////////////////////////////////////
///////////////// MOJAVE SUN BUTCHERING PRODUCE /////////////
/////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////
////////////////////////// HIDES ////////////////////////////
/////////////////////////////////////////////////////////////

/obj/item/fallout/hide
	name = "hide"
	desc = "A hide-n bug."
	icon = 'fallout/icons/mob/skinning.dmi'
	icon_state = null
	inhand_icon_state = null
	lefthand_file = 'fallout/icons/mob/inhands/misc/butchering_lefthand.dmi'
	righthand_file = 'fallout/icons/mob/inhands/misc/butchering_righthand.dmi'
	throw_range = 3
	w_class = WEIGHT_CLASS_NORMAL
	drop_sound = 'sound/items/handling/cloth_drop.ogg'
	pickup_sound =  'sound/items/handling/cloth_pickup.ogg'

/obj/item/fallout/hide/gecko
	name = "gecko hide"
	desc = "A skinned gecko hide."
	icon_state = "gecko_hide"
	inhand_icon_state = "gecko_hide"
	throw_range = 3

/obj/item/fallout/hide/gecko/ice
	icon_state = "icegecko_hide"
	inhand_icon_state = "icegecko_hide"

/obj/item/fallout/hide/gecko/sand
	icon_state = "sandgecko_hide"
	inhand_icon_state = "sandgecko_hide"

/obj/item/fallout/hide/wolf
	name = "wolf hide"
	desc = "A skinned wolf hide."
	icon_state = "wolf_hide"
	inhand_icon_state = "wolf_hide"
	throw_range = 3

/obj/item/fallout/hide/mongrel
	name = "mongrel hide"
	desc = "A skinned mongrel hide."
	icon_state = "mongrel_hide"
	inhand_icon_state = "mongrel_hide"
	throw_range = 3

/obj/item/fallout/hide/molerat
	name = "molerat hide"
	desc = "A skinned molerat hide."
	icon_state = "molerat_hide"
	inhand_icon_state = "molerat_hide"
	throw_range = 3

/obj/item/fallout/hide/pigrat
	name = "pigrat hide"
	desc = "A skinned pigrat hide."
	icon_state = "pigrat_hide"
	inhand_icon_state = "pigrat_hide"
	throw_range = 3

/obj/item/fallout/hide/brahmin
	name = "brahmin hide"
	desc = "A skinned brahmin hide."
	icon_state = "brahmin_hide"
	inhand_icon_state = "brahmin_hide"
	throw_range = 2
	w_class = WEIGHT_CLASS_BULKY

/obj/item/fallout/hide/radstag
	name = "radstag hide"
	desc = "A skinned radstag hide."
	icon_state = "radstag_hide"
	inhand_icon_state = "radstag_hide"
	throw_range = 2
	w_class = WEIGHT_CLASS_BULKY

/obj/item/fallout/hide/brahmiluff
	name = "brahmiluff hide"
	desc = "A skinned brahmiluff hide."
	icon_state = "brahmiluff_hide"
	inhand_icon_state = "brahmiluff_hide"
	throw_range = 2
	w_class = WEIGHT_CLASS_BULKY

/obj/item/fallout/hide/tunneler
	name = "tunneler hide"
	desc = "A skinned tunneler hide."
	icon_state = "tunneler_hide"
	inhand_icon_state = "tunneler_hide"
	throw_range = 2
	w_class = WEIGHT_CLASS_BULKY

/obj/item/fallout/hide/nightstalker
	name = "nightstalker hide"
	desc = "A skinned nightstalker hide."
	icon_state = "nightstalker_hide"
	inhand_icon_state = "nightstalker_hide"
	throw_range = 2
	w_class = WEIGHT_CLASS_BULKY

/obj/item/fallout/hide/yaoguai
	name = "yaoguai hide"
	desc = "A skinned yaoguai hide."
	icon_state = "yaoguai_hide"
	inhand_icon_state = "yaoguai_hide"
	throw_range = 2
	w_class = WEIGHT_CLASS_BULKY

/obj/item/fallout/hide/slepnir
	name = "slepnir hide"
	desc = "A skinned slepnir hide."
	icon_state = "slepnir_hide"
	inhand_icon_state = "slepnir_hide"
	throw_range = 2
	w_class = WEIGHT_CLASS_BULKY

/obj/item/fallout/hide/large/hellpig
	name = "hellpig hide"
	desc = "A skinned hellpig hide."
	icon_state = "hellpig_hide"
	inhand_icon_state = "hellpig_hide"
	throw_range = 2
	w_class = WEIGHT_CLASS_HUGE

/obj/item/fallout/hide/large/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/two_handed, require_twohands=TRUE)

/////////////////////////////////////////////////////////////
//////////////////////// CARCASSES //////////////////////////
/////////////////////////////////////////////////////////////

/obj/item/fallout/carcass
	name = "carcass"
	desc = "A meaty error :)."
	icon = 'fallout/icons/mob/skinning.dmi'
	icon_state = null
	inhand_icon_state = null
	lefthand_file = 'fallout/icons/mob/inhands/misc/butchering_lefthand.dmi'
	righthand_file = 'fallout/icons/mob/inhands/misc/butchering_righthand.dmi'
	throw_range = 2
	w_class = WEIGHT_CLASS_BULKY
	var/butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab = 4) //placeholder meat
	var/butcher_difficulty = 0
	drop_sound = 'fallout/sound/f13items/f13handling/meat_drop.ogg'
	pickup_sound =  'fallout/sound/f13items/f13handling/meat_pickup.ogg'

/obj/item/fallout/carcass/proc/harvest(mob/living/user) //used for extra objects etc. in butchering
	return

//small/medium

/obj/item/fallout/carcass/clucker
	name = "clucker carcass"
	desc = "A de-feathered body of a clucker."
	icon_state = "clucker_carcass"
	inhand_icon_state = "clucker_carcass"
	throw_range = 4
	w_class = WEIGHT_CLASS_NORMAL
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab = 1)
	butcher_difficulty = -20

/obj/item/fallout/carcass/gecko
	name = "gecko carcass"
	desc = "A skinned body of a gecko."
	icon_state = "gecko_carcass"
	inhand_icon_state = "gecko_carcass"
	throw_range = 2
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab = 3)
	butcher_difficulty = -20

/obj/item/fallout/carcass/wolf
	name = "wolf carcass"
	desc = "A skinned body of a wolf."
	icon_state = "dog_carcass"
	inhand_icon_state = "dog_carcass"
	throw_range = 2
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab = 2)
	butcher_difficulty = -20

/obj/item/fallout/carcass/mongrel
	name = "mongrel carcass"
	desc = "A skinned body of a mongrel."
	icon_state = "dog_carcass"
	inhand_icon_state = "dog_carcass"
	throw_range = 2
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab = 2)
	butcher_difficulty = -20

/obj/item/fallout/carcass/molerat
	name = "molerat carcass"
	desc = "A skinned body of a molerat."
	icon_state = "rat_carcass"
	inhand_icon_state = "rat_carcass"
	throw_range = 2
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab = 2)
	butcher_difficulty = -20

//large


/obj/item/fallout/carcass/large/pigrat
	name = "pigrat carcass"
	desc = "A skinned body of a pigrat."
	icon_state = "rat_carcass"
	inhand_icon_state = "rat_carcass"
	throw_range = 1
	w_class = WEIGHT_CLASS_HUGE
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab = 3)

/obj/item/fallout/carcass/large/radstag
	name = "radstag carcass"
	desc = "A skinned body of a radstag."
	icon_state = "radstag_carcass"
	inhand_icon_state = "radstag_carcass"
	throw_range = 1
	w_class = WEIGHT_CLASS_HUGE
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab = 5)

/obj/item/fallout/carcass/large/tunneller
	name = "tunneler carcass"
	desc = "A skinned body of a tunneler."
	icon_state = "tunneller_carcass"
	inhand_icon_state = "tunneller_carcass"
	throw_range = 1
	w_class = WEIGHT_CLASS_HUGE
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab = 4)

/obj/item/fallout/carcass/large/nightstalker
	name = "nightstalker carcass"
	desc = "A skinned body of a nightstalker."
	icon_state = "nightstalker_carcass"
	inhand_icon_state = "nightstalker_carcass"
	throw_range = 1
	w_class = WEIGHT_CLASS_HUGE
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab = 4)
	butcher_difficulty = 15

/obj/item/fallout/carcass/large/brahmiluff
	name = "brahmiluff carcass"
	desc = "A skinned body of a brahmiluff."
	icon_state = "brahmiluff_carcass"
	inhand_icon_state = "brahmiluff_carcass"
	throw_range = 1
	w_class = WEIGHT_CLASS_HUGE
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab = 4)

/obj/item/fallout/carcass/large/brahmiluff/front
	icon_state = "cowbeastfront_carcass"
	inhand_icon_state = "cowbeastfront_carcass"

/obj/item/fallout/carcass/large/brahmiluff/back
	icon_state = "cowbeastback_carcass"
	inhand_icon_state = "cowbeastback_carcass"

/obj/item/fallout/carcass/large/brahmin
	name = "brahmin carcass"
	desc = "A skinned body of a brahmin."
	icon_state = "brahmin_carcass"
	inhand_icon_state = "brahmin_carcass"
	throw_range = 1
	w_class = WEIGHT_CLASS_HUGE
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab = 3)

/obj/item/fallout/carcass/large/brahmin/front
	icon_state = "cowbeastfront_carcass"
	inhand_icon_state = "cowbeastfront_carcass"

/obj/item/fallout/carcass/large/brahmin/back
	icon_state = "cowbeastback_carcass"
	inhand_icon_state = "cowbeastback_carcass"

/obj/item/fallout/carcass/large/yaoguai
	name = "yaoguai carcass"
	desc = "A skinned body section of a yaoguai."
	throw_range = 1
	w_class = WEIGHT_CLASS_HUGE
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab = 4)
	butcher_difficulty = 20

/obj/item/fallout/carcass/large/yaoguai/front
	icon_state = "yaoguaifront_carcass"
	inhand_icon_state = "yaoguaifront_carcass"

/obj/item/fallout/carcass/large/yaoguai/back
	icon_state = "yaoguaiback_carcass"
	inhand_icon_state = "yaoguaiback_carcass"

/obj/item/fallout/carcass/large/slepnir
	name = "slepnir carcass"
	desc = "A skinned body section of a slepnir."
	throw_range = 1
	w_class = WEIGHT_CLASS_HUGE
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab = 4)
	butcher_difficulty = 25

/obj/item/fallout/carcass/large/slepnir/front
	icon_state = "slepnirfront_carcass"
	inhand_icon_state = "slepnirfront_carcass"

/obj/item/fallout/carcass/large/slepnir/back
	icon_state = "slepnirback_carcass"
	inhand_icon_state = "slepnirback_carcass"

/obj/item/fallout/carcass/large/hellpig
	name = "hellpig carcass"
	desc = "A skinned body section of a hellpig."
	throw_range = 1
	w_class = WEIGHT_CLASS_HUGE
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab = 6)
	butcher_difficulty = 30

/obj/item/fallout/carcass/large/hellpig/front
	icon_state = "hellpigfront_carcass"
	inhand_icon_state = "hellpigfront_carcass"

/obj/item/fallout/carcass/large/hellpig/back
	icon_state = "hellpigback_carcass"
	inhand_icon_state = "hellpigback_carcass"

/obj/item/fallout/carcass/large/hellpig/leg
	name = "hellpig leg"
	icon_state = "hellpigleg_carcass"
	inhand_icon_state = "hellpigleg_carcass"
	w_class = WEIGHT_CLASS_BULKY

/obj/item/fallout/carcass/large/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/two_handed, require_twohands=TRUE)

/////////////////////////////////////////////////////////////
////////////////////////// ITEMS ////////////////////////////
/////////////////////////////////////////////////////////////

/obj/item/fallout/animalitem
	name = "animal item"
	desc = "Default Item, wtf!!!"
	icon = 'fallout/icons/mob/animalproduce.dmi'
	icon_state = null
	inhand_icon_state = null
	lefthand_file = 'fallout/icons/mob/inhands/misc/butchering_lefthand.dmi'
	righthand_file = 'fallout/icons/mob/inhands/misc/butchering_righthand.dmi'
	throw_range = 5
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/fallout/animalitem/brahmin/tongue
	name = "brahmin tongue"
	desc = "The tongue of a brahmin, a tasty morsel and provider of hyper-condensed coagulant"
	icon_state = "brahmin_tongue"
	grind_results = null

/obj/item/fallout/animalitem/brahmin/horns
	name = "brahmin horn"
	desc = "A sturdy brahmin horn, slightly valuable."
	icon_state = "brahmin_horn"
	grind_results = null

/obj/item/fallout/animalitem/brahmiluff/tongue
	name = "brahmiluff tongue"
	desc = "The tongue of a brahmiluff, more nutritious than its hairless cousins."
	icon_state = "brahmin_tongue"
	grind_results = null

/obj/item/fallout/animalitem/brahmiluff/horns
	name = "brahmiluff horn"
	desc = "A valued brahmiluff horn, catches a good price."
	icon_state = "brahmiluff_horn"

/obj/item/fallout/animalitem/clucker/feather
	name = "clucker feather"
	desc = "A singular clucker feather, rare commodities in a post-feather society."
	icon_state = "clucker_feather"
	throw_range = 2

/obj/item/fallout/animalitem/slepnir/hooves
	name = "slepnir hoof"
	desc = "A slepnirs Hoof, known for its ability to create natural adhesive."
	icon_state = "slepnir_hoof"
	grind_results = null

/obj/item/fallout/animalitem/pigrat/snout
	name = "pigrat snout"
	desc = "A pigrats snout, a laden fine delicacy."
	icon_state = "pigrat_snout"

/obj/item/fallout/animalitem/molerat/teeth
	name = "molerat tooth"
	desc = "A molerats tooth, laden with disease."
	icon_state = "molerat_tooth"
/*
/obj/item/fallout/animalitem/radroach/innards
	name = ""
	desc = ""
	icon_state =
*/
/obj/item/fallout/animalitem/gecko/claws
	name = "gecko claw"
	desc = "A lucky gecko paw, only slightly deadly."
	icon_state = "gecko_claw"

/obj/item/fallout/animalitem/nightstalker/teeth
	name = "nightstalker fang"
	desc = "A nightstalker fang, still dripping with potent venom."
	icon_state = "nightstalker_tooth"
/*
/obj/item/fallout/animalitem/radscorpion/stinger
	name = ""
	desc = ""
	icon_state =
*/
/obj/item/fallout/animalitem/radstag/antlers
	name = "radstag antler"
	desc = "A valuable and sturdy radstag antler."
	icon_state = "radstag_antler"

/obj/item/fallout/animalitem/wolf/teeth
	name = "wolf tooth"
	desc = "A valuable and sacred wolf tooth."
	icon_state = "wolf_tooth"
/*
/obj/item/fallout/animalitem/tunneler/spike
	name = "tunneller_spike"
	desc = "A razor sharp spear like protusion found on tunnellers."
	icon_state = "tunneller_spike"

/obj/item/fallout/animalitem/yaoguai/claw
	name = ""
	desc = ""
	icon_state =

/obj/item/fallout/animalitem/yaoguai/teeth
	name = ""
	desc = ""
	icon_state =

/obj/item/fallout/animalitem/hellpig/tusk
	name = ""
	desc = ""
	icon_state =
*/
/////////////////////////////////////////////////////////////
/////////////////// ITEM BUTCHER COMPONENT //////////////////
/////////////////////////////////////////////////////////////

/datum/component/itembutchering
	var/speed = 1.5 MINUTES //time in deciseconds taken to butcher something
	var/effectiveness = 80 //percentage effectiveness; numbers above 100 yield extra drops
	var/bonus_modifier = 0 //percentage increase to bonus item chance
	var/butcher_sound = 'sound/effects/butcher.ogg' //sound played when butchering
	var/butchering_enabled = TRUE
	var/can_be_blunt = FALSE

/datum/component/itembutchering/Initialize(_speed, _effectiveness, _bonus_modifier, _butcher_sound, disabled, _can_be_blunt)
	if(_speed)
		speed = _speed
	if(_effectiveness)
		effectiveness = _effectiveness
	if(_bonus_modifier)
		bonus_modifier = _bonus_modifier
	if(_butcher_sound)
		butcher_sound = _butcher_sound
	if(disabled)
		butchering_enabled = FALSE
	if(_can_be_blunt)
		can_be_blunt = _can_be_blunt
	if(isitem(parent))
		RegisterSignal(parent, COMSIG_ITEM_ATTACK, .proc/onItemAttack)

/datum/component/itembutchering/proc/onItemAttack(obj/item/source, obj/item/fallout/carcass/M, mob/living/user)
	if(user.a_intent != INTENT_HARM)
		return
	if(isturf(M.loc) && (M.butcher_results)) //can we butcher it? - Has to be on a table/surface thing.
		if(butchering_enabled && (can_be_blunt || source.get_sharpness()))
			INVOKE_ASYNC(src, .proc/startButcher, source, M, user)
			return COMPONENT_ITEM_NO_ATTACK

/datum/component/itembutchering/proc/startButcher(obj/item/source, obj/item/fallout/carcass/M, mob/living/user)
	to_chat(user, "<span class='notice'>You begin to butcher [M]...</span>")
	playsound(M.loc, butcher_sound, 50, TRUE, -1)
	if(do_mob(user, M, speed) && M.Adjacent(source))
		Butcher(user, M)

/datum/component/itembutchering/proc/Butcher(mob/living/butcher, obj/item/fallout/carcass/meat)
	var/turf/T = meat.drop_location()
	var/final_effectiveness = effectiveness - meat.butcher_difficulty //previous butchering code was wack, this just means that if you dont have the correct butchering tools you botch the harvest.
	for(var/V in meat.butcher_results)
		var/obj/item/reagent_containers/food/snacks/meat/meatamount = V
		if(final_effectiveness < 80)
			if(butcher)
				to_chat(butcher, "<span class='warning'>You botch the harvest of the [initial(meatamount.name)] from [meat].</span>")
		else
			if(butcher)
				to_chat(butcher, "<span class='info'>You harvest some extra [initial(meatamount.name)] from [meat]!</span>")
				new meatamount (T)
	if(butcher)
		butcher.visible_message("<span class='notice'>[butcher] butchers [meat].</span>", \
								"<span class='notice'>You butcher [meat].</span>")
	ButcherEffects(meat)
	meat.harvest(butcher)
	new /obj/effect/gibspawner/generic(get_turf(meat), meat)

/datum/component/itembutchering/proc/ButcherEffects(obj/item/fallout/carcass/meat) //extra effects called on butchering, override this via subtypes
	return

/obj/item/ComponentInitialize()
	. = ..()
	if(sharpness)
		. = ..()
		AddComponent(/datum/component/itembutchering, 80 * toolspeed)

/obj/item/kitchen/knife/ComponentInitialize() //basically currently only knives can be used to butcher without destroying the meat (unless its small game)
	. = ..()
	AddComponent(/datum/component/itembutchering, 70 + force, 100, force - 10)

/mob/living
	var/splatter = TRUE
