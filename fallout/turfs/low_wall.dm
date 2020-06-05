/obj/structure/table/low_wall
	name = "base class low wall"
	desc = "Abandon hope"
	icon = 'icons/obj/smooth_structures/table.dmi'
	icon_state = "table"
	smooth = SMOOTH_TRUE|SMOOTH_OLD
	canSmoothWith = list(/obj/structure/table/low_wall, /turf/closed/wall/f13)

/obj/structure/table/low_wall/metal
	name = "low metal wall"
	desc = ""
	icon = 'fallout/icons/turf/walls/metal.dmi'
	icon_state = "metal_low0"
	icon_type_smooth = "metal_low"
	canSmoothWith = list(/obj/structure/table/low_wall/metal, /turf/closed/wall/f13/metal,
	/obj/structure/table/low_wall/metal/rust, /turf/closed/wall/f13/metal/rust,
	/obj/structure/table/low_wall/reinforced/bunker, /turf/closed/wall/r_wall/f13/bunker,
	/obj/structure/table/low_wall/reinforced/metal/rust, /turf/closed/wall/r_wall/f13/metal/rust,
	/obj/structure/table/low_wall/reinforced/metal, /turf/closed/wall/r_wall/f13/metal)

/obj/structure/table/low_wall/metal/rust
	name = "low rusted metal wall"
	desc = ""
	icon = 'fallout/icons/turf/walls/rust.dmi'
	icon_state = "rust_low0"
	icon_type_smooth = "rust_low"

/obj/structure/table/low_wall/wood
	name = "low wood wall"
	desc = ""
	icon = 'fallout/icons/turf/walls/wood.dmi'
	icon_state = "wood_low0"
	icon_type_smooth = "wood_low"
	canSmoothWith = list(/obj/structure/table/low_wall/wood, /turf/closed/wall/f13/wood)

/obj/structure/table/low_wall/scrap
	name = "low scrap wall"
	desc = ""
	icon = 'fallout/icons/turf/walls/scrap.dmi'
	icon_state = "scrap_low0"
	canSmoothWith = list(/obj/structure/table/low_wall/scrap, /turf/closed/wall/f13/scrap)

/obj/structure/table/low_wall/adobe
	name = "low adobe wall"
	desc = ""
	icon = 'fallout/icons/turf/walls/adobe.dmi'
	icon_state = "adobe_low0"
	icon_type_smooth = "adobe_low"
	canSmoothWith = list(/obj/structure/table/low_wall/adobe, /turf/closed/wall/f13/adobe)

/obj/structure/table/low_wall/brick
	name = "low brick wall"
	desc = ""
	icon = 'fallout/icons/turf/walls/brick.dmi'
	icon_state = "brick_low0"
	icon_type_smooth = "brick_low"
	canSmoothWith = list(/obj/structure/table/low_wall/brick, /turf/closed/wall/f13/brick)

/obj/structure/table/low_wall/reinforced
	name = "base class low reinforced wall"
	desc = ""
	icon = 'icons/obj/smooth_structures/table.dmi'
	icon_state = "table"
	canSmoothWith = list(/obj/structure/table/low_wall/reinforced, /turf/closed/wall/r_wall/f13)

/obj/structure/table/low_wall/reinforced/metal
	name = "low reinforced metal wall"
	desc = ""
	icon = 'fallout/icons/turf/walls/reinforced_metal.dmi'
	icon_state = "reinforced_metal_low0"
	icon_type_smooth = "reinforced_metal_low"
	canSmoothWith = list(/obj/structure/table/low_wall/metal, /turf/closed/wall/f13/metal,
	/obj/structure/table/low_wall/metal/rust, /turf/closed/wall/f13/metal/rust,
	/obj/structure/table/low_wall/reinforced/bunker, /turf/closed/wall/r_wall/f13/bunker,
	/obj/structure/table/low_wall/reinforced/metal/rust, /turf/closed/wall/r_wall/f13/metal/rust,
	/obj/structure/table/low_wall/reinforced/metal, /turf/closed/wall/r_wall/f13/metal)

/obj/structure/table/low_wall/reinforced/metal/rust
	name = "rusted low reinforced metal wall"
	desc = ""
	icon = 'fallout/icons/turf/walls/reinforced_rust.dmi'
	icon_state = "reinforced_rust_low0"
	icon_type_smooth = "reinforced_rust_low"

/obj/structure/table/low_wall/reinforced/bunker
	name = "low bunker wall"
	desc = ""
	icon = 'fallout/icons/turf/walls/bunker.dmi'
	icon_state = "bunker_low0"
	icon_type_smooth = "bunker_low"
	canSmoothWith = list(/obj/structure/table/low_wall/metal, /turf/closed/wall/f13/metal,
	/obj/structure/table/low_wall/metal/rust, /turf/closed/wall/f13/metal/rust,
	/obj/structure/table/low_wall/reinforced/bunker, /turf/closed/wall/r_wall/f13/bunker,
	/obj/structure/table/low_wall/reinforced/metal/rust, /turf/closed/wall/r_wall/f13/metal/rust,
	/obj/structure/table/low_wall/reinforced/metal, /turf/closed/wall/r_wall/f13/metal)
