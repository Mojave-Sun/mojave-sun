//Moves to an atom, sends signals if a distance is maintained with the atom being walked to
//Will path to adjacent nodes with optional weighted values to encourage the parent to move to a specific node via get_best_adj_node()

// Action state signal that's sent whenever the action state has a distance maintained with the target being walked to
#define COMSIG_STATE_MAINTAINED_DISTANCE "action_state_maintained_dist_with_target"
#define COMSIG_OBSTRUCTED_MOVE "unable_to_step_towards_thing" //Tried to step in a direction and there was a obstruction


#define CARDINAL_ALL_DIRS 	list(1,2,4,5,6,8,9,10)

///Returns the left and right dir of the input dir, used for AI stutter step while attacking
/proc/LeftAndRightOfDir(direction, diagonal_check = FALSE)
	if(diagonal_check)
		if(ISDIAGONALDIR(direction))
			return list(turn(direction, 45), turn(direction, -45))
	return list(turn(direction, 90), turn(direction, -90))

/datum/element/pathfinder
	element_flags = ELEMENT_DETACH //Detach on attached's QDEL
	var/list/distances_to_maintain = list() //Distance we want to maintain from atom and send signals once distance has been maintained
	var/list/atoms_to_walk_to = list() //All the targets some mobs gotta move to
	var/list/stutter_step_prob = list() //The prob() chance of a mob going left or right when distance is maintained with the target
	var/list/weighted_value_list = list() //List to send with get_best_adj_node() when it's used
	var/list/patrols_node_network = list() //If the parent wants to patrol the node network or not


/datum/element/pathfinder/New()
	. = ..()
	START_PROCESSING(SSfastprocess, src)

/datum/element/pathfinder/Destroy()
	STOP_PROCESSING(SSfastprocess, src)
	return ..()

/*
mob: the mob that's getting the action state
atom_to_walk_to: target to move to
distance to maintain: mob will try to be at this distance away from the atom to walk to
stutter_step: a prob() chance to go left or right of the mob's direction towards the target when distance has been maintained
weighted_values: ultilizes get_best_adj_node() to figure a good place to walk towards
patrol_node_network: When true, instead of sending a signal that this thing maintained distance, picks a random adjacent node to pathfind towards instead
*/

/datum/element/pathfinder/Attach(mob/target, atom/atom_to_walk_to, distance_to_maintain = 0, stutter_step = 0, list/weighted_values = list(), patrol_node_network = FALSE)
	. = ..()
	if(QDELETED(target))
		return ELEMENT_INCOMPATIBLE

	if(!ismob(target))
		return ELEMENT_INCOMPATIBLE

	if(!atom_to_walk_to)
		return ELEMENT_INCOMPATIBLE

	distances_to_maintain[target] = distance_to_maintain
	atoms_to_walk_to[target] = atom_to_walk_to
	stutter_step_prob[target] = stutter_step
	weighted_value_list[target] = weighted_values
	patrols_node_network[target] = patrol_node_network

/datum/element/pathfinder/process()
	for(var/mob in distances_to_maintain)
		var/mob/mob_to_process = mob

		//It's likely not to move man, it's dead
		if(mob_to_process.stat == DEAD)
			continue

		//Okay it can probably physically move, but has it moved too recently?
		if(world.time <= mob_to_process.last_move_time + mob_to_process.cached_multiplicative_slowdown)
			continue

		//Figure out what kind of SEND_SIGNAL() we should do if possible
		if(get_dist(mob_to_process, atoms_to_walk_to[mob_to_process]) == distances_to_maintain[mob_to_process])
			SEND_SIGNAL(mob_to_process, COMSIG_STATE_MAINTAINED_DISTANCE)
			if(patrols_node_network[mob_to_process])
				var/obj/effect/ai_node/the_node = atoms_to_walk_to[mob_to_process]
				atoms_to_walk_to[mob_to_process] = pick(the_node.adjacent_nodes)
				continue

			if(!(get_dir(mob_to_process, atoms_to_walk_to[mob_to_process]))) //We're right on top, move out of it
				if(!step(mob_to_process, pick(CARDINAL_ALL_DIRS)))
					SEND_SIGNAL(mob_to_process, COMSIG_OBSTRUCTED_MOVE)
			if(prob(stutter_step_prob[mob_to_process]))
				if(!step(mob_to_process, pick(LeftAndRightOfDir(get_dir(mob_to_process, atoms_to_walk_to[mob_to_process]), diagonal_check = TRUE)))) //Couldn't move, something in the way
					SEND_SIGNAL(mob_to_process, COMSIG_OBSTRUCTED_MOVE)
			continue

		if(get_dist(mob_to_process, atoms_to_walk_to[mob_to_process]) < distances_to_maintain[mob_to_process]) //We're too close, back it up
			if(!step_away(mob_to_process, atoms_to_walk_to[mob_to_process]))
				SEND_SIGNAL(mob_to_process, COMSIG_OBSTRUCTED_MOVE)
			mob_to_process.last_move_time = world.time
			continue
		if(!step_to(mob_to_process, atoms_to_walk_to[mob_to_process]))
			SEND_SIGNAL(mob_to_process, COMSIG_OBSTRUCTED_MOVE)

		mob_to_process.last_move_time = world.time

/datum/element/pathfinder/Detach(datum/source)
	distances_to_maintain.Remove(source)
	atoms_to_walk_to.Remove(source)
	stutter_step_prob.Remove(source)
	return ..()

//Sample usage for showing off
/mob/living/carbon/human/node_pathing
	var/obj/effect/ai_node/current_node

/mob/living/carbon/human/node_pathing/Initialize()
	. = ..()
	for(var/obj/effect/ai_node/node in range(7))
		current_node = node
		forceMove(current_node.loc)
		break

	AddElement(/datum/element/pathfinder, atom_to_walk_to = pick(current_node.adjacent_nodes), distance_to_maintain = 1, stutter_step = 0, weighted_values = list(), patrol_node_network = TRUE)
