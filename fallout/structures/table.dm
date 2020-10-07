/obj/structure/table/f13
	name = "base class Fallout table"
	desc = "Scream at the coders if you see this."
	icon = 'fallout/icons/structure/smooth_structures/table.dmi'
	icon_state = "table-0"
	base_icon_state = "table"
	smoothing_groups = list(SMOOTH_GROUP_FALLOUT_TABLES) //Don't smooth with SMOOTH_GROUP_TABLES
	canSmoothWith = list(SMOOTH_GROUP_FALLOUT_TABLES)

/obj/structure/table/f13/metal
	name = "metal table"
	desc = "A square piece of metal standing on four metal legs. It can not move."

/obj/structure/table/f13/round
	name = "round table"
	desc = "A table, masterfully designed with high-tech to become... round"
	icon_state = "roundtable"
	icon = 'fallout/icons/objects/structures.dmi'
	smoothing_flags = NONE
	canSmoothWith = null
