// Storage code

// Lollipop jar

/obj/item/storage/fancy/lollijar
	name = "lollipop jar"
	desc = "It's full of sugary lollipops, perfect for well-behaved patients in a clinic."
	icon = 'fallout/icons/objects/storage.dmi'
	icon_state = "lollijar"
	fancy_open = TRUE

/obj/item/storage/fancy/lollijar/ComponentInitialize()
    . = ..()
    var/datum/component/storage/STR = GetComponent(/datum/component/storage)
    STR.max_items = 20
    STR.set_holdable(list(/obj/item/reagent_containers/food/snacks/chewable/lollipop/noheal))

/obj/item/storage/fancy/lollijar/PopulateContents()
    SEND_SIGNAL(src, COMSIG_TRY_STORAGE_FILL_TYPE, /obj/item/reagent_containers/food/snacks/chewable/lollipop/noheal)

/obj/item/storage/fancy/lollijar/update_icon_state()
	if(fancy_open || !contents.len)
		if(!contents.len)
			icon_state = "[initial(icon_state)]_empty"
		else
			icon_state = initial(icon_state)
