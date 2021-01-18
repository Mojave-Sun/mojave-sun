

//Fallout 13 water production well
//Produces a certain amount of water based on the number of currently alive human players

/obj/structure/well
	name = "water well"
	desc = "A structure that somehow brings up water from somewhere in the ground."
	icon_state = "well"
	icon = 'mojave/icons/structure/well_pump.dmi'

/obj/structure/well
	. = ..()
	START_PROCESSING(SSobj, src)


/obj/structure/well/Process()
