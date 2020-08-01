// Actual fishing, this will usher in a new era for Fallout13

// Fishing tiles

/turf/open/floor/plating/ice/hole
	name = "ice hole"
	baseturfs = /turf/open/floor/plating/asteroid
	icon = 'icons/turf/floors.dmi'
	icon_state = "asteroid"
	icon_plating = "asteroid"
	footstep = FOOTSTEP_SAND
	barefootstep = FOOTSTEP_SAND
	clawfootstep = FOOTSTEP_SAND
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	var/list/fish = list(/obj/item/reagent_containers/food/snacks/meat/slab/fish/sockeye,
		/obj/item/reagent_containers/food/snacks/meat/slab/fish/smallmouth,
		/obj/item/reagent_containers/food/snacks/meat/slab/fish/largemouth,
		/obj/item/reagent_containers/food/snacks/meat/slab/fish/lamprey,
		/obj/item/reagent_containers/food/snacks/meat/slab/fish/pink,
		/obj/item/reagent_containers/food/snacks/meat/slab/fish/chum,
		/obj/item/reagent_containers/food/snacks/meat/slab/fish/sturgeon,
		/obj/item/reagent_containers/food/snacks/meat/slab/fish/asian,
		/obj/item/reagent_containers/food/snacks/meat/slab/fish/blinky)
	var/fished = FALSE

/turf/open/floor/plating/ice/hole/attackby(obj/item/W, mob/user, params)
	. = ..()
	if(!.)
		if(istype(W, /obj/item/fishing_rod))
			if(!can_fish(user))
				return TRUE

			if(!isturf(user.loc))
				return

			to_chat(user, "<span class='notice'>You start fishing...</span>")

			if(do_after(user, var/fish_speed))
			if(!can_fish(user))
				return TRUE
			to_chat(user, "<span class='notice'>You reel in your catch.</span>")
			getFished()

/turf/open/floor/plating/ice/hole/proc/getFished()
	var/spawnFish = pickweight(fish)
	new spawnFish(src)
	fished = TRUE

/turf/open/floor/plating/ice/hole/proc/can_fish(mob/user)
	if(!fished)
		return TRUE
	if(user)
		to_chat(user, "<span class='warning'>Looks like there's no fish here!</span>")

// Fishing rods

/obj/item/fishing_rod
	name = "fishing rod"
	desc = "You shouldn't be seeing this. LOOK AWAY."
	icon = 'fallout/icons/objects/fishing_rods.dmi'


/obj/item/fishing_rod/basic
	name = "makeshift rod"
	desc = "A makeshift fishing rod built from whatever was available. It works. Sort of."
	icon_state = "basic"
	lefthand_file = 'fallout/icons/mob/inhands/equipment/fishingrods_lefthand.dmi'
	righthand_file = 'fallout/icons/mob/inhands/equipment/fishingrods_righthand.dmi'
	var/fish_speed = 60 SECONDS

/obj/item/fishing_rod/telescopic
	name = "fishing rod"
	desc = "A telescoping fishing rod, perfect to store away in your bag."
	icon_state = "telescopic"
	lefthand_file = 'fallout/icons/mob/inhands/equipment/fishingrods_lefthand.dmi'
	righthand_file = 'fallout/icons/mob/inhands/equipment/fishingrods_righthand.dmi'
	var/fish_speed = 40 SECONDS

/obj/item/fishing_rod/advanced
	name = "advanced rod"
	desc = "A professional, high-end fishing rod, state of the art fishing technology. They don't make them like this anymore."
	icon_state = "advanced"
	lefthand_file = 'fallout/icons/mob/inhands/equipment/fishingrods_lefthand.dmi'
	righthand_file = 'fallout/icons/mob/inhands/equipment/fishingrods_righthand.dmi'
	var/fish_speed = 20 SECONDS
