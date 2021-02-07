///A define for a node variable which is the last world.time that a AI visited it
#define NODE_LAST_VISITED "node_last_visited"

/**
 * Identifier tags
 * Ultilized for having AI look at weights based on if they're a "human" or a "hostile mob"
 * This is mainly used for deciding what weights are to be looked at when determing a node waypoint of going towards
 */
#define IDENTIFIER_HOSTILE_MOB "identifies_hostile_mob"

//This could go somewhere else
/// How many nodes that exist in the world; one single list not separated by something like zlevels
GLOBAL_LIST_EMPTY(all_nodes)
