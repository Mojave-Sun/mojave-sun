/////////////////////////////////////////////////////////////
///////////////////// MOJAVE SUN FLOORS /////////////////////
/////////////////////////////////////////////////////////////

////Wood floors////

/turf/open/floor/wood/ms13
	icon = 'mojave/icons/turf/floors.dmi'
	icon_state = "housewood"
	desc = "Wooden flooring."
	var/has_alternate_states = TRUE //for damage, alts etc.
	var/alternate_states = 1
	var/has_base_states = TRUE //for starting variety (mainly wood)
	var/base_states = 2

/turf/open/floor/wood/ms13/Initialize()
	. = ..()
	if(has_alternate_states)
		if(prob(50))
			icon_state = "[icon_state]_[rand(1,(alternate_states))]"
		else if(has_base_states && prob(80))
			icon_state = "[icon_state][rand(1,(base_states))]"

/turf/open/floor/wood/ms13/burn_tile()
	burnt = 1
	return //We lack sprites for this. To do: make overlay here instead.

/turf/open/floor/wood/ms13/break_tile()
	broken = 1
	return

/turf/open/floor/wood/ms13/crowbar_act(mob/living/user, obj/item/I)
	return FALSE

/turf/open/floor/wood/ms13/try_replace_tile(obj/item/stack/tile/T, mob/user, params)
	return

/turf/open/floor/wood/ms13/common
	icon_state = "wood_common"
	alternate_states = 6

/turf/open/floor/wood/ms13/fancy
	icon_state = "wood_fancy"
	alternate_states = 6
	has_base_states = FALSE

/turf/open/floor/wood/ms13/wide
	icon_state = "wood_wide"
	alternate_states = 6

/turf/open/floor/wood/ms13/mosaic
	icon_state = "wood_mosaic"
	alternate_states = 6

////Broken Wood/Foundation floors////

/obj/structure/ms13/foundation
	name = "floor"
	icon = 'mojave/icons/turf/floors.dmi'
	icon_state = "wood_foundation"
	desc = "Exposed wooden foundation."
	density = FALSE
	anchored = TRUE
	armor = list(MELEE = 50, BULLET = 50, LASER = 0, ENERGY = 0, BOMB = 50, BIO = 0, RAD = 0, FIRE = 80, ACID = 50)
	max_integrity = 300
	obj_flags = CAN_BE_HIT | BLOCK_Z_OUT_DOWN | BLOCK_Z_IN_UP
	layer = TURF_LAYER
	plane = FLOOR_PLANE

/obj/structure/ms13/foundation/Initialize(mapload)
	. = ..()
	for(var/obj/structure/ms13/foundation/LAT in loc)
		if(LAT == src)
			continue
		stack_trace("multiple foundations found in ([loc.x], [loc.y], [loc.z])")
		return INITIALIZE_HINT_QDEL

/obj/structure/ms13/foundation/variantone
	icon_state = "wood_foundation_broken_1"

/obj/structure/ms13/foundation/varianttwo
	icon_state = "wood_foundation_broken_2"

/obj/structure/ms13/foundation/variantthree
	icon_state = "wood_foundation_broken_3"

/obj/structure/ms13/foundation/variantfour
	icon_state = "wood_foundation_broken_4"

/obj/structure/ms13/foundation/variantfive
	icon_state = "wood_foundation_broken_5"

/obj/structure/ms13/foundation/variantsix
	icon_state = "wood_foundation_broken_6"

/obj/structure/ms13/foundation/common/variantone
	icon_state = "wood_common_broken_1"

/obj/structure/ms13/foundation/common/varianttwo
	icon_state = "wood_common_broken_2"

/obj/structure/ms13/foundation/common/variantthree
	icon_state = "wood_common_broken_3"

/obj/structure/ms13/foundation/common/variantfour
	icon_state = "wood_common_broken_4"

/obj/structure/ms13/foundation/common/variantfive
	icon_state = "wood_common_broken_5"

/obj/structure/ms13/foundation/common/variantsix
	icon_state = "wood_common_broken_6"

/obj/structure/ms13/foundation/fancy/variantone
	icon_state = "wood_fancy_broken_1"

/obj/structure/ms13/foundation/fancy/varianttwo
	icon_state = "wood_fancy_broken_2"

/obj/structure/ms13/foundation/fancy/variantthree
	icon_state = "wood_fancy_broken_3"

/obj/structure/ms13/foundation/fancy/variantfour
	icon_state = "wood_fancy_broken_4"

/obj/structure/ms13/foundation/fancy/variantfive
	icon_state = "wood_fancy_broken_5"

/obj/structure/ms13/foundation/fancy/variantsix
	icon_state = "wood_fancy_broken_6"

/obj/structure/ms13/foundation/wide/variantone
	icon_state = "wood_wide_broken_1"

/obj/structure/ms13/foundation/wide/varianttwo
	icon_state = "wood_wide_broken_2"

/obj/structure/ms13/foundation/wide/variantthree
	icon_state = "wood_wide_broken_3"

