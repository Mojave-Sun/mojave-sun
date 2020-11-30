/obj/effect/proc_holder/spell/targeted/shadowwalk
	name = "Shadow Walk"
	desc = "Grants unlimited movement in darkness."
	charge_max = 0
	clothes_req = FALSE
	antimagic_allowed = TRUE
	phase_allowed = TRUE
	selection_type = "range"
	range = -1
	include_user = TRUE
	cooldown_min = 0
	overlay = null
	action_icon = 'icons/mob/actions/actions_minor_antag.dmi'
	action_icon_state = "ninja_cloak"
	action_background_icon_state = "bg_alien"

/obj/effect/proc_holder/spell/targeted/shadowwalk/cast(list/targets,mob/living/user = usr)
	var/L = user.loc
	if(istype(user.loc, /obj/effect/dummy/phased_mob/shadow))
		var/obj/effect/dummy/phased_mob/shadow/S = L
		S.end_jaunt(FALSE)
		return
	else
		var/turf/T = get_turf(user)
		var/light_amount = T.get_lumcount()
		if(light_amount < SHADOW_SPECIES_LIGHT_THRESHOLD)
			playsound(get_turf(user), 'sound/magic/ethereal_enter.ogg', 50, TRUE, -1)
			visible_message("<span class='boldwarning'>[user] melts into the shadows!</span>")
			user.SetAllImmobility(0)
			user.setStaminaLoss(0, 0)
			var/obj/effect/dummy/phased_mob/shadow/S2 = new(get_turf(user.loc))
			user.forceMove(S2)
			S2.jaunter = user
		else
			to_chat(user, "<span class='warning'>It isn't dark enough here!</span>")

/obj/effect/dummy/phased_mob/shadow
	var/mob/living/jaunter

/obj/effect/dummy/phased_mob/shadow/Initialize(mapload)
	. = ..()
	START_PROCESSING(SSobj, src)

/obj/effect/dummy/phased_mob/shadow/Destroy()
	jaunter = null
	STOP_PROCESSING(SSobj, src)
	. = ..()

/obj/effect/dummy/phased_mob/shadow/process()
	if(!jaunter || jaunter.loc != src)
		qdel(src)
	check_light_level()

/obj/effect/dummy/phased_mob/shadow/relaymove(mob/living/user, direction)
	var/turf/oldloc = loc
	. = ..()
	if(loc != oldloc)
		check_light_level()

/obj/effect/dummy/phased_mob/shadow/phased_check(mob/living/user, direction)
	. = ..()
	if(. && isspaceturf(.))
		to_chat(user, "<span class='warning'>It really would not be wise to go into space.</span>")
		return FALSE

/obj/effect/dummy/phased_mob/shadow/proc/check_light_level()
	var/turf/T = get_turf(src)
	var/light_amount = T.get_lumcount()
	if(light_amount > 0.2) // jaunt ends
		end_jaunt(TRUE)
	else if (light_amount < 0.2 && (!QDELETED(jaunter))) //heal in the dark
		jaunter.heal_overall_damage(1,1, 0, BODYPART_ORGANIC)

/obj/effect/dummy/phased_mob/shadow/proc/end_jaunt(forced = FALSE)
	if(jaunter)
		if(forced)
			visible_message("<span class='boldwarning'>[jaunter] is revealed by the light!</span>")
		else
			visible_message("<span class='boldwarning'>[jaunter] emerges from the darkness!</span>")
		playsound(loc, 'sound/magic/ethereal_exit.ogg', 50, TRUE, -1)
	qdel(src)
