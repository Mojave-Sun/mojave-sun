/obj/item/stack/sheet/mineral/ms13/sulfur_saltpetre
	name = "sulfur and saltpetre mixture"
	desc = "A sheet of various materials that have sufficient amounts of sulfur and saltpetre, it can be grinded down and combined with ash to make crude gunpowder. It can also be heated (to potentially explosive results) and combined with cellulose or glycerol to make very potent explosives."
	icon = 'icons/obj/mining.dmi'
	icon_state = "slag"
	singular_name = "sheet of sulfur and saltpetre"
	merge_type = /obj/item/stack/sheet/mineral/ms13/sulfur_saltpetre
	grind_results = list(/datum/reagent/sulfur = 10, /datum/reagent/saltpetre = 10)
	novariants = TRUE

//Did you know it's a bad idea to apply fire to an oxidizer like saltpetre?
/obj/item/stack/sheet/mineral/ms13/sulfur_saltpetre/attackby(obj/item/W as obj, mob/user as mob, params)
	if(W.get_temperature() > 300)//If the temperature of the object is over 300, then ignite
		var/location = get_turf(src)
		var/datum/effect_system/reagents_explosion/e = new()
		e.set_up(1 + round((amount * 10) / 6, 1), location, 0, 0, message = 0)
		e.start()
		qdel(src)
	else
		return ..()
