////Wood floors, carpeted wood floors, broken wood floors, and broken carpeted wood floors.

/turf/open/floor/wood/f13
	icon = 'fallout/icons/turf/floors_1.dmi'
	icon_state = "housewood1"
	desc = "Wooden flooring."

/turf/open/floor/wood/f13/Initialize()
	. = ..()
	if(icon_state == "housewood1")
		icon_state = "housewood[rand(1,3)]" //This automatically gives wooden floors a nice varied pattern.

/turf/open/floor/wood/f13/broken
	icon_state = "housebase"
	desc = "Rotting wooden flooring."

/turf/open/floor/wood/f13/broken/slightlybroken1
	icon_state = "housewood1-broken"

/turf/open/floor/wood/f13/broken/slightlybroken2
	icon_state = "housewood2-broken"

/turf/open/floor/wood/f13/broken/left
	icon_state = "housewood3-broken1"

/turf/open/floor/wood/f13/broken/right
	icon_state = "housewood3-broken2"

/turf/open/floor/wood/f13/carpet
	icon_state = "carpet"
	footstep = FOOTSTEP_CARPET
	barefootstep = FOOTSTEP_CARPET_BAREFOOT
	clawfootstep = FOOTSTEP_CARPET_BAREFOOT
	desc = "Carpeted wooden flooring."

/turf/open/floor/wood/f13/carpet/broken
	desc = "Rotting carpeted wooden flooring."
	icon_state = "damaged1"

/turf/open/floor/wood/f13/carpet/broken/alt
	icon_state = "damaged"

/turf/open/floor/wood/f13/carpet/broken/left1
	icon_state = "torncarpet1"

/turf/open/floor/wood/f13/carpet/broken/left2
	icon_state = "torncarpet2"

/turf/open/floor/wood/f13/carpet/broken/left3
	icon_state = "torncarpet3"

/turf/open/floor/wood/f13/carpet/broken/left4
	icon_state = "torncarpet4"

/turf/open/floor/wood/f13/carpet/broken/left5
	icon_state = "torncarpet15"

/turf/open/floor/wood/f13/carpet/broken/right1
	icon_state = "torncarpet7"

/turf/open/floor/wood/f13/carpet/broken/right2
	icon_state = "torncarpet9"

/turf/open/floor/wood/f13/carpet/broken/right3
	icon_state = "torncarpet10"

/turf/open/floor/wood/f13/carpet/broken/right4
	icon_state = "torncarpet11"

/turf/open/floor/wood/f13/carpet/broken/right5
	icon_state = "torncarpet12"

/turf/open/floor/wood/f13/stage_tl
	icon_state = "housewood_stage_top_left"
/turf/open/floor/wood/f13/stage_t
	icon_state = "housewood_stage_top"
/turf/open/floor/wood/f13/stage_l
	icon_state = "housewood_stage_left"
/turf/open/floor/wood/f13/stage_bl
	icon_state = "housewood_stage_bottom_left"
/turf/open/floor/wood/f13/stage_b
	icon_state = "housewood_stage_bottom"
/turf/open/floor/wood/f13/stage_tr
	icon_state = "housewood_stage_top_right"
/turf/open/floor/wood/f13/stage_r
	icon_state = "housewood_stage_right"
/turf/open/floor/wood/f13/stage_br
	icon_state = "housewood_stage_bottom_right"

//Plasteel (generic) floor tiles.

/turf/open/floor/plasteel/f13/vault_floor
	name = "vault floor"
	icon = 'fallout/icons/turf/floors_2.dmi'
	icon_state = "vault_floor"
	planetary_atmos = FALSE // They're _inside_ a vault.

/turf/open/floor/plasteel/f13/vault_floor/plating
	icon_state = "plating"

/turf/open/floor/plasteel/f13/vault_floor/floor
	icon_state = "floor"

/turf/open/floor/plasteel/f13/vault_floor/floor/floorsolid
	icon_state = "floorsolid"

	/* DARK TILES */

/turf/open/floor/plasteel/f13/vault_floor/dark
	icon_state = "dark"

/turf/open/floor/plasteel/f13/vault_floor/dark/darksolid
	icon_state = "darksolid"

	/* WHITE TILES */

/turf/open/floor/plasteel/f13/vault_floor/white
	icon_state = "white"

/turf/open/floor/plasteel/f13/vault_floor/white/whitesolid
	icon_state = "whitesolid"

	/* RED TILES */

/turf/open/floor/plasteel/f13/vault_floor/red
	icon_state = "redfull"

/turf/open/floor/plasteel/f13/vault_floor/red/whiteredfull
	icon_state = "whiteredfull"

/turf/open/floor/plasteel/f13/vault_floor/red/side
	icon_state = "red"

