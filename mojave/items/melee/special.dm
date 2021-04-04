/obj/item/chainsaw/ms13
	name = "auto axe"
	desc = "A modified steel saw, converted into a tool of destruction. You could use it for trees, But why stop there?"
	icon = 'mojave/icons/objects/melee/melee_world.dmi'
	lefthand_file = 'mojave/icons/mob/inhands/weapons/melee_inhand_left.dmi'
	righthand_file = 'mojave/icons/mob/inhands/weapons/melee_inhand_right.dmi'
	icon_state = "auto_axe"
	inhand_icon_state = "auto_axe"
	on = FALSE
	w_class = WEIGHT_CLASS_HUGE
	throw_speed = 2
	throw_range = 4

/obj/item/chainsaw/ms13/attack_self(mob/user)
	. = ..()
	if(on)
		icon_state = "auto_axe_on"
		inhand_icon_state = "auto_axe_on"
		force = 55
		armour_penetration = 10
		wound_bonus = 5
		bare_wound_bonus = 10
		sharpness = IS_SHARP_AXE

	else
		icon_state = "auto_axe"
		inhand_icon_state = "auto_axe"
		force = 10
		armour_penetration = 0
		wound_bonus = 0
		bare_wound_bonus = 5
		sharpness = SHARP_EDGED

	if(src == user.get_active_held_item()) //update inhands
		user.update_inv_hands()
	for(var/X in actions)
		var/datum/action/A = X
		A.UpdateButtonIcon()
