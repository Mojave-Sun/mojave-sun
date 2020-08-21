/////////////////////////////////////////////////////////////
//////////// MOJAVE SUN SEED PACKETS DIRECTORY //////////////
/////////////////////////////////////////////////////////////

//the most butchered code known to man

/obj/item/fallout/seedpacket
	name = "seed packet"
	desc = "A packet of seeds."
	icon = 'fallout/icons/hydroponics/seeds.dmi'
	slot_flags = ITEM_SLOT_BELT
	icon_state = "seedpacket"
	w_class = WEIGHT_CLASS_TINY
	throw_speed = 3
	throw_range = 5
	var/list/stored_seeds = list()
	var/seed_type = /obj/item/seeds/fallout
	var/max_seeds = 10
	var/start_empty = FALSE

/obj/item/fallout/seedpacket/Initialize()
	. = ..()
	if(!start_empty)
		for(var/i = 1, i <= max_seeds, i++)
			stored_seeds += new seed_type(src)
	update_icon()

/obj/item/ammo_box/update_icon()
	var/seeds_left = stored_ammo.len
	if(seeds_left == 0)
		icon_state = "[initial(icon_state)]-empty"
		update_icon()
	else
		update_icon()
	return

/obj/item/fallout/seedpacket/proc/get_seed(keep = FALSE)
	if (!stored_seeds.len)
		return null
	else
		var/b = stored_seeds[stored_seeds.len]
		stored_seeds -= b
		if (keep)
			stored_seeds.Insert(1,b)
		return b

//you snitch about this line, i will find you
/obj/item/fallout/seedpacket/proc/give_seed(obj/item/ammo_casing/R, replace_spent = 0)
	if (stored_seeds.len < max_seeds)
		stored_seeds += R
		R.forceMove(src)
		return TRUE
	return FALSE

/obj/item/fallout/seedpacket/proc/can_load(mob/user)
	return TRUE

/obj/item/fallout/seedpacket/attackby(obj/item/A, mob/user, params, silent = FALSE, replace_spent = 0)
	var/num_loaded = 0
	if(!can_load(user))
		return
	if(istype(A, /obj/item/fallout/seedpacket))
		var/obj/item/fallout/seedpacket/AM = A
		for(var/obj/item/seeds/fallout/AC in AM.stored_seeds)
			var/did_load = give_seed(AC, replace_spent)
			if(did_load)
				AM.stored_seeds -= AC
				num_loaded++
	if(istype(A, /obj/item/seeds/fallout))
		var/obj/item/seeds/fallout/AC = A
		if(give_seed(AC, replace_spent))
			user.transferItemToLoc(AC, src, TRUE)
			num_loaded++

	if(num_loaded)
		if(!silent)
			to_chat(user, "<span class='notice'>You put [num_loaded] seed\s into \the [src]!</span>")
		A.update_icon()
		update_icon()
	return num_loaded

/obj/item/fallout/seedpacket/attack_hand(mob/user)
	var/obj/item/seeds/fallout/A = get_seed()
	if(!user.is_holding(src))
		user.put_in_hands(src)
		return
	else
		if(A)
			A.forceMove(drop_location())
			to_chat(user, "<span class='notice'>You remove a seed from [src]!</span>")
			update_icon()

/obj/item/fallout/seedpacket/potato
	name = "pack of potato sprouts"
	desc = "Pre-war potato sprouts, grow into clusters of potatos in the soil, highly resistant."
	icon_state = "potato"
	seed_type = /obj/item/seeds/fallout/potato
