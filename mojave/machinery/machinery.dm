/obj/machinery/ms13
	name = "ms13 machine"
	desc = "You shouldn't be seeing this."

/obj/machinery/ms13/reloadingbench
	name = "reloading bench"
	desc = "A standard reloading bench for crafting makeshift and standard ammo."
	resistance_flags = INDESTRUCTIBLE
	density = TRUE
	layer = BELOW_OBJ_LAYER
	anchored = TRUE
	machine_tool_behaviour = TOOL_RELBENCH

/obj/machinery/ms13/reloadingbench/advanced
	name = "advanced reloading bench"
	desc = "An advanced reloading bench for crafting specialized and complex ammo."
	machine_tool_behaviour = list(TOOL_RELBENCH, TOOL_ADVRELBENCH)

/obj/machinery/door/poddoor/shutters/indestructible/ms13
	name = "shutters"
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF

/obj/machinery/door/poddoor/shutters/preopen/ms13/
	name = "shutters"

/obj/machinery/door/poddoor/shutters/preopen/ms13/indestructible
	name = "shutters"
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF

/obj/machinery/power/apc/unlocked/ms13
	name = "breaker"
	start_charge = 0

/obj/machinery/power/apc/unlocked/ms13/north
	dir = NORTH
	pixel_y = 23

/obj/machinery/power/apc/unlocked/ms13/south
	dir = SOUTH
	pixel_y = -23

/obj/machinery/power/apc/unlocked/ms13/east
	dir =EAST
	pixel_x = 23

/obj/machinery/power/apc/unlocked/ms13/west
	dir = WEST
	pixel_x = -23
