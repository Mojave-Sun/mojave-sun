//Generic power armor helmet
/obj/item/clothing/head/helmet/space/hardsuit/power_armor
	name = "Generic Power Armor Helmet"
	desc = "Don't ever use this in the video game please."
	icon = 'mojave/icons/mob/clothing/head.dmi'
	icon_state = "t45_pa"
	inhand_icon_state = "t45_pa"
	//item_flags = ABSTRACT
	strip_delay = 200
	max_integrity = 500
	resistance_flags = FIRE_PROOF | ACID_PROOF
	armor = list(MELEE = 80, BULLET = 80, LASER = 80, ENERGY = 80, BOMB = 80, BIO = 100, RAD = 100, FIRE = 100, ACID = 100) //Make the armor the same as the hardsuit one for consistancy
	actions_types = null //No lights my dude, sorry

//Generic power armor based off of the hardsuit
/obj/item/clothing/suit/space/hardsuit/power_armor
	name = "Generic Power Armor"
	desc = "Don't ever use this in the video game please."
	icon = 'mojave/icons/mob/clothing/suit.dmi'
	icon_state = "t45-pa"
	inhand_icon_state = "t45-pa"
	//item_flags = ABSTRACT
	strip_delay = 200
	var/obj/vehicle/sealed/power_armor/linked_vehicle //The vehicle instance this is linked to for regenerating back to it
	max_integrity = 500
	resistance_flags = FIRE_PROOF | ACID_PROOF
	armor = list(MELEE = 80, BULLET = 80, LASER = 80, ENERGY = 80, BOMB = 80, BIO = 100, RAD = 100, FIRE = 100, ACID = 100) //Make the armor the same as the hardsuit one for consistancy
	actions_types = null //No helmet toggle, sorry dude
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/power_armor

/obj/item/clothing/suit/space/hardsuit/power_armor/Initialize()
	. = ..()
	ADD_TRAIT(src, TRAIT_NODROP, "power_armor")
	ADD_TRAIT(helmet, TRAIT_NODROP, "power_armor")

//It's a suit of armor, it ain't going to fall over just because the pilot is dead
/obj/item/clothing/suit/space/hardsuit/power_armor/proc/equipped(mob/user)
	. = ..()
	ADD_TRAIT(user, TRAIT_FORCED_STANDING, "power_armor")

/obj/item/clothing/suit/space/hardsuit/power_armor/proc/dropped(mob/user)
	. = ..()
	REMOVE_TRAIT(user, TRAIT_FORCED_STANDING, "power_armor")

//No helmet toggles for now when helmet is up
/obj/item/clothing/suit/space/hardsuit/power_armor/ToggleHelmet()
	if(suittoggled)
		return
	return ..()

//Let's get into the power armor (or not)
/obj/item/clothing/suit/space/hardsuit/power_armor/AltClick(mob/living/carbon/human/user)
	if(!istype(user))
		return FALSE

	if(user.head && user.head != helmet || user.wear_suit && user.wear_suit != src)
		to_chat(M, "You're unable to climb into the [src] due to already having a helmet or suit equipped!")
		return FALSE

	else
		if(user.wear_suit == src)
			to_chat(user, "You begin exiting the [src].")
			if(do_after(user, 6 SECONDS, target = user) && user.wear_suit == src)
				user.visible_message("<span class='notice'>[user] exits from the [src].</span>")
				playsound(src.loc, 'sound/mecha/mechmove03.ogg', 50, TRUE)
				return TRUE

	to_chat(user, "You begin entering the [src].")
	if(do_after(user, 6 SECONDS, target = user) && user.wear_suit != src)
		GetInside(user)
		return TRUE

	return FALSE

//Let's actually get into the power armor
/obj/item/clothing/suit/space/hardsuit/power_armor/proc/GetInside(/mob/living/carbon/human/user)
	if(!istype(user))
		return

	src.density = FALSE
	src.anchored = FALSE
	user.visible_message("<span class='warning'>[user] enters the [src]!</span>")
	user.forceMove(get_turf(src))
	user.equip_to_slot_if_possible(src, ITEM_SLOT_OCLOTHING))
	ToggleHelmet()

//Nevermind let's get out
/obj/item/clothing/suit/space/hardsuit/power_armor/proc/GetOutside(/mob/living/carbon/human/user)
	user.visible_message("<span class='warning'>[user] exits from the [src].</span>")
	playsound(src.loc, 'sound/mecha/mechmove03.ogg', 50, TRUE)
	user.dropItemToGround(src, force = TRUE))
	src.density = TRUE
	src.anchored = TRUE

//TODO for later involving integrity and ricochets
/obj/item/clothing/suit/space/hardsuit/power_armor/hit_reaction(mob/living/carbon/human/owner, atom/movable/hitby, attack_text = "the attack", final_block_chance = 0, damage = 0, attack_type = MELEE_ATTACK)
	if(prob(50))
		var/datum/effect_system/spark_spread/spark_system = new /datum/effect_system/spark_spread
		spark_system.start()
	..()