/obj/structure/ms13/foundation/wide/variantfour
	icon_state = "wood_wide_broken_4"

/obj/structure/ms13/foundation/wide/variantfive
	icon_state = "wood_wide_broken_5"

/obj/structure/ms13/foundation/wide/variantsix
	icon_state = "wood_wide_broken_6"

/obj/structure/ms13/foundation/mosaic/variantone
	icon_state = "wood_mosaic_broken_1"

/obj/structure/ms13/foundation/mosaic/varianttwo
	icon_state = "wood_mosaic_broken_2"

/obj/structure/ms13/foundation/mosaic/variantthree
	icon_state = "wood_mosaic_broken_3"

/obj/structure/ms13/foundation/mosaic/variantfour
	icon_state = "wood_mosaic_broken_4"

/obj/structure/ms13/foundation/mosaic/variantfive
	icon_state = "wood_mosaic_broken_5"

/obj/structure/ms13/foundation/mosaic/variantsix
	icon_state = "wood_mosaic_broken_6"

/turf/open/floor/wood/ms13/broken
	icon_state = "housebase"
	desc = "Rotting wooden flooring."
	has_alternate_states = FALSE
	has_base_states = FALSE

////Carpet floors////

/turf/open/floor/wood/ms13/carpet //remove this shitty old one on new repo
	icon_state = "carpet"
	footstep = FOOTSTEP_CARPET
	barefootstep = FOOTSTEP_CARPET_BAREFOOT
	clawfootstep = FOOTSTEP_CARPET_BAREFOOT
	desc = "Carpeted wooden flooring."
	has_alternate_states = FALSE
	has_base_states = FALSE

/turf/open/floor/wood/ms13/carpet/infra
	name = "carpet"
	desc = "Carpeted wooden flooring."
	icon_state = "carpet-255"
	base_icon_state = "carpet"
	smoothing_flags = SMOOTH_BITMASK
	smoothing_groups = list(SMOOTH_GROUP_TURF_OPEN, SMOOTH_GROUP_CARPET)
	canSmoothWith = list(SMOOTH_GROUP_CARPET)
	flags_1 = NONE
	bullet_bounce_sound = null
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	tiled_dirt = FALSE
	has_alternate_states = FALSE
	has_base_states = FALSE

/turf/open/floor/wood/ms13/carpet/infra/red
	icon = 'mojave/icons/turf/carpet_red.dmi'
	smoothing_groups = list(SMOOTH_GROUP_TURF_OPEN, SMOOTH_GROUP_MS13_CARPET_RED)
	canSmoothWith = list(SMOOTH_GROUP_MS13_CARPET_RED)

/turf/open/floor/wood/ms13/carpet/infra/blue
	icon = 'mojave/icons/turf/carpet_blue.dmi'
	smoothing_groups = list(SMOOTH_GROUP_TURF_OPEN, SMOOTH_GROUP_MS13_CARPET_BLUE)
	canSmoothWith = list(SMOOTH_GROUP_MS13_CARPET_BLUE)

/turf/open/floor/wood/ms13/carpet/infra/green
	icon = 'mojave/icons/turf/carpet_green.dmi'
	smoothing_groups = list(SMOOTH_GROUP_TURF_OPEN,SMOOTH_GROUP_MS13_CARPET_GREEN)
	canSmoothWith = list(SMOOTH_GROUP_MS13_CARPET_GREEN)

////Tiled Floors////

/obj/item/stack/tile/plasteel/ms13 //We need this because upstream turf code is not great.
	turf_type = /turf/open/floor/plasteel/ms13

/turf/open/floor/plasteel/ms13
	icon = 'mojave/icons/turf/floors.dmi'
	icon_state = "floor"
	floor_tile = /obj/item/stack/tile/plasteel/ms13
	desc = "Tiled flooring."
	var/has_alternate_states = FALSE
	var/alternate_states

/turf/open/floor/plasteel/ms13/burn_tile()
	burnt = 1
	return //We're not spriting damage variations for the millions of tiles we have. To do: make overlay here instead.

/turf/open/floor/plasteel/ms13/break_tile()
	broken = 1
	return

/turf/open/floor/plasteel/ms13/crowbar_act(mob/living/user, obj/item/I)
	return FALSE

/turf/open/floor/plasteel/ms13/try_replace_tile(obj/item/stack/tile/T, mob/user, params)
	return

/turf/open/floor/plasteel/ms13/Initialize()
	. = ..()
	if(has_alternate_states)
		if(prob(50))
			icon_state = "[icon_state]_[rand(1,(alternate_states))]"

/turf/open/floor/plasteel/ms13/tile
	icon_state = "grey"
	has_alternate_states = TRUE
	alternate_states = 8

/turf/open/floor/plasteel/ms13/tile/long
	icon_state = "grey_long"
	alternate_states = 6

/turf/open/floor/plasteel/ms13/tile/blue
	icon_state = "blue"

/turf/open/floor/plasteel/ms13/tile/blue/long
	icon_state = "blue_long"
	alternate_states = 6