/turf/open/floor/plasteel/f13/vault_floor/red/corner
	icon_state = "redcorner"

/turf/open/floor/plasteel/f13/vault_floor/red/redchess
	icon_state = "redchess"

/turf/open/floor/plasteel/f13/vault_floor/red/redchess/redchess2
	icon_state = "redchess2"

/turf/open/floor/plasteel/f13/vault_floor/red/white/side
	icon_state = "whitered"

/turf/open/floor/plasteel/f13/vault_floor/red/white/corner
	icon_state = "whiteredcorner"

/turf/open/floor/plasteel/f13/vault_floor/red/white/whiteredchess
	icon_state = "whiteredchess"

/turf/open/floor/plasteel/f13/vault_floor/red/white/whiteredchess/whiteredchess2
	icon_state = "whiteredchess2"

	/* BLUE TILES */

/turf/open/floor/plasteel/f13/vault_floor/blue
	icon_state = "bluefull"

/turf/open/floor/plasteel/f13/vault_floor/blue/whitebluefull
	icon_state = "whitebluefull"

/turf/open/floor/plasteel/f13/vault_floor/blue/side
	icon_state = "blue"

/turf/open/floor/plasteel/f13/vault_floor/blue/corner
	icon_state = "bluecorner"

/turf/open/floor/plasteel/f13/vault_floor/blue/bluechess
	icon_state = "bluechess"

/turf/open/floor/plasteel/f13/vault_floor/blue/bluechess/bluechess2
	icon_state = "bluechess2"

/turf/open/floor/plasteel/f13/vault_floor/blue/white/side
	icon_state = "whiteblue"

/turf/open/floor/plasteel/f13/vault_floor/blue/white/corner
	icon_state = "whitebluecorner"

/turf/open/floor/plasteel/f13/vault_floor/blue/white/whitebluechess
	icon_state = "whitebluechess"

/turf/open/floor/plasteel/f13/vault_floor/blue/white/whitebluechess/whitebluechess2
	icon_state = "whitebluechess2"

	/* GREEN TILES */

/turf/open/floor/plasteel/f13/vault_floor/green
	icon_state = "greenfull"

/turf/open/floor/plasteel/f13/vault_floor/green/whitegreenfull
	icon_state = "whitegreenfull"

/turf/open/floor/plasteel/f13/vault_floor/green/side
	icon_state = "green"

/turf/open/floor/plasteel/f13/vault_floor/green/corner
	icon_state = "greencorner"

/turf/open/floor/plasteel/f13/vault_floor/green/greenchess
	icon_state = "greenchess"

/turf/open/floor/plasteel/f13/vault_floor/green/greenchess/greenchess2
	icon_state = "greenchess2"

/turf/open/floor/plasteel/f13/vault_floor/green/white/side
	icon_state = "whitegreen"

/turf/open/floor/plasteel/f13/vault_floor/green/white/corner
	icon_state = "whitegreencorner"

/turf/open/floor/plasteel/f13/vault_floor/green/white/whitegreenchess
	icon_state = "whitegreenchess"

/turf/open/floor/plasteel/f13/vault_floor/green/white/whitegreenchess/whitegreenchess2
	icon_state = "whitegreenchess2"

	/* YELLOW TILES */

/turf/open/floor/plasteel/f13/vault_floor/yellow
	icon_state = "yellowfull"

/turf/open/floor/plasteel/f13/vault_floor/yellow/whiteyellowfull
	icon_state = "whiteyellowfull"

/turf/open/floor/plasteel/f13/vault_floor/yellow/side
	icon_state = "yellow"

/turf/open/floor/plasteel/f13/vault_floor/yellow/corner
	icon_state = "yellowcorner"

/turf/open/floor/plasteel/f13/vault_floor/yellow/yellowchess
	icon_state = "yellowchess"

/turf/open/floor/plasteel/f13/vault_floor/yellow/yellowchess/yellowchess2
	icon_state = "yellowchess2"

/turf/open/floor/plasteel/f13/vault_floor/yellow/white/side
	icon_state = "whiteyellow"

/turf/open/floor/plasteel/f13/vault_floor/yellow/white/corner
	icon_state = "whiteyellowcorner"

/turf/open/floor/plasteel/f13/vault_floor/yellow/white/whiteyellowchess
	icon_state = "whiteyellowchess"

/turf/open/floor/plasteel/f13/vault_floor/yellow/white/whiteyellowchess/whiteyellowchess2
	icon_state = "whiteyellowchess2"

	/* PURPLE TILES */

/turf/open/floor/plasteel/f13/vault_floor/purple
	icon_state = "purplefull"

/turf/open/floor/plasteel/f13/vault_floor/purple/whitepurplefull
	icon_state = "whitepurplefull"

