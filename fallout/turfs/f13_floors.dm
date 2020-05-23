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


/turf/open/floor/plasteel/f13
	icon = 'fallout/icons/turf/floors_2.dmi'
	icon_state = "floor"

/turf/open/floor/plasteel/f13/_dirty
	icon = 'fallout/icons/turf/floors_2.dmi'
	icon_state = "floordirty"

/turf/open/floor/plasteel/f13/_rusty
	icon = 'fallout/icons/turf/floors_2.dmi'
	icon_state = "floorrusty"

/turf/open/floor/plasteel/f13/_full
	icon_state = "floorfull"

/turf/open/floor/plasteel/f13/_full/dirty
	icon_state = "floorfulldirty"

/turf/open/floor/plasteel/f13/_full/rusty
	icon_state = "floorfullrusty"

	/* DARK TILES */

/turf/open/floor/plasteel/f13/dark
	icon_state = "dark"

/turf/open/floor/plasteel/f13/dark/dirty
	icon_state = "darkdirty"

/turf/open/floor/plasteel/f13/dark/rusty
	icon_state = "darkrusty"

/turf/open/floor/plasteel/f13/dark/full
	icon_state = "darkfull"

/turf/open/floor/plasteel/f13/dark/full/dirty
	icon_state = "darkfulldirty"

/turf/open/floor/plasteel/f13/dark/full/rusty
	icon_state = "darkfullrusty"

	/* WHITE TILES */

/turf/open/floor/plasteel/f13/white
	icon_state = "white"

/turf/open/floor/plasteel/f13/white/dirty
	icon_state = "whitedirty"

/turf/open/floor/plasteel/f13/white/rusty
	icon_state = "whiterusty"

/turf/open/floor/plasteel/f13/white/full
	icon_state = "whitefull"

/turf/open/floor/plasteel/f13/white/full/dirty
	icon_state = "whitefulldirty"

/turf/open/floor/plasteel/f13/white/full/rusty
	icon_state = "whitefullrusty"

	/* RED TILES */

/turf/open/floor/plasteel/f13/red
	icon_state = "red"

/turf/open/floor/plasteel/f13/red/_dirty
	icon_state = "reddirty"

/turf/open/floor/plasteel/f13/red/_rusty
	icon_state = "redrusty"

/turf/open/floor/plasteel/f13/red/_full
	icon_state = "redfull"

/turf/open/floor/plasteel/f13/red/_full/dirty
	icon_state = "redfulldirty"

/turf/open/floor/plasteel/f13/red/_full/rusty
	icon_state = "redfullrusty"

/turf/open/floor/plasteel/f13/red/side
	icon_state = "redside"

/turf/open/floor/plasteel/f13/red/side/dirty
	icon_state = "redsidedirty"

/turf/open/floor/plasteel/f13/red/side/rusty
	icon_state = "redsiderusty"

/turf/open/floor/plasteel/f13/red/corner
	icon_state = "redcorner"

/turf/open/floor/plasteel/f13/red/corner/dirty
	icon_state = "redcornerdirty"

/turf/open/floor/plasteel/f13/red/corner/rusty
	icon_state = "redcornerrusty"

/turf/open/floor/plasteel/f13/red/redchess
	icon_state = "redchess"

/turf/open/floor/plasteel/f13/red/redchess/dirty
	icon_state = "redchessdirty"

/turf/open/floor/plasteel/f13/red/redchess/rusty
	icon_state = "redchessrusty"

/turf/open/floor/plasteel/f13/red/redchess/redchess2
	icon_state = "redchess2"

/turf/open/floor/plasteel/f13/red/redchess/redchess2/dirty
	icon_state = "redchess2dirty"

/turf/open/floor/plasteel/f13/red/redchess/redchess2/rusty
	icon_state = "redchess2rusty"

/turf/open/floor/plasteel/f13/red/white/side
	icon_state = "whitered"

/turf/open/floor/plasteel/f13/red/white/side/dirty
	icon_state = "whitereddirty"