/turf/open/floor/plasteel/ms13/tile/brown
	icon_state = "brown"

/turf/open/floor/plasteel/ms13/tile/fancy
	icon_state = "fancy"
	alternate_states = 7

/turf/open/floor/plasteel/ms13/tile/cafeteria
	icon_state = "cafeteria"
	alternate_states = 3

////Metal Floors////

/turf/open/floor/plasteel/ms13/metal
	footstep = FOOTSTEP_PLATING //clonk
	barefootstep = FOOTSTEP_HARD_BAREFOOT
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	icon_state = "steel_industrial"
	desc = "Metal flooring."

/turf/open/floor/plasteel/ms13/metal/plate
	icon_state = "steel_solid"
	has_alternate_states = TRUE
	alternate_states = 3

/turf/open/floor/plasteel/ms13/metal/border
	icon_state = "steel_industrial_b"

/turf/open/floor/plasteel/ms13/metal/border/corner
	icon_state = "steel_industrial_b_corner"

/turf/open/floor/plasteel/ms13/metal/border/sides
	icon_state = "steel_industrial_b_sides"

/turf/open/floor/plasteel/ms13/metal/border/end
	icon_state = "steel_industrial_b_end"

/turf/open/floor/plasteel/ms13/metal/grate
	icon_state = "steel_grate"

/turf/open/floor/plasteel/ms13/metal/grate/alt
	icon_state = "steel_grate_alt"

/turf/open/floor/plasteel/ms13/metal/grate/border
	icon_state = "steel_grate_border"

/turf/open/floor/plasteel/ms13/metal/grate/border/warning
	icon_state = "steel_grate_warning"

/turf/open/floor/plasteel/ms13/metal/warning
	icon_state = "steel_warning"

/turf/open/floor/plasteel/ms13/metal/stayclear
	icon_state = "steel_stayclear"

/turf/open/floor/plasteel/ms13/metal/rust
	icon_state = "rust_industrial"

/turf/open/floor/plasteel/ms13/metal/rust/alt
	icon_state = "rust_industrial_alt"

/turf/open/floor/plasteel/ms13/metal/rust/split
	icon_state = "rust_industrial_split"

/turf/open/floor/plasteel/ms13/metal/walkway
	icon_state = "steel_walkway"

/turf/open/floor/plasteel/ms13/metal/walkway/corner
	icon_state = "steel_walkway_corner"

/turf/open/floor/plasteel/ms13/metal/walkway/end
	icon_state = "steel_walkway_end"

/turf/open/floor/plasteel/ms13/metal/walkway/rust
	icon_state = "rust_walkway"

/turf/open/floor/plasteel/ms13/metal/walkway/corner/rust
	icon_state = "rust_walkway_corner"

/turf/open/floor/plasteel/ms13/metal/walkway/end/rust
	icon_state = "rust_walkway_end"

////Concrete Floors////

/turf/open/floor/plasteel/ms13/concrete
	icon_state = "concrete_big"
	desc = "Concrete slabs."

/turf/open/floor/plasteel/ms13/concrete/small
	icon_state = "concrete_small"
	has_alternate_states = TRUE
	alternate_states = 5

////Ceramic Floors////

/turf/open/floor/plasteel/ms13/ceramic
	icon_state = "ceramic"
	desc = "Ceramic tiles."
	has_alternate_states = TRUE
	alternate_states = 2

/turf/open/floor/plasteel/ms13/ceramic/ornate
	icon_state = "ornate"
	alternate_states = 3

/turf/open/floor/plasteel/ms13/ceramic/sierra
	icon_state = "sierra"
	alternate_states = 3

/////////////////////////////////////////////////////////////
///////////////// MOJAVE SUN OLD FLOORS /////////////////////
/////////////////////////////////////////////////////////////

//To be Patched out WYCI (New Repo)//

////Wood floors////

/turf/open/floor/wood/ms13/broken/slightlybroken1
	icon_state = "housewood1-broken"

/turf/open/floor/wood/ms13/broken/slightlybroken2
	icon_state = "housewood2-broken"

/turf/open/floor/wood/ms13/broken/left
	icon_state = "housewood3-broken1"

/turf/open/floor/wood/ms13/broken/right
	icon_state = "housewood3-broken2"

/turf/open/floor/wood/ms13/stage_tl
	icon_state = "housewood_stage_top_left"
/turf/open/floor/wood/ms13/stage_t
	icon_state = "housewood_stage_top"
/turf/open/floor/wood/ms13/stage_l
	icon_state = "housewood_stage_left"
/turf/open/floor/wood/ms13/stage_bl
	icon_state = "housewood_stage_bottom_left"
/turf/open/floor/wood/ms13/stage_b
	icon_state = "housewood_stage_bottom"
/turf/open/floor/wood/ms13/stage_tr
	icon_state = "housewood_stage_top_right"
/turf/open/floor/wood/ms13/stage_r
	icon_state = "housewood_stage_right"
/turf/open/floor/wood/ms13/stage_br
	icon_state = "housewood_stage_bottom_right"

