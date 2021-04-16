/obj/structure/table/ms13
	name = "base class Mojave Sun table"
	desc = "Scream at the coders if you see this."
	icon = 'mojave/icons/structure/smooth_structures/table.dmi'
	icon_state = "table-0"
	base_icon_state = "table"
	smoothing_groups = list(SMOOTH_GROUP_MS13_TABLES) //Don't smooth with SMOOTH_GROUP_TABLES
	canSmoothWith = list(SMOOTH_GROUP_MS13_TABLES)

/obj/structure/table/ms13/metal
	name = "metal table"
	desc = "A square piece of metal standing on four metal legs. It can not move."

/obj/structure/table/ms13/round
	name = "round table"
	desc = "A table, masterfully designed with high-tech to become... round."
	icon_state = "roundtable"
	icon = 'mojave/icons/structure/standalone_tables.dmi'
	smoothing_flags = NONE
	canSmoothWith = null

/obj/structure/table/ms13/no_smooth
	name = "non-smoothing wasteland table"
	desc = "Much like a regular table, except it doesn't smooth. Revolutionary, I know."
	icon_state = "desk"
	icon = 'mojave/icons/structure/standalone_tables.dmi'
	smoothing_flags = NONE
	canSmoothWith = null

/obj/structure/table/ms13/no_smooth/desk
	name = "wooden desk"
	desc = "A desk. The drawers are stuck."
	icon_state = "desk"

/obj/structure/table/ms13/no_smooth/workbench
	name = "workbench"
	desc = "A perfect surface for arts and crafts. It's got so much space for activities!"
	icon_state = "workbench"

/obj/structure/table/ms13/no_smooth/pool
	name = "pool table"
	desc = "A favourite of students and drunkards alike. Watch out for sharks!"
	icon_state = "pool_left"

/obj/structure/table/ms13/no_smooth/pool/right
	icon_state = "pool_right"

/obj/structure/table/ms13/no_smooth/cards
	name = "cards table"
	desc = "Very classy. Reminds you of that time in New Reno..."
	icon_state = "cards_left"

/obj/structure/table/ms13/no_smooth/cards/right
	icon_state = "cards_right"

/obj/structure/table/ms13/no_smooth/wood
	name = "wooden table"
	desc = "Sturdy and hardwearing."
	icon_state = "wood_top"

/obj/structure/table/ms13/no_smooth/wood/bottom
	icon_state = "wood_bottom"

/obj/structure/table/ms13/no_smooth/dice
	name = "dice table"
	desc = "Shoot the dice with your friends. Preferably not literally."
	icon_state = "dice_dirty"

/obj/structure/table/ms13/no_smooth/dice/pristine
	name = "pristine dice table"
	desc = "Shoot the dice with your friends. Preferably not literally."
	icon_state = "dice_clean"
