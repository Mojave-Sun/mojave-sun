//Makes you request water or die, this could be made more generic with support of more reagents but that's going into "refactor addiction" territory

//List of stage of dehydration => examine/warning text
GLOBAL_LIST_INIT(dehydration_stage_examine, list("<font color='green'>not dehydrated",
												 "<font color='orange'>very slightly dehydrated",
												 "<font color='red'>dehydrated",
												 "<font color='red'>very dehydrated",
												 "<font color='black'>close to death from a lack of water"
												))

//List of stage of dehydration => typepath associated with alert to pop up
GLOBAL_LIST_INIT(dehydration_stage_alerts, list(
												/atom/movable/screen/alert/not_thirsty,
												/atom/movable/screen/alert/slight_thirst,
												/atom/movable/screen/alert/thirsty,
												/atom/movable/screen/alert/very_thirsty,
												/atom/movable/screen/alert/dehydrated
												))

/datum/component/thirst
	var/curr_thirst //How much thirst is currently acquired
	var/max_thirst //How much our thirst can be fulfilled
	var/rate_of_thirst //Reduces by this much thirst every Life() tick
	var/stage_of_dehydration //Current stage of dehydration; goes from 1-5 where 1 is the non-thirsty stage
	var/list/stage_to_text //A list of messages to show on examine and when entering a new stage
	var/list/stage_to_alert //What alert to pop up when reaching a certain stage, data stored as typepaths

//900 being 15 minutes/900 seconds of starting water, thirst limit at 1800 is 30 minutes, 0.2u of water = 1 second of life, 1800 seconds = 360u
/datum/component/thirst/Initialize(thirst_rate = -1, start_thirst = 900, thirst_limit = 1800, list/stage_flavor_text, list/stages_to_alerts)
	if(iscyborg(parent) || !isliving(parent))
		return COMPONENT_INCOMPATIBLE
	max_thirst = thirst_limit
	curr_thirst = start_thirst
	rate_of_thirst = thirst_rate
	stage_to_text = stage_flavor_text
	stage_to_alert = stages_to_alerts
	stage_of_dehydration = 1
	var/mob/the_parent = parent
	the_parent.throw_alert("thirst", stage_to_alert[stage_of_dehydration]) //Not thirsty at all

	RegisterSignal(parent, COMSIG_PARENT_EXAMINE, .proc/on_examine)
	START_PROCESSING(SSdcs, src)

/datum/element/thirst/Detach(datum/target)
	. = ..()
	UnregisterSignal(target, COMSIG_PARENT_EXAMINE)

/datum/component/thirst/process()
	modify_thirst(modify_by = rate_of_thirst)
	//Nice and hardcoded for now, probably
	var/mob/living/the_parent = parent
	if(the_parent.has_reagent(/datum/reagent/water))
		var/datum/reagent/water/water = the_parent.reagents.get_reagent(/datum/reagent/water) //Modify metabolism rate here so don't need to edit base files
		water.metabolization_rate = 0 // Stop water metabolization, we'll take it from here
		modify_thirst(modify_by = min(the_parent.reagents.get_reagent_amount() * 5, 25)) //NO MICRODOSING, "metabolizes" 5 units of water per 1 second for +25 thirst
		the_parent.reagents.remove_reagent(water, 5)

///Modifies thirst by modify_by VIA = curr_thirst + modify_by, clamps value to max_thirst or 0
/datum/component/thirst/proc/modify_thirst(modify_by = 0)
	curr_thirst = clamp(curr_thirst + modify_by, 0, max_thirst)
	if ((stage_of_dehydration != 5) && curr_thirst < (max_thirst / (stage_of_dehydration + 1)))
		modify_stage(modify_by = 1)
	else
		if(curr_thirst > (max_thirst / (stage_of_dehydration)))
			modify_stage(modify_by = -1)

///Modifies stage of dehydration VIA += while also displaying a message and a popup alert to the parent
/datum/component/thirst/proc/modify_stage(modify_by = 0)
	if(!modify_by)
		return
	stage_of_dehydration = clamp(stage_of_dehydration + modify_by, 1, length(GLOB.dehydration_stage_examine))
	to_chat(parent, "You feel [stage_to_text[stage_of_dehydration]].")
	var/mob/the_parent = parent
	the_parent.clear_alert("thirst")
	the_parent.throw_alert("thirst", stage_to_alert[stage_of_dehydration])

///Examines the state of dehydration parent is in
/datum/component/thirst/proc/on_examine(datum/source, mob/M)
	SIGNAL_HANDLER

	if(source == M)
		to_chat(M, "You appear to be [stage_to_text[stage_of_dehydration]].")
	else
		to_chat(M, "[source] appears to be [stage_to_text[stage_of_dehydration]].")