////Carpet floors////

/turf/open/floor/wood/ms13/carpet/broken
	desc = "Rotting carpeted wooden flooring."
	icon_state = "damaged1"

/turf/open/floor/wood/ms13/carpet/broken/alt
	icon_state = "damaged"

/turf/open/floor/wood/ms13/carpet/broken/left1
	icon_state = "torncarpet1"

/turf/open/floor/wood/ms13/carpet/broken/left2
	icon_state = "torncarpet2"

/turf/open/floor/wood/ms13/carpet/broken/left3
	icon_state = "torncarpet3"

/turf/open/floor/wood/ms13/carpet/broken/left4
	icon_state = "torncarpet4"

/turf/open/floor/wood/ms13/carpet/broken/left5
	icon_state = "torncarpet15"

/turf/open/floor/wood/ms13/carpet/broken/right1
	icon_state = "torncarpet7"

/turf/open/floor/wood/ms13/carpet/broken/right2
	icon_state = "torncarpet9"

/turf/open/floor/wood/ms13/carpet/broken/right3
	icon_state = "torncarpet10"

/turf/open/floor/wood/ms13/carpet/broken/right4
	icon_state = "torncarpet11"

/turf/open/floor/wood/ms13/carpet/broken/right5
	icon_state = "torncarpet12"

//Plasteel (generic) floor tiles.

/turf/open/floor/plasteel/ms13/_dirty
	icon = 'mojave/icons/turf/floors.dmi'
	icon_state = "floordirty"

/turf/open/floor/plasteel/ms13/_rusty
	icon = 'mojave/icons/turf/floors.dmi'
	icon_state = "floorrusty"

/turf/open/floor/plasteel/ms13/_full
	icon_state = "floorfull"

/turf/open/floor/plasteel/ms13/_full/dirty
	icon_state = "floorfulldirty"

/turf/open/floor/plasteel/ms13/_full/rusty
	icon_state = "floorfullrusty"

	/* DARK TILES */

/turf/open/floor/plasteel/ms13/dark
	icon_state = "dark"

/turf/open/floor/plasteel/ms13/dark/dirty
	icon_state = "darkdirty"

/turf/open/floor/plasteel/ms13/dark/rusty
	icon_state = "darkrusty"

/turf/open/floor/plasteel/ms13/dark/full
	icon_state = "darkfull"

/turf/open/floor/plasteel/ms13/dark/full/dirty
	icon_state = "darkfulldirty"

/turf/open/floor/plasteel/ms13/dark/full/rusty
	icon_state = "darkfullrusty"

	/* WHITE TILES */

/turf/open/floor/plasteel/ms13/white
	icon_state = "white"

/turf/open/floor/plasteel/ms13/white/dirty
	icon_state = "whitedirty"

/turf/open/floor/plasteel/ms13/white/rusty
	icon_state = "whiterusty"

/turf/open/floor/plasteel/ms13/white/full
	icon_state = "whitefull"

/turf/open/floor/plasteel/ms13/white/full/dirty
	icon_state = "whitefulldirty"

/turf/open/floor/plasteel/ms13/white/full/rusty
	icon_state = "whitefullrusty"

	/* RED TILES */

/turf/open/floor/plasteel/ms13/red
	icon_state = "red"

/turf/open/floor/plasteel/ms13/red/_dirty
	icon_state = "reddirty"

/turf/open/floor/plasteel/ms13/red/_rusty
	icon_state = "redrusty"

/turf/open/floor/plasteel/ms13/red/_full
	icon_state = "redfull"

/turf/open/floor/plasteel/ms13/red/_full/dirty
	icon_state = "redfulldirty"

/turf/open/floor/plasteel/ms13/red/_full/rusty
	icon_state = "redfullrusty"

/turf/open/floor/plasteel/ms13/red/side
	icon_state = "redside"

/turf/open/floor/plasteel/ms13/red/side/dirty
	icon_state = "redsidedirty"

/turf/open/floor/plasteel/ms13/red/side/rusty
	icon_state = "redsiderusty"

/turf/open/floor/plasteel/ms13/red/corner
	icon_state = "redcorner"

/turf/open/floor/plasteel/ms13/red/corner/dirty
	icon_state = "redcornerdirty"

/turf/open/floor/plasteel/ms13/red/corner/rusty
	icon_state = "redcornerrusty"

/turf/open/floor/plasteel/ms13/red/redchess
	icon_state = "redchess"

/turf/open/floor/plasteel/ms13/red/redchess/dirty
	icon_state = "redchessdirty"

/turf/open/floor/plasteel/ms13/red/redchess/rusty
	icon_state = "redchessrusty"

/turf/open/floor/plasteel/ms13/red/redchess/redchess2
	icon_state = "redchess2"

/turf/open/floor/plasteel/ms13/red/redchess/redchess2/dirty
	icon_state = "redchess2dirty"

/turf/open/floor/plasteel/ms13/red/redchess/redchess2/rusty
	icon_state = "redchess2rusty"

