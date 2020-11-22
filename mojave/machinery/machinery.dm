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
