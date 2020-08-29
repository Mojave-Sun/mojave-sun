/datum/religion_rites
/// name of the religious rite
	var/name = "religious rite"
/// Description of the religious rite
	var/desc = "immm gonna rooon"
/// length it takes to complete the ritual
	var/ritual_length = (10 SECONDS) //total length it'll take
/// list of invocations said (strings) throughout the rite
	var/list/ritual_invocations //strings that are by default said evenly throughout the rite
/// message when you invoke
	var/invoke_msg
	var/favor_cost = 0

/datum/religion_rites/New()
	. = ..()
	if(!GLOB?.religious_sect)
		return
	LAZYADD(GLOB.religious_sect.active_rites, src)

/datum/religion_rites/Destroy()
	if(!GLOB?.religious_sect)
		return
	LAZYREMOVE(GLOB.religious_sect.active_rites, src)
	return ..()


///Called to perform the invocation of the rite, with args being the performer and the altar where it's being performed. Maybe you want it to check for something else?
/datum/religion_rites/proc/perform_rite(mob/living/user, atom/religious_tool)
	if(GLOB.religious_sect?.favor < favor_cost)
		to_chat(user, "<span class='warning'>This rite requires more favor!</span>")
		return FALSE
	to_chat(user, "<span class='notice'>You begin to perform the rite of [name]...</span>")
	if(!ritual_invocations)
		if(do_after(user, target = user, delay = ritual_length))
			return TRUE
		return FALSE
	var/first_invoke = TRUE
	for(var/i in ritual_invocations)
		if(first_invoke) //instant invoke
			user.say(i)
			first_invoke = FALSE
			continue
		if(!ritual_invocations.len) //we divide so we gotta protect
			return FALSE
		if(!do_after(user, target = user, delay = ritual_length/ritual_invocations.len))
			return FALSE
		user.say(i)
	if(!do_after(user, target = user, delay = ritual_length/ritual_invocations.len)) //because we start at 0 and not the first fraction in invocations, we still have another fraction of ritual_length to complete
		return FALSE
	if(invoke_msg)
		user.say(invoke_msg)
	return TRUE


///Does the thing if the rite was successfully performed. return value denotes that the effect successfully (IE a harm rite does harm)
/datum/religion_rites/proc/invoke_effect(mob/living/user, atom/religious_tool)
	GLOB.religious_sect.on_riteuse(user,religious_tool)
	return TRUE


/*********Technophiles**********/

/datum/religion_rites/synthconversion
	name = "Synthetic Conversion"
	desc = "Convert a human-esque individual into a (superior) Android."
	ritual_length = 30 SECONDS
	ritual_invocations = list("By the inner workings of our god...",
						"... We call upon you, in the face of adversity...",
						"... to complete us, removing that which is undesirable...")
	invoke_msg = "... Arise, our champion! Become that which your soul craves, live in the world as your true form!!"
	favor_cost = 1000

/datum/religion_rites/synthconversion/perform_rite(mob/living/user, atom/religious_tool)
	if(!ismovable(religious_tool))
		to_chat(user, "<span class='warning'>This rite requires a religious device that individuals can be buckled to.</span>")
		return FALSE
	var/atom/movable/movable_reltool = religious_tool
	if(!movable_reltool)
		return FALSE
	if(!LAZYLEN(movable_reltool.buckled_mobs))
		. = FALSE
		if(!movable_reltool.can_buckle) //yes, if you have somehow managed to have someone buckled to something that now cannot buckle, we will still let you perform the rite!
			to_chat(user, "<span class='warning'>This rite requires a religious device that individuals can be buckled to.</span>")
			return
		to_chat(user, "<span class='warning'>This rite requires an individual to be buckled to [movable_reltool].</span>")
		return
	return ..()

/datum/religion_rites/synthconversion/invoke_effect(mob/living/user, atom/religious_tool)
	if(!ismovable(religious_tool))
		CRASH("[name]'s perform_rite had a movable atom that has somehow turned into a non-movable!")
	var/atom/movable/movable_reltool = religious_tool
	if(!movable_reltool?.buckled_mobs?.len)
		return FALSE
	var/mob/living/carbon/human/human2borg
	for(var/i in movable_reltool.buckled_mobs)
		if(istype(i,/mob/living/carbon/human))
			human2borg = i
			break
	if(!human2borg)
		return FALSE
	human2borg.set_species(/datum/species/android)
	human2borg.visible_message("<span class='notice'>[human2borg] has been converted by the rite of [name]!</span>")
	return TRUE