/turf/open/floor/plasteel/ms13/red/white/side
	icon_state = "whitered"

/turf/open/floor/plasteel/ms13/red/white/side/dirty
	icon_state = "whitereddirty"

/turf/open/floor/plasteel/ms13/red/white/side/rusty
	icon_state = "whiteredrusty"

/turf/open/floor/plasteel/ms13/red/white/corner
	icon_state = "whiteredcorner"

/turf/open/floor/plasteel/ms13/red/white/corner/dirty
	icon_state = "whiteredcornerdirty"

/turf/open/floor/plasteel/ms13/red/white/corner/rusty
	icon_state = "whiteredcornerrusty"

/turf/open/floor/plasteel/ms13/red/white/whiteredchess
	icon_state = "whiteredchess"

/turf/open/floor/plasteel/ms13/red/white/whiteredchess/dirty
	icon_state = "whiteredchessdirty"

/turf/open/floor/plasteel/ms13/red/white/whiteredchess/rusty
	icon_state = "whiteredchessrusty"

/turf/open/floor/plasteel/ms13/red/white/whiteredchess/whiteredchess2
	icon_state = "whiteredchess2"

/turf/open/floor/plasteel/ms13/red/white/whiteredchess/whiteredchess2/dirty
	icon_state = "whiteredchess2dirty"

/turf/open/floor/plasteel/ms13/red/white/whiteredchess/whiteredchess2/rusty
	icon_state = "whiteredchess2rusty"

	/* BLUE TILES */

/turf/open/floor/plasteel/ms13/blue
	icon_state = "blueold"

/turf/open/floor/plasteel/ms13/blue/_dirty
	icon_state = "bluedirty"

/turf/open/floor/plasteel/ms13/blue/_rusty
	icon_state = "bluerusty"

/turf/open/floor/plasteel/ms13/blue/_full
	icon_state = "bluefull"

/turf/open/floor/plasteel/ms13/blue/_full/dirty
	icon_state = "bluefulldirty"

/turf/open/floor/plasteel/ms13/blue/_full/rusty
	icon_state = "bluefullrusty"

/turf/open/floor/plasteel/ms13/blue/side
	icon_state = "blueside"

/turf/open/floor/plasteel/ms13/blue/side/dirty
	icon_state = "bluesidedirty"

/turf/open/floor/plasteel/ms13/blue/side/rusty
	icon_state = "bluesiderusty"

/turf/open/floor/plasteel/ms13/blue/corner
	icon_state = "bluecorner"

/turf/open/floor/plasteel/ms13/blue/corner/dirty
	icon_state = "bluecornerdirty"

/turf/open/floor/plasteel/ms13/blue/corner/rusty
	icon_state = "bluecornerrusty"

/turf/open/floor/plasteel/ms13/blue/bluechess
	icon_state = "bluechess"

/turf/open/floor/plasteel/ms13/blue/bluechess/dirty
	icon_state = "bluechessdirty"

/turf/open/floor/plasteel/ms13/blue/bluechess/rusty
	icon_state = "bluechessrusty"

/turf/open/floor/plasteel/ms13/blue/bluechess/bluechess2
	icon_state = "bluechess2"

/turf/open/floor/plasteel/ms13/blue/bluechess/bluechess2/dirty
	icon_state = "bluechess2dirty"

/turf/open/floor/plasteel/ms13/blue/bluechess/bluechess2/rusty
	icon_state = "bluechess2rusty"

/turf/open/floor/plasteel/ms13/blue/white/side
	icon_state = "whiteblue"

/turf/open/floor/plasteel/ms13/blue/white/side/dirty
	icon_state = "whitebluedirty"

/turf/open/floor/plasteel/ms13/blue/white/side/rusty
	icon_state = "whitebluerusty"

/turf/open/floor/plasteel/ms13/blue/white/corner
	icon_state = "whitebluecorner"

/turf/open/floor/plasteel/ms13/blue/white/corner/dirty
	icon_state = "whitebluecornerdirty"

/turf/open/floor/plasteel/ms13/blue/white/corner/rusty
	icon_state = "whitebluecornerrusty"

/turf/open/floor/plasteel/ms13/blue/white/whitebluechess
	icon_state = "whitebluechess"

/turf/open/floor/plasteel/ms13/blue/white/whitebluechess/dirty
	icon_state = "whitebluechessdirty"

/turf/open/floor/plasteel/ms13/blue/white/whitebluechess/rusty
	icon_state = "whitebluechessrusty"

/turf/open/floor/plasteel/ms13/blue/white/whitebluechess/whitebluechess2
	icon_state = "whitebluechess2"

/turf/open/floor/plasteel/ms13/blue/white/whitebluechess/whitebluechess2/dirty
	icon_state = "whitebluechess2dirty"

/turf/open/floor/plasteel/ms13/blue/white/whitebluechess/whitebluechess2/rusty
	icon_state = "whitebluechess2rusty"

	/* GREEN TILES */

/turf/open/floor/plasteel/ms13/green
	icon_state = "green"

