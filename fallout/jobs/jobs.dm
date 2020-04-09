GLOBAL_LIST_INIT(wasteland_positions, list(
	"Wastelander",
	"Raider"))

GLOBAL_LIST_INIT(town_positions, list(
	"Mayor",
	"Settler"))

// job categories for rendering the late join menu
GLOBAL_LIST_INIT(f13_position_categories, list(
	EXP_TYPE_WASTELAND = list("jobs" = wasteland_positions, "color" = "#eec66f"),
	EXP_TYPE_TOWN= list("jobs" = town_positions, "color" = "#4feb64")
))

GLOBAL_LIST_INIT(f13_exp_jobsmap, list(
	EXP_TYPE_WASTELAND = list("titles" = wasteland_positions),
	EXP_TYPE_TOWN = list("titles" = town_positions)
))

GLOBAL_PROTECT(f13_exp_jobsmap)
