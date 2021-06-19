/obj/structure/closet/ms13/wall
	name = "wasteland wall storage"
	desc = "Holds wastelands, while being attatched to a wall, presumably."
	pixel_y = 32
	density = FALSE
	layer = WALL_OBJ_LAYER

/obj/structure/closet/ms13/wall/firstaid //Using it as a closet subtype was kinda fucked. Potential TGUI moment? We'll see.
	name = "emergency aid kit"
	desc = "A first aid kit, mounted to the wall. Commonly used for emergencies before the war."
	icon_state = "firstaid"

////Sneaky Storage////

/obj/structure/ms13/storage/vent
	name = "vent"
	desc = "A vent used to move air to and from places."
	icon = 'mojave/icons/structure/storage.dmi'
	icon_state = "vent"
	flags_1 = INDESTRUCTIBLE | ACID_PROOF | FIRE_PROOF
	pixel_y = 24
	density = FALSE
	layer = WALL_OBJ_LAYER + 0.15

/obj/structure/ms13/storage/vent/Initialize()
	. = ..()
	if(prob(50))
		icon_state = "[initial(icon_state)]-damaged"
