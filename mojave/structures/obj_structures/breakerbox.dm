// Proof of concept for repairable and sabotageable structures, should make engineers and spies play a bigger role in things!

#define BREAKERBOX_WORKING = 0
#define BREAKERBOX_MINOR_DAMAGE = 1
#define BREAKERBOX_MEDIUM_DAMAGE = 2
#define BREAKERBOX_HEAVY_DAMAGE = 3
#define BREAKERBOX_DESTROYED = 4

/obj/structure/ms13/breakerbox
	anchored = TRUE
	density = TRUE
	name = "breaker box"
	desc = "An electrical box used to safely distribute power to an area."
	icon_state =
	icon =
	max_integrity = 100
	resistance_flags = INDESTRUCTIBLE
	state = BREAKERBOX_WORKING

/obj/structure/ms13/breakerbox/minor_damage
	state = BREAKERBOX_MINOR_DAMAGE

/obj/structure/ms13/breakerbox/medium_damage
	state = BREAKERBOX_MEDIUM_DAMAGE

/obj/structure/ms13/breakerbox/heavy_damage
	state = BREAKERBOX_HEAVY_DAMAGE

/obj/structure/ms13/breakerbox/destroyed
	state = BREAKERBOX_DAMAGED

/obj/structure/ms13/breakerbox/examine(mob/user)
	. = ..()
	switch(state)
		if(BREAKERBOX_WORKING)
			. += "<span class='notice'>The breaker box is in good condition, it can be sabotaged with a <b>screwdriver</b>.</span>"
		if(BREAKERBOX_MINOR_DAMAGE)
			. += "<span class='notice'>You'll need a <b>fuse</b> to make it work.</span>"
		if(BREAKERBOX_MEDIUM_DAMAGE)
			. += "<span class='notice'>The breaker electronics are loose, use a <b>screwdriver</b> to fasten them.</span>"
		if(BREAKERBOX_HEAVY_DAMAGE)
			. += "<span class='notice'>The breaker wiring is in bad shape, use some <b>wirecutters</b> to repair it.</span>"
		if(BREAKERBOX_DESTROYED)
			. += "<span class='notice'>The breaker box has been crushed, you'll need a <b>welder</b> to fix it.</span>"

/obj/structure/ms13/breakerbox/screwdriver_act(mob/user, obj/item/tool)
	.=..()
	if(state == BREAKERBOX_WORKING)
		user.visible_message("<span class='warning'>[user] sabotages the breaker box.</span>",
			"<span class='notice'>You start to sabotage the breaker box...</span>"
		if(tool.use_tool(src, user, 40, volume=100))
		to_chat(user, "<span class='notice'>You sabotage the breaker box.</span>")
		var/obj/structure/ms13/breakerbox/medium_damage/MD = new (loc)
		qdel(src)
	return TRUE

	else_if(state == BREAKERBOX_MEDIUM_DAMAGE)
		user.visible_message("<span class='warning'>[user] fastens the breaker's electronics.</span>",
			"<span class='notice'>You start to fasten the electronics...</span>"
		if(tool.use_tool(src, user, 40, volume=100))
		to_chat(user, "<span class='notice'>You sabotage the breaker box.</span>")
		var/obj/structure/ms13/breakerbox/minor_damage/M = new (loc)
		qdel(src)
	return TRUE