/turf/open/floor/plasteel/f13/vault_floor/purple/side
	icon_state = "purple"

/turf/open/floor/plasteel/f13/vault_floor/purple/corner
	icon_state = "purplecorner"

/turf/open/floor/plasteel/f13/vault_floor/purple/purplechess
	icon_state = "purplechess"

/turf/open/floor/plasteel/f13/vault_floor/purple/purplechess/purplechess2
	icon_state = "purplechess2"

/turf/open/floor/plasteel/f13/vault_floor/purple/white/side
	icon_state = "whitepurple"

/turf/open/floor/plasteel/f13/vault_floor/purple/white/corner
	icon_state = "whitepurplecorner"

/turf/open/floor/plasteel/f13/vault_floor/purple/white/whitepurplechess
	icon_state = "whitepurplechess"

/turf/open/floor/plasteel/f13/vault_floor/purple/white/whitepurplechess/whitepurplechess2
	icon_state = "whitepurplechess2"


	/* neutral TILES */

/turf/open/floor/plasteel/f13/vault_floor/neutral
	icon_state = "neutralfull2"

/turf/open/floor/plasteel/f13/vault_floor/neutral/neutralsolid
	icon_state = "neutralsolid"

/turf/open/floor/plasteel/f13/vault_floor/neutral/side
	icon_state = "neutral"

/turf/open/floor/plasteel/f13/vault_floor/neutral/corner
	icon_state = "neutralcorner"

/turf/open/floor/plasteel/f13/vault_floor/neutral/neutralchess
	icon_state = "neutralchess"

/turf/open/floor/plasteel/f13/vault_floor/neutral/neutralchess/neutralchess2
	icon_state = "neutralchess2"

/turf/open/floor/plasteel/f13/vault_floor/neutral/white/side
	icon_state = "whiteneutral"

/turf/open/floor/plasteel/f13/vault_floor/neutral/white/corner
	icon_state = "whiteneutralcorner"

/turf/open/floor/plasteel/f13/vault_floor/neutral/white/whitepurplechess
	icon_state = "whitepurplechess"

/turf/open/floor/plasteel/f13/vault_floor/neutral/white/whitepurplechess/whitepurplechess2
	icon_state = "whitepurplechess2"

	/* MISC TILES */

/turf/open/floor/plasteel/f13/vault_floor/misc/bar
	icon_state = "bar"

/turf/open/floor/plasteel/f13/vault_floor/misc/cafeteria
	icon_state = "cafeteria"

/turf/open/floor/plasteel/f13/vault_floor/misc/cmo
	icon_state = "cmo"

/turf/open/floor/plasteel/f13/vault_floor/misc/rarewhite
	icon_state = "rarewhite"

/turf/open/floor/plasteel/f13/vault_floor/misc/rarewhite/rarecyan
	icon_state = "rarecyan"

/turf/open/floor/plasteel/f13/vault_floor/misc/rarewhite/side
	icon_state = "rare"

/turf/open/floor/plasteel/f13/vault_floor/misc/rarewhite/corner
	icon_state = "rarecorner"

/turf/open/floor/plasteel/f13/vault_floor/misc/recharge
	icon_state = "recharge"

/turf/open/floor/plasteel/f13/vault_floor/misc/plaque
	icon_state = "plaque"

/turf/open/floor/plasteel/f13/vault_floor/misc/vaultrust
	icon_state = "vaultrust"

/turf/open/floor/plasteel/f13/vault_floor/misc/vault1
	icon_state = "vault1"


/turf/open/floor/circuit/f13_blue
	icon = 'fallout/icons/turf/floors_2.dmi'
	icon_state = "bcircuit2"
	icon_normal = "bcircuit2"

/turf/open/floor/circuit/f13_blue/off
	icon_state = "bcircuitoff2"
	on = FALSE

/turf/open/floor/circuit/f13_green
	icon = 'fallout/icons/turf/floors_2.dmi'
	icon_state = "gcircuit2"
	icon_normal = "gcircuit2"
	light_color = LIGHT_COLOR_GREEN
	floor_tile = /obj/item/stack/tile/circuit/green

/turf/open/floor/circuit/f13_green/off
	icon_state = "gcircuitoff2"
	on = FALSE

/turf/open/floor/circuit/f13_red
	icon = 'fallout/icons/turf/floors_2.dmi'
	icon_state = "rcircuit1"
	icon_normal = "rcircuit1"
	light_color = LIGHT_COLOR_FLARE
	floor_tile = /obj/item/stack/tile/circuit/red

/turf/open/floor/circuit/f13_red/off
	icon_state = "rcircuitoff1"
	on = FALSE

/turf/open/floor/plasteel/f13
	icon = 'fallout/icons/turf/floors_2.dmi'
	icon_state = "floor"
