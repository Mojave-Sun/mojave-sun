GLOBAL_LIST_INIT(wasteland_positions, list(
	"Wastelander",
	"New Canaanite",
	"Hubologist"))

GLOBAL_LIST_INIT(town_positions, list(
	"Mayor",
	"Settler",
	"Shopkeep",
	"Farmer",
	"Bartender",
	"Doctor",
	"Deputy",
	"Sheriff"))

GLOBAL_LIST_INIT(tribe_positions, list(
	"Tribal",
	"Warrior",
	"Berserker",
	"Shaman",
	"Chieftain"))

GLOBAL_LIST_INIT(ncr_positions, list(
	"Trooper",
	"Corporal",
	"Sergeant",
	"Lieutenant"))

GLOBAL_LIST_INIT(bos_positions, list(
	"Initiate",
	"Knight",
	"Paladin",
	"Head Paladin",
	"Scribe",
	"Head Scribe"))

GLOBAL_LIST_INIT(eighties_positions, list(
	"Raider",
	"Enforcer",
	"Boss"))

// job categories for rendering the late join menu
GLOBAL_LIST_INIT(f13_position_categories, list(
	EXP_TYPE_WASTELAND = list("jobs" = wasteland_positions, "color" = "#eec66f"),
	EXP_TYPE_TOWN= list("jobs" = town_positions, "color" = "#4feb64"),
	EXP_TYPE_TRIBE = list("jobs" = tribe_positions, "color" = "#eb544f"),
	EXP_TYPE_NCR = list("jobs" = ncr_positions, "color" = "#cfd1ba"),
	EXP_TYPE_BOS = list("jobs" = bos_positions, "color" = "#737592"),
	EXP_TYPE_EIGHTIES = list("jobs" = eighties_positions, "color" = "#30389c")
))

GLOBAL_LIST_INIT(f13_exp_jobsmap, list(
	EXP_TYPE_WASTELAND = list("titles" = wasteland_positions),
	EXP_TYPE_TOWN = list("titles" = town_positions),
	EXP_TYPE_TRIBE = list("titles" = tribe_positions),
	EXP_TYPE_NCR = list("titles" = ncr_positions),
	EXP_TYPE_BOS = list("titles" = bos_positions),
	EXP_TYPE_EIGHTIES = list("titles" = eighties_positions)
))

GLOBAL_PROTECT(f13_exp_jobsmap)