/turf/open/floor/plasteel/f13/red/white/side/rusty
	icon_state = "whiteredrusty"

/turf/open/floor/plasteel/f13/red/white/corner
	icon_state = "whiteredcorner"

/turf/open/floor/plasteel/f13/red/white/corner/dirty
	icon_state = "whiteredcornerdirty"

/turf/open/floor/plasteel/f13/red/white/corner/rusty
	icon_state = "whiteredcornerrusty"

/turf/open/floor/plasteel/f13/red/white/whiteredchess
	icon_state = "whiteredchess"

/turf/open/floor/plasteel/f13/red/white/whiteredchess/dirty
	icon_state = "whiteredchessdirty"

/turf/open/floor/plasteel/f13/red/white/whiteredchess/rusty
	icon_state = "whiteredchessrusty"

/turf/open/floor/plasteel/f13/red/white/whiteredchess/whiteredchess2
	icon_state = "whiteredchess2"

/turf/open/floor/plasteel/f13/red/white/whiteredchess/whiteredchess2/dirty
	icon_state = "whiteredchess2dirty"

/turf/open/floor/plasteel/f13/red/white/whiteredchess/whiteredchess2/rusty
	icon_state = "whiteredchess2rusty"

	/* BLUE TILES */

/turf/open/floor/plasteel/f13/blue
	icon_state = "blue"

/turf/open/floor/plasteel/f13/blue/_dirty
	icon_state = "bluedirty"

/turf/open/floor/plasteel/f13/blue/_rusty
	icon_state = "bluerusty"

/turf/open/floor/plasteel/f13/blue/_full
	icon_state = "bluefull"

/turf/open/floor/plasteel/f13/blue/_full/dirty
	icon_state = "bluefulldirty"

/turf/open/floor/plasteel/f13/blue/_full/rusty
	icon_state = "bluefullrusty"

/turf/open/floor/plasteel/f13/blue/side
	icon_state = "blueside"

/turf/open/floor/plasteel/f13/blue/side/dirty
	icon_state = "bluesidedirty"

/turf/open/floor/plasteel/f13/blue/side/rusty
	icon_state = "bluesiderusty"

/turf/open/floor/plasteel/f13/blue/corner
	icon_state = "bluecorner"

/turf/open/floor/plasteel/f13/blue/corner/dirty
	icon_state = "bluecornerdirty"

/turf/open/floor/plasteel/f13/blue/corner/rusty
	icon_state = "bluecornerrusty"

/turf/open/floor/plasteel/f13/blue/bluechess
	icon_state = "bluechess"

/turf/open/floor/plasteel/f13/blue/bluechess/dirty
	icon_state = "bluechessdirty"

/turf/open/floor/plasteel/f13/blue/bluechess/rusty
	icon_state = "bluechessrusty"

/turf/open/floor/plasteel/f13/blue/bluechess/bluechess2
	icon_state = "bluechess2"

/turf/open/floor/plasteel/f13/blue/bluechess/bluechess2/dirty
	icon_state = "bluechess2dirty"

/turf/open/floor/plasteel/f13/blue/bluechess/bluechess2/rusty
	icon_state = "bluechess2rusty"

/turf/open/floor/plasteel/f13/blue/white/side
	icon_state = "whiteblue"

/turf/open/floor/plasteel/f13/blue/white/side/dirty
	icon_state = "whitebluedirty"

/turf/open/floor/plasteel/f13/blue/white/side/rusty
	icon_state = "whitebluerusty"

/turf/open/floor/plasteel/f13/blue/white/corner
	icon_state = "whitebluecorner"

/turf/open/floor/plasteel/f13/blue/white/corner/dirty
	icon_state = "whitebluecornerdirty"

/turf/open/floor/plasteel/f13/blue/white/corner/rusty
	icon_state = "whitebluecornerrusty"

/turf/open/floor/plasteel/f13/blue/white/whitebluechess
	icon_state = "whitebluechess"

