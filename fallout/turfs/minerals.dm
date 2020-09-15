/turf/closed/mineral/random/f13
	icon = 'fallout/icons/turf/walls/mineral.dmi'
	smooth_icon = 'fallout/icons/turf/walls/mineral.dmi'
	icon_state = "mineral0"
	smoothing_flags = SMOOTH_BORDER|SMOOTH_SIMPLE
	icon_type_smooth = "mineral"
	smoothing_groups = list(SMOOTH_GROUP_FALLOUT_MINERALS)
	baseturfs = /turf/open/floor/plating/ground/mountain
	turf_type = /turf/open/floor/plating/ground/mountain
	environment_type = "waste"
	mineralSpawnChanceList = list(/obj/item/stack/ore/uranium = 5, /obj/item/stack/ore/diamond = 1, /obj/item/stack/ore/gold = 10,
		/obj/item/stack/ore/silver = 12, /obj/item/stack/ore/plasma = 20, /obj/item/stack/ore/iron = 40, /obj/item/stack/ore/titanium = 11)

/turf/closed/mineral/random/f13/Initialize()
	. = ..()
	underlays += mutable_appearance('fallout/icons/turf/mining.dmi', "rockfloor1", TURF_LAYER)
	pixel_x = 4
	pixel_y = 4

/turf/closed/indestructible/rock/f13
	name = "dense rock"
	desc = "An extremely densely-packed rock, most mining tools or explosives would never get through this."
	icon = 'fallout/icons/turf/walls/indestructible_rock.dmi'
	icon_state = "indestructible0"
	smoothing_flags = SMOOTH_BORDER|SMOOTH_SIMPLE
	icon_type_smooth = "indestructible"
	smoothing_groups = list(SMOOTH_GROUP_FALLOUT_MINERALS)

/turf/closed/indestructible/rock/f13/Initialize()
	. = ..()
	underlays += mutable_appearance('fallout/icons/turf/mining.dmi', "rockfloor1", TURF_LAYER)