/turf/open/floor/plasteel/ms13/green/_dirty
	icon_state = "greendirty"

/turf/open/floor/plasteel/ms13/green/_rusty
	icon_state = "greenrusty"

/turf/open/floor/plasteel/ms13/green/_full
	icon_state = "greenfull"

/turf/open/floor/plasteel/ms13/green/_full/dirty
	icon_state = "greenfulldirty"

/turf/open/floor/plasteel/ms13/green/_full/rusty
	icon_state = "greenfullrusty"

/turf/open/floor/plasteel/ms13/green/side
	icon_state = "greenside"

/turf/open/floor/plasteel/ms13/green/side/dirty
	icon_state = "greensidedirty"

/turf/open/floor/plasteel/ms13/green/side/rusty
	icon_state = "greensiderusty"

/turf/open/floor/plasteel/ms13/green/corner
	icon_state = "greencorner"

/turf/open/floor/plasteel/ms13/green/corner/dirty
	icon_state = "greencornerdirty"

/turf/open/floor/plasteel/ms13/green/corner/rusty
	icon_state = "greencornerrusty"

/turf/open/floor/plasteel/ms13/green/greenchess
	icon_state = "greenchess"

/turf/open/floor/plasteel/ms13/green/greenchess/dirty
	icon_state = "greenchessdirty"

/turf/open/floor/plasteel/ms13/green/greenchess/rusty
	icon_state = "greenchessrusty"

/turf/open/floor/plasteel/ms13/green/greenchess/greenchess2
	icon_state = "greenchess2"

/turf/open/floor/plasteel/ms13/green/greenchess/greenchess2/dirty
	icon_state = "greenchess2dirty"

/turf/open/floor/plasteel/ms13/green/greenchess/greenchess2/rusty
	icon_state = "greenchess2rusty"

/turf/open/floor/plasteel/ms13/green/white/side
	icon_state = "whitegreen"

/turf/open/floor/plasteel/ms13/green/white/side/dirty
	icon_state = "whitegreendirty"

/turf/open/floor/plasteel/ms13/green/white/side/rusty
	icon_state = "whitegreenrusty"

/turf/open/floor/plasteel/ms13/green/white/corner
	icon_state = "whitegreencorner"

/turf/open/floor/plasteel/ms13/green/white/corner/dirty
	icon_state = "whitegreencornerdirty"

/turf/open/floor/plasteel/ms13/green/white/corner/rusty
	icon_state = "whitegreencornerrusty"

/turf/open/floor/plasteel/ms13/green/white/whitegreenchess
	icon_state = "whitegreenchess"

/turf/open/floor/plasteel/ms13/green/white/whitegreenchess/dirty
	icon_state = "whitegreenchessdirty"

/turf/open/floor/plasteel/ms13/green/white/whitegreenchess/rusty
	icon_state = "whitegreenchessrusty"

/turf/open/floor/plasteel/ms13/green/white/whitegreenchess/whitegreenchess2
	icon_state = "whitegreenchess2"

/turf/open/floor/plasteel/ms13/green/white/whitegreenchess/whitegreenchess2/dirty
	icon_state = "whitegreenchess2dirty"

/turf/open/floor/plasteel/ms13/green/white/whitegreenchess/whitegreenchess2/rusty
	icon_state = "whitegreenchess2rusty"

	/* YELLOW TILES */

/turf/open/floor/plasteel/ms13/yellow
	icon_state = "yellow"

/turf/open/floor/plasteel/ms13/yellow/_dirty
	icon_state = "yellowdirty"

/turf/open/floor/plasteel/ms13/yellow/_rusty
	icon_state = "yellowrusty"

/turf/open/floor/plasteel/ms13/yellow/_full
	icon_state = "yellowfull"

/turf/open/floor/plasteel/ms13/yellow/_full/dirty
	icon_state = "yellowfulldirty"

/turf/open/floor/plasteel/ms13/yellow/_full/rusty
	icon_state = "yellowfullrusty"

/turf/open/floor/plasteel/ms13/yellow/side
	icon_state = "yellowside"

/turf/open/floor/plasteel/ms13/yellow/side/dirty
	icon_state = "yellowsidedirty"

/turf/open/floor/plasteel/ms13/yellow/side/rusty
	icon_state = "yellowsiderusty"

/turf/open/floor/plasteel/ms13/yellow/corner
	icon_state = "yellowcorner"

/turf/open/floor/plasteel/ms13/yellow/corner/dirty
	icon_state = "yellowcornerdirty"

/turf/open/floor/plasteel/ms13/yellow/corner/rusty
	icon_state = "yellowcornerrusty"

/turf/open/floor/plasteel/ms13/yellow/yellowchess
	icon_state = "yellowchess"

/turf/open/floor/plasteel/ms13/yellow/yellowchess/dirty
	icon_state = "yellowchessdirty"

/turf/open/floor/plasteel/ms13/yellow/yellowchess/rusty
	icon_state = "yellowchessrusty"

/turf/open/floor/plasteel/ms13/yellow/yellowchess/yellowchess2
	icon_state = "yellowchess2"