/turf/open/floor/plasteel/f13/blue/white/whitebluechess/dirty
	icon_state = "whitebluechessdirty"

/turf/open/floor/plasteel/f13/blue/white/whitebluechess/rusty
	icon_state = "whitebluechessrusty"

/turf/open/floor/plasteel/f13/blue/white/whitebluechess/whitebluechess2
	icon_state = "whitebluechess2"

/turf/open/floor/plasteel/f13/blue/white/whitebluechess/whitebluechess2/dirty
	icon_state = "whitebluechess2dirty"

/turf/open/floor/plasteel/f13/blue/white/whitebluechess/whitebluechess2/rusty
	icon_state = "whitebluechess2rusty"

	/* GREEN TILES */

/turf/open/floor/plasteel/f13/green
	icon_state = "green"

/turf/open/floor/plasteel/f13/green/_dirty
	icon_state = "greendirty"

/turf/open/floor/plasteel/f13/green/_rusty
	icon_state = "greenrusty"

/turf/open/floor/plasteel/f13/green/_full
	icon_state = "greenfull"

/turf/open/floor/plasteel/f13/green/_full/dirty
	icon_state = "greenfulldirty"

/turf/open/floor/plasteel/f13/green/_full/rusty
	icon_state = "greenfullrusty"

/turf/open/floor/plasteel/f13/green/side
	icon_state = "greenside"

/turf/open/floor/plasteel/f13/green/side/dirty
	icon_state = "greensidedirty"

/turf/open/floor/plasteel/f13/green/side/rusty
	icon_state = "greensiderusty"

/turf/open/floor/plasteel/f13/green/corner
	icon_state = "greencorner"

/turf/open/floor/plasteel/f13/green/corner/dirty
	icon_state = "greencornerdirty"

/turf/open/floor/plasteel/f13/green/corner/rusty
	icon_state = "greencornerrusty"

/turf/open/floor/plasteel/f13/green/greenchess
	icon_state = "greenchess"

/turf/open/floor/plasteel/f13/green/greenchess/dirty
	icon_state = "greenchessdirty"

/turf/open/floor/plasteel/f13/green/greenchess/rusty
	icon_state = "greenchessrusty"

/turf/open/floor/plasteel/f13/green/greenchess/greenchess2
	icon_state = "greenchess2"

/turf/open/floor/plasteel/f13/green/greenchess/greenchess2/dirty
	icon_state = "greenchess2dirty"

/turf/open/floor/plasteel/f13/green/greenchess/greenchess2/rusty
	icon_state = "greenchess2rusty"

/turf/open/floor/plasteel/f13/green/white/side
	icon_state = "whitegreen"

/turf/open/floor/plasteel/f13/green/white/side/dirty
	icon_state = "whitegreendirty"

/turf/open/floor/plasteel/f13/green/white/side/rusty
	icon_state = "whitegreenrusty"

/turf/open/floor/plasteel/f13/green/white/corner
	icon_state = "whitegreencorner"

/turf/open/floor/plasteel/f13/green/white/corner/dirty
	icon_state = "whitegreencornerdirty"

/turf/open/floor/plasteel/f13/green/white/corner/rusty
	icon_state = "whitegreencornerrusty"

/turf/open/floor/plasteel/f13/green/white/whitegreenchess
	icon_state = "whitegreenchess"

/turf/open/floor/plasteel/f13/green/white/whitegreenchess/dirty
	icon_state = "whitegreenchessdirty"

/turf/open/floor/plasteel/f13/green/white/whitegreenchess/rusty
	icon_state = "whitegreenchessrusty"

/turf/open/floor/plasteel/f13/green/white/whitegreenchess/whitegreenchess2
	icon_state = "whitegreenchess2"

/turf/open/floor/plasteel/f13/green/white/whitegreenchess/whitegreenchess2/dirty
	icon_state = "whitegreenchess2dirty"

