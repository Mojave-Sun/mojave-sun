/obj/item/clothing/gloves/ms13/
    name = "generic ms13 gloves"
    desc = "this doesn't even exist"
    icon = 'mojave/icons/objects/clothing/gloves.dmi'
    worn_icon = 'mojave/icons/mob/clothing/hands.dmi'

/obj/item/clothing/gloves/ms13/legion
    name = "generic Legion gloves"
    desc = "Generic gloves worn by Legionaries."
    icon_state = "leg_tanwraps"

/obj/item/clothing/gloves/ms13/legion/bracers
    name = "wrist bracers"
    desc = "Often worn by Legionaries to protect their wrists against rudimentary attacks."
    icon_state = "leg_bracers"
    armor = list(melee = 10, bullet = 5, laser = 5, energy = 5, bomb = 0, bio = 0, rad = 0, fire = 5, acid = 0)

/obj/item/clothing/gloves/ms13/legion/darkwraps
    name = "dark handwraps"
    desc = "Some dark handwraps. Good for getting extra grip or protecting from minor cuts."
    icon_state = "leg_darkwraps"

/obj/item/clothing/gloves/ms13/legion/tanwraps
    name = "tan handwraps"
    desc = "Some tan handwraps. Good for getting extra grip or protecting from minor cuts."
    icon_state = "leg_tanwraps"

// Stealthboy wristwatch WIP

/obj/item/clothing/gloves/ms13/stealthboy
	name = "stealthboy"
	desc = "A wrist-mounted cloaking device. When activated, renders the user nearly transparent."
	icon_state = "stealthboy_placeholder"
	throwforce = 5.0
	throw_speed = 1
	throw_range = 5
	w_class = WEIGHT_CLASS_SMALL
	var/stealthboy_on = FALSE
	COOLDOWN_DECLARE(stealthboy_cooldown)
	actions_types = list(/datum/action/item_action/toggle)

/obj/item/clothing/gloves/ms13/stealthboy/dropped(mob/user)
	disrupt(user)

/obj/item/clothing/gloves/ms13/stealthboy/attack_self(mob/user)
	toggle(user)

/obj/item/clothing/gloves/ms13/stealthboy/proc/toggle(mob/user)
	if(!ishuman(user))
		return
	if(!COOLDOWN_FINISHED(src, stealthboy_cooldown))
		return
	playsound(get_turf(src), 'sound/effects/pop.ogg', 25, 1, 3)
	stealthboy_on = !stealthboy_on
	if(stealthboy_on)
		user.alpha = 25
		to_chat(user, "<span class='notice'>You activate the [src].</span>")
		addtimer(CALLBACK(src, .proc/disrupt), duration=10 SECONDS)
	else
		user.alpha = initial(user.alpha)
		to_chat(user, "<span class='notice'>You deactivate the [src].</span>")
		COOLDOWN_START(src, stealthboy_cooldown, 30 SECONDS)

/obj/item/clothing/gloves/ms13/stealthboy/proc/disrupt(mob/user)
	if(stealthboy_on)
		user.alpha = initial(user.alpha)
		stealthboy_on = FALSE
	COOLDOWN_START(src, stealthboy_cooldown, 30 SECONDS)