/turf/open/floor/plasteel/ms13/yellow/yellowchess/yellowchess2/dirty
	icon_state = "yellowchess2dirty"

/turf/open/floor/plasteel/ms13/yellow/yellowchess/yellowchess2/rusty
	icon_state = "yellowchess2rusty"

/turf/open/floor/plasteel/ms13/yellow/white/side
	icon_state = "whiteyellow"

/turf/open/floor/plasteel/ms13/yellow/white/side/dirty
	icon_state = "whiteyellowdirty"

/turf/open/floor/plasteel/ms13/yellow/white/side/rusty
	icon_state = "whiteyellowrusty"

/turf/open/floor/plasteel/ms13/yellow/white/corner
	icon_state = "whiteyellowcorner"

/turf/open/floor/plasteel/ms13/yellow/white/corner/dirty
	icon_state = "whiteyellowcornerdirty"

/turf/open/floor/plasteel/ms13/yellow/white/corner/rusty
	icon_state = "whiteyellowcornerrusty"

/turf/open/floor/plasteel/ms13/yellow/white/whiteyellowchess
	icon_state = "whiteyellowchess"

/turf/open/floor/plasteel/ms13/yellow/white/whiteyellowchess/dirty
	icon_state = "whiteyellowchessdirty"

/turf/open/floor/plasteel/ms13/yellow/white/whiteyellowchess/rusty
	icon_state = "whiteyellowchessrusty"

/turf/open/floor/plasteel/ms13/yellow/white/whiteyellowchess/whiteyellowchess2
	icon_state = "whiteyellowchess2"

/turf/open/floor/plasteel/ms13/yellow/white/whiteyellowchess/whiteyellowchess2/dirty
	icon_state = "whiteyellowchess2dirty"

/turf/open/floor/plasteel/ms13/yellow/white/whiteyellowchess/whiteyellowchess2/rusty
	icon_state = "whiteyellowchess2rusty"

	/* PURPLE TILES */

/turf/open/floor/plasteel/ms13/purple
	icon_state = "purple"

/turf/open/floor/plasteel/ms13/purple/_dirty
	icon_state = "purpledirty"

/turf/open/floor/plasteel/ms13/purple/_rusty
	icon_state = "purplerusty"

/turf/open/floor/plasteel/ms13/purple/_full
	icon_state = "purplefull"

/turf/open/floor/plasteel/ms13/purple/_full/dirty
	icon_state = "purplefulldirty"

/turf/open/floor/plasteel/ms13/purple/_full/rusty
	icon_state = "purplefullrusty"

/turf/open/floor/plasteel/ms13/purple/side
	icon_state = "purpleside"

/turf/open/floor/plasteel/ms13/purple/side/dirty
	icon_state = "purplesidedirty"

/turf/open/floor/plasteel/ms13/purple/side/rusty
	icon_state = "purplesiderusty"

/turf/open/floor/plasteel/ms13/purple/corner
	icon_state = "purplecorner"

/turf/open/floor/plasteel/ms13/purple/corner/dirty
	icon_state = "purplecornerdirty"

/turf/open/floor/plasteel/ms13/purple/corner/rusty
	icon_state = "purplecornerrusty"

/turf/open/floor/plasteel/ms13/purple/purplechess
	icon_state = "purplechess"

/turf/open/floor/plasteel/ms13/purple/purplechess/dirty
	icon_state = "purplechessdirty"

/turf/open/floor/plasteel/ms13/purple/purplechess/rusty
	icon_state = "purplechessrusty"

/turf/open/floor/plasteel/ms13/purple/purplechess/purplechess2
	icon_state = "purplechess2"

/turf/open/floor/plasteel/ms13/purple/purplechess/purplechess2/dirty
	icon_state = "purplechess2dirty"

/turf/open/floor/plasteel/ms13/purple/purplechess/purplechess2/rusty
	icon_state = "purplechess2rusty"

/turf/open/floor/plasteel/ms13/purple/white/side
	icon_state = "whitepurple"

/turf/open/floor/plasteel/ms13/purple/white/side/dirty
	icon_state = "whitepurpledirty"

/turf/open/floor/plasteel/ms13/purple/white/side/rusty
	icon_state = "whitepurplerusty"

/turf/open/floor/plasteel/ms13/purple/white/corner
	icon_state = "whitepurplecorner"

/turf/open/floor/plasteel/ms13/purple/white/corner/dirty
	icon_state = "whitepurplecornerdirty"

/turf/open/floor/plasteel/ms13/purple/white/corner/rusty
	icon_state = "whitepurplecornerrusty"

/turf/open/floor/plasteel/ms13/purple/white/whitepurplechess
	icon_state = "whitepurplechess"

/turf/open/floor/plasteel/ms13/purple/white/whitepurplechess/dirty
	icon_state = "whitepurplechessdirty"

/turf/open/floor/plasteel/ms13/purple/white/whitepurplechess/rusty
	icon_state = "whitepurplechessrusty"