/turf/open/floor/plasteel/f13/green/white/whitegreenchess/whitegreenchess2/rusty
	icon_state = "whitegreenchess2rusty"

	/* YELLOW TILES */

/turf/open/floor/plasteel/f13/yellow
	icon_state = "yellow"

/turf/open/floor/plasteel/f13/yellow/_dirty
	icon_state = "yellowdirty"

/turf/open/floor/plasteel/f13/yellow/_rusty
	icon_state = "yellowrusty"

/turf/open/floor/plasteel/f13/yellow/_full
	icon_state = "yellowfull"

/turf/open/floor/plasteel/f13/yellow/_full/dirty
	icon_state = "yellowfulldirty"

/turf/open/floor/plasteel/f13/yellow/_full/rusty
	icon_state = "yellowfullrusty"

/turf/open/floor/plasteel/f13/yellow/side
	icon_state = "yellowside"

/turf/open/floor/plasteel/f13/yellow/side/dirty
	icon_state = "yellowsidedirty"

/turf/open/floor/plasteel/f13/yellow/side/rusty
	icon_state = "yellowsiderusty"

/turf/open/floor/plasteel/f13/yellow/corner
	icon_state = "yellowcorner"

/turf/open/floor/plasteel/f13/yellow/corner/dirty
	icon_state = "yellowcornerdirty"

/turf/open/floor/plasteel/f13/yellow/corner/rusty
	icon_state = "yellowcornerrusty"

/turf/open/floor/plasteel/f13/yellow/yellowchess
	icon_state = "yellowchess"

/turf/open/floor/plasteel/f13/yellow/yellowchess/dirty
	icon_state = "yellowchessdirty"

/turf/open/floor/plasteel/f13/yellow/yellowchess/rusty
	icon_state = "yellowchessrusty"

/turf/open/floor/plasteel/f13/yellow/yellowchess/yellowchess2
	icon_state = "yellowchess2"

/turf/open/floor/plasteel/f13/yellow/yellowchess/yellowchess2/dirty
	icon_state = "yellowchess2dirty"

/turf/open/floor/plasteel/f13/yellow/yellowchess/yellowchess2/rusty
	icon_state = "yellowchess2rusty"

/turf/open/floor/plasteel/f13/yellow/white/side
	icon_state = "whiteyellow"

/turf/open/floor/plasteel/f13/yellow/white/side/dirty
	icon_state = "whiteyellowdirty"

/turf/open/floor/plasteel/f13/yellow/white/side/rusty
	icon_state = "whiteyellowrusty"

/turf/open/floor/plasteel/f13/yellow/white/corner
	icon_state = "whiteyellowcorner"

/turf/open/floor/plasteel/f13/yellow/white/corner/dirty
	icon_state = "whiteyellowcornerdirty"

/turf/open/floor/plasteel/f13/yellow/white/corner/rusty
	icon_state = "whiteyellowcornerrusty"

/turf/open/floor/plasteel/f13/yellow/white/whiteyellowchess
	icon_state = "whiteyellowchess"

/turf/open/floor/plasteel/f13/yellow/white/whiteyellowchess/dirty
	icon_state = "whiteyellowchessdirty"

/turf/open/floor/plasteel/f13/yellow/white/whiteyellowchess/rusty
	icon_state = "whiteyellowchessrusty"

/turf/open/floor/plasteel/f13/yellow/white/whiteyellowchess/whiteyellowchess2
	icon_state = "whiteyellowchess2"

/turf/open/floor/plasteel/f13/yellow/white/whiteyellowchess/whiteyellowchess2/dirty
	icon_state = "whiteyellowchess2dirty"

/turf/open/floor/plasteel/f13/yellow/white/whiteyellowchess/whiteyellowchess2/rusty
	icon_state = "whiteyellowchess2rusty"

	/* PURPLE TILES */

/turf/open/floor/plasteel/f13/purple
	icon_state = "purple"

/turf/open/floor/plasteel/f13/purple/_dirty
	icon_state = "purpledirty"

