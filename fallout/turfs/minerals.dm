/turf/closed/mineral/random/f13
	icon = 'fallout/icons/turf/walls/mineral.dmi'
	smooth_icon = 'fallout/icons/turf/walls/mineral.dmi'
	icon_state = "mineral0"
	smooth = SMOOTH_TRUE|SMOOTH_OLD
	icon_type_smooth = "mineral"
	canSmoothWith = list(/obj/structure/table/low_wall/metal, /turf/closed/wall/f13/metal,
	/obj/structure/table/low_wall/metal/rust, /turf/closed/wall/f13/metal/rust,
	/obj/structure/table/low_wall/reinforced/bunker, /turf/closed/wall/r_wall/f13/bunker,
	/obj/structure/table/low_wall/reinforced/metal/rust, /turf/closed/wall/r_wall/f13/metal/rust,
	/obj/structure/table/low_wall/reinforced/metal, /turf/closed/wall/r_wall/f13/metal,
	/obj/structure/table/low_wall/brick, /turf/closed/wall/f13/brick,
	/obj/structure/table/low_wall/adobe, /turf/closed/wall/f13/adobe,
	/obj/structure/table/low_wall/scrap, /turf/closed/wall/f13/scrap,
	/obj/structure/table/low_wall/wood, /turf/closed/wall/f13/wood,
	/turf/closed/mineral/random/f13)
	baseturfs = /turf/open/floor/plating/ground/mountain
	turf_type = /turf/open/floor/plating/ground/mountain
	environment_type = "waste"
	mineralSpawnChanceList = list(/obj/item/stack/ore/uranium = 5, /obj/item/stack/ore/diamond = 1, /obj/item/stack/ore/gold = 10,
		/obj/item/stack/ore/silver = 12, /obj/item/stack/ore/plasma = 20, /obj/item/stack/ore/iron = 40, /obj/item/stack/ore/titanium = 11)


/turf/closed/indestructible/rock/f13
	name = "dense rock"
	desc = "An extremely densely-packed rock, most mining tools or explosives would never get through this."
	icon = 'fallout/icons/turf/walls/mineral.dmi'
	icon_state = "mineral0"
	smooth = SMOOTH_TRUE|SMOOTH_OLD
	icon_type_smooth = "mineral"
	canSmoothWith = list(/obj/structure/table/low_wall/metal, /turf/closed/wall/f13/metal,
	/obj/structure/table/low_wall/metal/rust, /turf/closed/wall/f13/metal/rust,
	/obj/structure/table/low_wall/reinforced/bunker, /turf/closed/wall/r_wall/f13/bunker,
	/obj/structure/table/low_wall/reinforced/metal/rust, /turf/closed/wall/r_wall/f13/metal/rust,
	/obj/structure/table/low_wall/reinforced/metal, /turf/closed/wall/r_wall/f13/metal,
	/obj/structure/table/low_wall/brick, /turf/closed/wall/f13/brick,
	/obj/structure/table/low_wall/adobe, /turf/closed/wall/f13/adobe,
	/obj/structure/table/low_wall/scrap, /turf/closed/wall/f13/scrap,
	/obj/structure/table/low_wall/wood, /turf/closed/wall/f13/wood,
	/turf/closed/mineral/random/f13)

/turf/closed/mineral/random/f13/get_smooth_underlay_icon(mutable_appearance/underlay_appearance, turf/asking_turf, adjacency_dir)
	underlay_appearance.icon = 'fallout/icons/turf/mining.dmi'
	underlay_appearance.icon_state = "rockfloor1"
	return TRUE
