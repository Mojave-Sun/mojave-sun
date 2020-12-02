#define RUIN_BODIES_LEFT list("coupe-left" = 10, "muscle-left" = 3, "sport-left" = 3, "van-left" = 1)
#define RUIN_BODIES_RIGHT list("coupe-right" = 10, "muscle-right" = 3, "sport-right" = 3, "van-right" = 1)

/////////////////////////////////////////////////////////////
////////////// MOJAVE SUN RUINS/TRASH ///////////////////////
/////////////////////////////////////////////////////////////

///Place here semi-functional structures that are basically for scrapping/joonking///

//Cars//

/obj/structure/ms13/vehicle
	name = "vehicle ruin"
	desc = "A base class unrandomised vehicle, if you see it, report it foo."
	icon = 'mojave/icons/structure/vehicles.dmi'
	icon_state = "helper"
	density = TRUE
	layer = FLY_LAYER
	anchored = TRUE
	bound_width = 96
	var/direction = "test"
	var/direction_base = "test"

/obj/structure/ms13/vehicle/left
	icon_state = "helper-left"
	direction = "left"
	direction_base = RUIN_BODIES_LEFT

/obj/structure/ms13/vehicle/right
	icon_state = "helper-right"
	direction = "right"
	direction_base = RUIN_BODIES_RIGHT

/obj/structure/ms13/vehicle/Initialize()
	. = ..()
	var/randomiser = rand(0,8)
	icon_state = pickweight(direction_base)
	if(icon_state == "coupe-[direction]")
		name = "coupe car wreck"
		desc = "An old pre-war coupe car, scrapped and destroyed beyond repair. You may be able to salvage something from it."
		dir = randomiser
		add_overlay(image(icon, "coupe-tires-[direction]", FLOAT_LAYER, randomiser))
		if(prob(50))
			add_overlay(image(icon, "coupe-bumper-[direction]", FLOAT_LAYER, randomiser))
		if(prob(50))
			add_overlay(image(icon, "coupe-part-1-[direction]", FLOAT_LAYER, randomiser))
		if(prob(50))
			add_overlay(image(icon, "coupe-part-2-[direction]", FLOAT_LAYER, randomiser))
		if(prob(50))
			add_overlay(image(icon, "coupe-part-3-[direction]", FLOAT_LAYER, randomiser))
		return
	if(icon_state == "muscle-[direction]")
		name = "muscle car wreck"
		desc = "An old pre-war muscle car, scrapped and destroyed beyond repair, legend says it has an interior capable of accommodating as much as seven people, including a super mutant, robobrain, and a deathclaw. You may be able to salvage something from it."
		dir = randomiser
		add_overlay(image(icon, "muscle-tires-[direction]", FLOAT_LAYER, randomiser))
		if(prob(50))
			add_overlay(image(icon, "muscle-bumper-[direction]", FLOAT_LAYER, randomiser))
		if(prob(50))
			add_overlay(image(icon, "muscle-part-1-[direction]", FLOAT_LAYER, randomiser))
		if(prob(50))
			add_overlay(image(icon, "muscle-part-2-[direction]", FLOAT_LAYER, randomiser))
		return
	if(icon_state == "sport-[direction]")
		name = "sport car wreck"
		desc = "An old pre-war sport car, scrapped and destroyed beyond repair. You may be able to salvage something from it."
		dir = randomiser
		add_overlay(image(icon, "sport-tires-[direction]", FLOAT_LAYER, randomiser))
		if(prob(50))
			add_overlay(image(icon, "sport-bumper-[direction]", FLOAT_LAYER, randomiser))
		if(prob(50))
			add_overlay(image(icon, "sport-part-1-[direction]", FLOAT_LAYER, randomiser))
		if(prob(50))
			add_overlay(image(icon, "sport-part-2-[direction]", FLOAT_LAYER, randomiser))
		if(prob(50))
			add_overlay(image(icon, "sport-part-3-[direction]", FLOAT_LAYER, randomiser))
		return
	if(icon_state == "van-[direction]")
		name = "van wreck"
		desc = "An old pre-war van, scrapped and destroyed beyond repair. You may be able to salvage something from it."
		dir = randomiser
		add_overlay(image(icon, "van-tires-[direction]", FLOAT_LAYER, randomiser))
		if(prob(50))
			add_overlay(image(icon, "van-bumper-[direction]", FLOAT_LAYER, randomiser))
		if(prob(50))
			add_overlay(image(icon, "van-part-1-[direction]", FLOAT_LAYER, randomiser))
		if(prob(50))
			add_overlay(image(icon, "van-part-2-[direction]", FLOAT_LAYER, randomiser))
		return
