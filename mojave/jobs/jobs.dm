GLOBAL_LIST_INIT(wasteland_positions, list(
	"Wastelander",
	"New Canaanite",
	"Hubologist"))

GLOBAL_LIST_INIT(town_positions, list(
	"Town Mayor",
	"Town Settler",
	"Town Farmer",
	"Town Bartender",
	"Town Doctor",
	"Town Nurse",
	"Town Deputy",
	"Town Sheriff"))

GLOBAL_LIST_INIT(tribe_positions, list(
	"Tribal",
	"Tribal Warrior",
	"Tribal Berserker",
	"Tribal Shaman",
	"Tribal Chieftain"))

GLOBAL_LIST_INIT(ncr_positions, list(
	"NCR Trooper",
	"NCR Radioman",
	"NCR Corporal",
  "NCR Engineer",
	"NCR Sergeant",
  "NCR Medical Officer",
	"NCR Lieutenant"))

GLOBAL_LIST_INIT(bos_positions, list(
	"BoS Initiate",
	"BoS Knight",
	"BoS Paladin",
	"BoS Head Paladin",
	"BoS Scribe",
	"BoS Head Scribe"))

GLOBAL_LIST_INIT(raiders_positions, list(
	"Raider",
	"Raider Enforcer",
	"Raider Boss"))

GLOBAL_LIST_INIT(legion_positions, list(
	"Legion Praetorian",
	"Legion Centurion",
	"Legion Veteran Decanus",
	"Legion Prime Decanus",
	"Legion Recruit Decanus",
	"Legion Veteran",
	"Legion Prime ",
	"Legion Recruit",
	"Legion Vexillarius",
	"Legion Speculatore",
	"Legion Explorer",
	"Legion Scout",))

// job categories for rendering the late join menu
GLOBAL_LIST_INIT(ms13_position_categories, list(
	EXP_TYPE_WASTELAND = list("jobs" = wasteland_positions, "color" = "#eec66f"),
	EXP_TYPE_TOWN= list("jobs" = town_positions, "color" = "#4feb64"),
	EXP_TYPE_TRIBE = list("jobs" = tribe_positions, "color" = "#eb544f"),
	EXP_TYPE_NCR = list("jobs" = ncr_positions, "color" = "#cfd1ba"),
	EXP_TYPE_BOS = list("jobs" = bos_positions, "color" = "#737592"),
	EXP_TYPE_RAIDERS = list("jobs" = raiders_positions, "color" = "#30389c")
))

GLOBAL_LIST_INIT(ms13_exp_jobsmap, list(
	EXP_TYPE_WASTELAND = list("titles" = wasteland_positions),
	EXP_TYPE_TOWN = list("titles" = town_positions),
	EXP_TYPE_TRIBE = list("titles" = tribe_positions),
	EXP_TYPE_NCR = list("titles" = ncr_positions),
	EXP_TYPE_BOS = list("titles" = bos_positions),
	EXP_TYPE_RAIDERS = list("titles" = raiders_positions)
))

GLOBAL_PROTECT(ms13_exp_jobsmap)
