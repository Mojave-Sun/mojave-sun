//Makes you request water or die, this could be made more generic with support of more reagents but that's going into "refactor addiction" territory

/datum/component/thirst
	var/curr_thirst //How much thirst is currently acquired
	var/max_thirst //How much our thirst can be fulfilled
	var/rate_of_thirst //Reduces by this much thirst every Life() tick
	var/stage_of_dehydration //Current stage of dehydration; 1-5 but only 4 alerts are used

//300 is equivalent to 300 life() procs aka 10 minutes of water
/datum/component/thirst/Initialize(thirst_rate = -1, start_thirst = 300, thirst_limit = 450)
	if(iscyborg(parent) || !isliving(parent))
		return COMPONENT_INCOMPATIBLE
	max_thirst = thirst_limit
	curr_thirst = start_thirst
	rate_of_thirst = thirst_rate

	RegisterSignal(parent, list(COMSIG_PARENT_EXAMINE), .proc/examine_dehydration)
	START_PROCESSING(SSdcs, src)


/datum/component/thirst/process()
	modify_thirst(modify_by = rate_of_thirst)
	//Hardcode galore

///Modifies thirst by modify_by VIA +=
/datum/component/thirst/proc/modify_thirst(modify_by = 0)
	thirst += modify_by

///Examines the state of dehydration parent is in
/datum/component/thirst/proc/examine_dehydration(datum/source, mob/M)
	SIGNAL_HANDLER
	to_chat(M,