/turf/open/floor/plasteel/ms13/purple/white/whitepurplechess/whitepurplechess2
	icon_state = "whitepurplechess2"

/turf/open/floor/plasteel/ms13/purple/white/whitepurplechess/whitepurplechess2/dirty
	icon_state = "whitepurplechess2dirty"

/turf/open/floor/plasteel/ms13/purple/white/whitepurplechess/whitepurplechess2/rusty
	icon_state = "whitepurplechess2rusty"

	/* TEAL TILES */

/turf/open/floor/plasteel/ms13/teal
	icon_state = "teal"

/turf/open/floor/plasteel/ms13/teal/_dirty
	icon_state = "tealdirty"

/turf/open/floor/plasteel/ms13/teal/_rusty
	icon_state = "tealrusty"

/turf/open/floor/plasteel/ms13/teal/_full
	icon_state = "tealfull"

/turf/open/floor/plasteel/ms13/teal/_full/dirty
	icon_state = "tealfulldirty"

/turf/open/floor/plasteel/ms13/teal/_full/rusty
	icon_state = "tealfullrusty"

/turf/open/floor/plasteel/ms13/teal/side
	icon_state = "tealside"

/turf/open/floor/plasteel/ms13/teal/side/dirty
	icon_state = "tealsidedirty"

/turf/open/floor/plasteel/ms13/teal/side/rusty
	icon_state = "tealsiderusty"

/turf/open/floor/plasteel/ms13/teal/corner
	icon_state = "tealcorner"

/turf/open/floor/plasteel/ms13/teal/corner/dirty
	icon_state = "tealcornerdirty"

/turf/open/floor/plasteel/ms13/teal/corner/rusty
	icon_state = "tealcornerrusty"

/turf/open/floor/plasteel/ms13/teal/tealchess
	icon_state = "tealchess"

/turf/open/floor/plasteel/ms13/teal/tealchess/dirty
	icon_state = "tealchessdirty"

/turf/open/floor/plasteel/ms13/teal/tealchess/rusty
	icon_state = "tealchessrusty"

/turf/open/floor/plasteel/ms13/teal/tealchess/tealchess2
	icon_state = "tealchess2"

/turf/open/floor/plasteel/ms13/teal/tealchess/tealchess2/dirty
	icon_state = "tealchess2dirty"

/turf/open/floor/plasteel/ms13/teal/tealchess/tealchess2/rusty
	icon_state = "tealchess2rusty"

/turf/open/floor/plasteel/ms13/teal/white/side
	icon_state = "whiteteal"

/turf/open/floor/plasteel/ms13/teal/white/side/dirty
	icon_state = "whitetealdirty"

/turf/open/floor/plasteel/ms13/teal/white/side/rusty
	icon_state = "whitetealrusty"

/turf/open/floor/plasteel/ms13/teal/white/corner
	icon_state = "whitetealcorner"

/turf/open/floor/plasteel/ms13/teal/white/corner/dirty
	icon_state = "whitetealcornerdirty"

/turf/open/floor/plasteel/ms13/teal/white/corner/rusty
	icon_state = "whitetealcornerrusty"

/turf/open/floor/plasteel/ms13/teal/white/whitetealchess
	icon_state = "whitetealchess"

/turf/open/floor/plasteel/ms13/teal/white/whitetealchess/dirty
	icon_state = "whitetealchessdirty"

/turf/open/floor/plasteel/ms13/teal/white/whitetealchess/rusty
	icon_state = "whitetealchessrusty"

/turf/open/floor/plasteel/ms13/teal/white/whitetealchess/whitetealchess2
	icon_state = "whitetealchess2"

/turf/open/floor/plasteel/ms13/teal/white/whitetealchess/whitetealchess2/dirty
	icon_state = "whitetealchess2dirty"

/turf/open/floor/plasteel/ms13/teal/white/whitetealchess/whitetealchess2/rusty
	icon_state = "whitetealchess2rusty"

	/* MISC TILES */

/turf/open/floor/plasteel/ms13/misc/bar
	icon_state = "bar"

/turf/open/floor/plasteel/ms13/misc/cafeteria
	icon_state = "cafeteriaold"

/turf/open/floor/plasteel/ms13/misc/rarewhite
	icon_state = "rarewhite"

/turf/open/floor/plasteel/ms13/misc/rarewhite/rarecyan
	icon_state = "rarecyan"

/turf/open/floor/plasteel/ms13/misc/rarewhite/side
	icon_state = "rare"

/turf/open/floor/plasteel/ms13/misc/rarewhite/corner
	icon_state = "rarecorner"

/turf/open/floor/plasteel/ms13/misc/rarewhite/rarewhitechess
	icon_state = "rarewhitechess"

/turf/open/floor/plasteel/ms13/misc/rarewhite/rarewhitechess2
	icon_state = "rarewhitechess2"

/turf/open/floor/plasteel/ms13/teal/white/whitetealchess/whitetealchess2/rusty
	icon_state = "whitetealchess2rusty"

/turf/open/floor/plasteel/ms13/misc/medical
	icon_state = "medical"