/turf/open/floor/plasteel/f13/purple/_rusty
	icon_state = "purplerusty"

/turf/open/floor/plasteel/f13/purple/_full
	icon_state = "purplefull"

/turf/open/floor/plasteel/f13/purple/_full/dirty
	icon_state = "purplefulldirty"

/turf/open/floor/plasteel/f13/purple/_full/rusty
	icon_state = "purplefullrusty"

/turf/open/floor/plasteel/f13/purple/side
	icon_state = "purpleside"

/turf/open/floor/plasteel/f13/purple/side/dirty
	icon_state = "purplesidedirty"

/turf/open/floor/plasteel/f13/purple/side/rusty
	icon_state = "purplesiderusty"

/turf/open/floor/plasteel/f13/purple/corner
	icon_state = "purplecorner"

/turf/open/floor/plasteel/f13/purple/corner/dirty
	icon_state = "purplecornerdirty"

/turf/open/floor/plasteel/f13/purple/corner/rusty
	icon_state = "purplecornerrusty"

/turf/open/floor/plasteel/f13/purple/purplechess
	icon_state = "purplechess"

/turf/open/floor/plasteel/f13/purple/purplechess/dirty
	icon_state = "purplechessdirty"

/turf/open/floor/plasteel/f13/purple/purplechess/rusty
	icon_state = "purplechessrusty"

/turf/open/floor/plasteel/f13/purple/purplechess/purplechess2
	icon_state = "purplechess2"

/turf/open/floor/plasteel/f13/purple/purplechess/purplechess2/dirty
	icon_state = "purplechess2dirty"

/turf/open/floor/plasteel/f13/purple/purplechess/purplechess2/rusty
	icon_state = "purplechess2rusty"

/turf/open/floor/plasteel/f13/purple/white/side
	icon_state = "whitepurple"

/turf/open/floor/plasteel/f13/purple/white/side/dirty
	icon_state = "whitepurpledirty"

/turf/open/floor/plasteel/f13/purple/white/side/rusty
	icon_state = "whitepurplerusty"

/turf/open/floor/plasteel/f13/purple/white/corner
	icon_state = "whitepurplecorner"

/turf/open/floor/plasteel/f13/purple/white/corner/dirty
	icon_state = "whitepurplecornerdirty"

/turf/open/floor/plasteel/f13/purple/white/corner/rusty
	icon_state = "whitepurplecornerrusty"

/turf/open/floor/plasteel/f13/purple/white/whitepurplechess
	icon_state = "whitepurplechess"

/turf/open/floor/plasteel/f13/purple/white/whitepurplechess/dirty
	icon_state = "whitepurplechessdirty"

/turf/open/floor/plasteel/f13/purple/white/whitepurplechess/rusty
	icon_state = "whitepurplechessrusty"

/turf/open/floor/plasteel/f13/purple/white/whitepurplechess/whitepurplechess2
	icon_state = "whitepurplechess2"

/turf/open/floor/plasteel/f13/purple/white/whitepurplechess/whitepurplechess2/dirty
	icon_state = "whitepurplechess2dirty"

/turf/open/floor/plasteel/f13/purple/white/whitepurplechess/whitepurplechess2/rusty
	icon_state = "whitepurplechess2rusty"

	/* TEAL TILES */

/turf/open/floor/plasteel/f13/teal
	icon_state = "teal"

/turf/open/floor/plasteel/f13/teal/_dirty
	icon_state = "tealdirty"

/turf/open/floor/plasteel/f13/teal/_rusty
	icon_state = "tealrusty"

/turf/open/floor/plasteel/f13/teal/_full
	icon_state = "tealfull"

/turf/open/floor/plasteel/f13/teal/_full/dirty
	icon_state = "tealfulldirty"

/turf/open/floor/plasteel/f13/teal/_full/rusty
	icon_state = "tealfullrusty"

/turf/open/floor/plasteel/f13/teal/side
	icon_state = "tealside"

