/obj/item/fallout/radiopack
	icon = 'fallout/icons/objects/radiopack.dmi'
	name = "radiopack"
	icon_state = "radiopack"
	worn_icon = 'fallout/icons/mob/clothing/back.dmi'
	lefthand_file = 'fallout/icons/mob/inhands/items_lefthand.dmi'
	righthand_file = 'fallout/icons/mob/inhands/items_righthand.dmi'
	inhand_icon_state = "radiopack"
	desc = "A basic handheld radio that communicates over a relatively long range, and is proven to be 254% better than yelling loudly."
	slot_flags = ITEM_SLOT_BACK
	throw_speed = 3
	throw_range = 7
	w_class = WEIGHT_CLASS_BULKY
	custom_materials = list(/datum/material/iron=75, /datum/material/glass=25)
	var/held = 0
	var/obj/item/radio/fallout/NCR/radio

/obj/item/fallout/radiopack/Initialize()
	. = ..()
	radio = new(src)
	START_PROCESSING(SSobj, src)
	var/datum/component/storage/STR = AddComponent(/datum/component/storage/concrete)
	STR.max_w_class = WEIGHT_CLASS_SMALL
	STR.max_combined_w_class = 18
	STR.max_items = 6

/obj/item/fallout/radiopack/Destroy()
	STOP_PROCESSING(SSobj, src)
	return ..()

/obj/item/fallout/radiopack/AltClick(var/mob/living/carbon/user)
	if(src.loc == user)
		if(!held)
			if(user.get_item_by_slot(ITEM_SLOT_BACK) == src)
				held = 1
				if(!user.put_in_hands(radio))
					held = 0
					to_chat(user, "<span class='warning'>You need a free hand to hold the radio!</span>")
					return
				update_icon()
				user.update_inv_back()
		else
			to_chat(user, "<span class='warning'>You are already holding the radio!</span>")
	else
		..()

/obj/item/fallout/radiopack/attackby(obj/item/W, mob/user, params)
	if(W == radio)
		user.dropItemToGround(radio, TRUE)
	else
		..()

/obj/item/fallout/radiopack/dropped(mob/user)
	. = ..()
	if(held)
		user.dropItemToGround(radio, TRUE)

/obj/item/fallout/radiopack/MouseDrop(atom/over_object)
	. = ..()
	if(held)
		return
	if(iscarbon(usr))
		var/mob/M = usr

		if(!over_object)
			return

		if(!M.incapacitated())

			if(istype(over_object, /obj/screen/inventory/hand))
				var/obj/screen/inventory/hand/H = over_object
				M.putItemFromInventoryInHandIfPossible(src, H.held_index)

/obj/item/fallout/radiopack/proc/attach_radio(var/mob/user)
	if(!radio)
		radio = new(src)
	radio.forceMove(src)
	held = 0
	if(user)
		to_chat(user, "<span class='notice'>You attach the [radio.name] to the [name].</span>")
	else
		src.visible_message("<span class='warning'>The [radio.name] snaps back onto the [name]!</span>")
	update_icon()
	user.update_inv_back()

/obj/item/radio/fallout/NCR
	obj_flags = USES_TGUI
	broadcasting = TRUE
	freerange = TRUE
	frequency = 1359
	keyslot = new /obj/item/encryptionkey/headset_sec
	subspace_transmission = TRUE
	var/obj/item/fallout/radiopack/radio_pack

/obj/item/radio/can_receive(freq, level, AIuser)
	if(ishuman(src.loc))
		var/mob/living/carbon/human/H = src.loc
		if(H.is_holding(src))
			return ..(freq, level)
	else if(AIuser)
		return ..(freq, level)
	return FALSE

/obj/item/radio/fallout/NCR/Initialize()
	if(istype(loc, /obj/item/fallout/radiopack))
		radio_pack = loc

	else
		return INITIALIZE_HINT_QDEL

	return ..()

/obj/item/radio/fallout/NCR/attack_self(mob/living/user)
	return

/obj/item/radio/fallout/NCR/dropped(mob/user)
	SHOULD_CALL_PARENT(0)
	if(radio_pack)
		radio_pack.attach_radio(user)
	else
		qdel(src)
