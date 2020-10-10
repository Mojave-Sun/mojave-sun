/obj/structure/table/low_wall
	name = "base class low wall"
	desc = "Abandon hope"
	icon = 'icons/obj/smooth_structures/table.dmi'
	icon_state = "table-0"
	base_icon_state = "table"
	smoothing_flags = SMOOTH_BITMASK
	smoothing_groups = list(SMOOTH_GROUP_FALLOUT_WALL,SMOOTH_GROUP_FALLOUT_WINDOW)
	canSmoothWith= list(SMOOTH_GROUP_FALLOUT_WALL,SMOOTH_GROUP_FALLOUT_WINDOW)


/obj/structure/table/low_wall/metal
	name = "low metal wall"
	desc = ""
	icon = 'fallout/icons/turf/walls/metal.dmi'
	icon_state = "metal_low-0"
	base_icon_state = "metal_low"
	smoothing_groups = list(SMOOTH_GROUP_FALLOUT_WALL_METAL,SMOOTH_GROUP_FALLOUT_WINDOW)
	canSmoothWith= list(SMOOTH_GROUP_FALLOUT_WALL_METAL,SMOOTH_GROUP_FALLOUT_WINDOW)

/obj/structure/table/low_wall/metal/rust
	name = "low rusted metal wall"
	desc = ""
	icon = 'fallout/icons/turf/walls/rust.dmi'
	icon_state = "rust_low-0"
	base_icon_state = "rust_low"

/obj/structure/table/low_wall/wood
	name = "low wood wall"
	desc = ""
	icon = 'fallout/icons/turf/walls/wood.dmi'
	icon_state = "wood_low-0"
	base_icon_state = "wood_low"
	smoothing_groups = list(SMOOTH_GROUP_FALLOUT_WALL_WOOD,SMOOTH_GROUP_FALLOUT_WINDOW)
	canSmoothWith= list(SMOOTH_GROUP_FALLOUT_WALL_WOOD,SMOOTH_GROUP_FALLOUT_WINDOW)

/obj/structure/table/low_wall/scrap
	name = "low scrap wall"
	desc = ""
	icon = 'fallout/icons/turf/walls/scrap.dmi'
	icon_state = "scrap_low-0"
	base_icon_state = "scrap_low"
	smoothing_groups = list(SMOOTH_GROUP_FALLOUT_WALL_SCRAP,SMOOTH_GROUP_FALLOUT_WINDOW)
	canSmoothWith= list(SMOOTH_GROUP_FALLOUT_WALL_SCRAP,SMOOTH_GROUP_FALLOUT_WINDOW)

/obj/structure/table/low_wall/adobe
	name = "low adobe wall"
	desc = ""
	icon = 'fallout/icons/turf/walls/adobe.dmi'
	icon_state = "adobe_low-0"
	base_icon_state = "adobe_low"
	smoothing_groups = list(SMOOTH_GROUP_FALLOUT_WALL_ADOBE,SMOOTH_GROUP_FALLOUT_WINDOW)
	canSmoothWith= list(SMOOTH_GROUP_FALLOUT_WALL_ADOBE,SMOOTH_GROUP_FALLOUT_WINDOW)

/obj/structure/table/low_wall/brick
	name = "low brick wall"
	desc = ""
	icon = 'fallout/icons/turf/walls/brick.dmi'
	icon_state = "brick_low-0"
	base_icon_state = "brick_low"
	smoothing_groups = list(SMOOTH_GROUP_FALLOUT_WALL_BRICK,SMOOTH_GROUP_FALLOUT_WINDOW)
	canSmoothWith= list(SMOOTH_GROUP_FALLOUT_WALL_BRICK,SMOOTH_GROUP_FALLOUT_WINDOW)

/obj/structure/table/low_wall/reinforced
	name = "base class low reinforced wall"
	desc = ""
	icon = 'icons/obj/smooth_structures/table.dmi'
	icon_state = "table-0"
	base_icon_state = "table"
	smoothing_groups = list(SMOOTH_GROUP_FALLOUT_WALL_REINFORCED,SMOOTH_GROUP_FALLOUT_WINDOW)
	canSmoothWith= list(SMOOTH_GROUP_FALLOUT_WALL_REINFORCED,SMOOTH_GROUP_FALLOUT_WINDOW)

/obj/structure/table/low_wall/reinforced/metal
	name = "low reinforced metal wall"
	desc = ""
	icon = 'fallout/icons/turf/walls/reinforced_metal.dmi'
	icon_state = "reinforced_metal_low-0"
	base_icon_state = "reinforced_metal_low"
	smoothing_groups = list(SMOOTH_GROUP_FALLOUT_WALL_METAL,SMOOTH_GROUP_FALLOUT_WINDOW)
	canSmoothWith= list(SMOOTH_GROUP_FALLOUT_WALL_METAL,SMOOTH_GROUP_FALLOUT_WINDOW)

/obj/structure/table/low_wall/reinforced/metal/rust
	name = "rusted low reinforced metal wall"
	desc = ""
	icon = 'fallout/icons/turf/walls/reinforced_rust.dmi'
	icon_state = "reinforced_rust_low-0"
	base_icon_state = "reinforced_rust_low"

/obj/structure/table/low_wall/reinforced/bunker
	name = "low bunker wall"
	desc = ""
	icon = 'fallout/icons/turf/walls/bunker.dmi'
	icon_state = "bunker_low-0"
	base_icon_state = "bunker_low"
	smoothing_groups = list(SMOOTH_GROUP_FALLOUT_WALL_METAL,SMOOTH_GROUP_FALLOUT_WINDOW)
	canSmoothWith= list(SMOOTH_GROUP_FALLOUT_WALL_METAL,SMOOTH_GROUP_FALLOUT_WINDOW)