/turf/open/floor/plasteel/f13/teal/side/dirty
	icon_state = "tealsidedirty"

/turf/open/floor/plasteel/f13/teal/side/rusty
	icon_state = "tealsiderusty"

/turf/open/floor/plasteel/f13/teal/corner
	icon_state = "tealcorner"

/turf/open/floor/plasteel/f13/teal/corner/dirty
	icon_state = "tealcornerdirty"

/turf/open/floor/plasteel/f13/teal/corner/rusty
	icon_state = "tealcornerrusty"

/turf/open/floor/plasteel/f13/teal/tealchess
	icon_state = "tealchess"

/turf/open/floor/plasteel/f13/teal/tealchess/dirty
	icon_state = "tealchessdirty"

/turf/open/floor/plasteel/f13/teal/tealchess/rusty
	icon_state = "tealchessrusty"

/turf/open/floor/plasteel/f13/teal/tealchess/tealchess2
	icon_state = "tealchess2"

/turf/open/floor/plasteel/f13/teal/tealchess/tealchess2/dirty
	icon_state = "tealchess2dirty"

/turf/open/floor/plasteel/f13/teal/tealchess/tealchess2/rusty
	icon_state = "tealchess2rusty"

/turf/open/floor/plasteel/f13/teal/white/side
	icon_state = "whiteteal"

/turf/open/floor/plasteel/f13/teal/white/side/dirty
	icon_state = "whitetealdirty"

/turf/open/floor/plasteel/f13/teal/white/side/rusty
	icon_state = "whitetealrusty"

/turf/open/floor/plasteel/f13/teal/white/corner
	icon_state = "whitetealcorner"

/turf/open/floor/plasteel/f13/teal/white/corner/dirty
	icon_state = "whitetealcornerdirty"

/turf/open/floor/plasteel/f13/teal/white/corner/rusty
	icon_state = "whitetealcornerrusty"

/turf/open/floor/plasteel/f13/teal/white/whitetealchess
	icon_state = "whitetealchess"

/turf/open/floor/plasteel/f13/teal/white/whitetealchess/dirty
	icon_state = "whitetealchessdirty"

/turf/open/floor/plasteel/f13/teal/white/whitetealchess/rusty
	icon_state = "whitetealchessrusty"

/turf/open/floor/plasteel/f13/teal/white/whitetealchess/whitetealchess2
	icon_state = "whitetealchess2"

/turf/open/floor/plasteel/f13/teal/white/whitetealchess/whitetealchess2/dirty
	icon_state = "whitetealchess2dirty"

/turf/open/floor/plasteel/f13/teal/white/whitetealchess/whitetealchess2/rusty
	icon_state = "whitetealchess2rusty"

	/* MISC TILES */

/turf/open/floor/plasteel/f13/misc/bar
	icon_state = "bar"

/turf/open/floor/plasteel/f13/misc/cafeteria
	icon_state = "cafeteria"

/turf/open/floor/plasteel/f13/misc/rarewhite
	icon_state = "rarewhite"

/turf/open/floor/plasteel/f13/misc/rarewhite/rarecyan
	icon_state = "rarecyan"

/turf/open/floor/plasteel/f13/misc/rarewhite/side
	icon_state = "rare"

/turf/open/floor/plasteel/f13/misc/rarewhite/corner
	icon_state = "rarecorner"

/turf/open/floor/plasteel/f13/misc/rarewhite/rarewhitechess
	icon_state = "rarewhitechess"

/turf/open/floor/plasteel/f13/misc/rarewhite/rarewhitechess2
	icon_state = "rarewhitechess2"

/turf/open/floor/plasteel/f13/teal/white/whitetealchess/whitetealchess2/rusty
	icon_state = "whitetealchess2rusty"

/turf/open/floor/plasteel/f13/misc/plaque
	icon_state = "plaque"

/turf/open/floor/plasteel/f13/misc/medical
	icon_state = "medical"
