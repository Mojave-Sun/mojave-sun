/*
To be applied to hostile mobs to make them move around in node networks whenever they're AFK mostly
*/

/datum/element/node_pathing
	element_flags = ELEMENT_DETACH //Detach on attached's QDEL
	var/list/weighted_value_list = list() //List to send with get_best_adj_node() when it's used
	var/list/current_nodes = list() //What node we're currently at
	var/list/current_node_go_towards = list() //What node we wish to go towards
	var/list/identifiers = list() //Identifier associated with the mob

/datum/element/node_pathing/Attach(mob/target, list/weighted_values = list(), obj/effect/ai_node/go_towards_this_node = null, identifier = null)
	. = ..()
	if(QDELETED(target))
		return ELEMENT_INCOMPATIBLE

	if(!ishostile(target))
		return ELEMENT_INCOMPATIBLE

	for(var/obj/effect/ai_node/node in range(target, 7))
		current_nodes[target] = node
		break

	if(!current_nodes[target])
		return ELEMENT_INCOMPATIBLE

	identifiers[target] = identifier
	weighted_value_list[target] = weighted_values

	var/mob/living/simple_animal/hostile/animal_target = target
	if(animal_target.AIStatus == AI_IDLE) //Start roaming
		current_node_go_towards[target] = current_nodes[target].get_best_adj_node(weighted_value_list[target], identifiers[target])

/datum/element/node_pathing/process()
	for(var/mob in current_nodes)
		var/mob/living/simple_animal/hostile/animal = mob
		if(animal.AIStatus != AI_IDLE)
			continue

		if(!current_node_go_towards[animal])
			current_node_go_towards[animal] = current_nodes[animal].get_best_adj_node(weighted_value_list[animal], identifiers[animal])

		//Begin actual finding
		if(get_dist(animal, current_node_go_towards[animal]) <= animal.minimum_distance)
			current_nodes[animal] = current_node_go_towards[animal]
			current_node_go_towards[animal] = current_nodes[animal].get_best_adj_node(weighted_value_list[animal], identifiers[animal])
		animal.stop_automated_movement = TRUE
		animal.Goto(current_node_go_towards[animal], animal.move_to_delay, animal.minimum_distance)

/mob/living/simple_animal/hostile/ms13/molerat/node_pathing
	utilizes_node_pathing = TRUE
	mob_identifier = IDENTIFIER_HOSTILE_MOB
