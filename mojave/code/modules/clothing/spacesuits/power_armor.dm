//Generic power armor helmet
/obj/item/clothing/head/helmet/space/hardsuit/power_armor
	name = "Generic Power Armor Helmet"
	desc = "Don't ever use this in the video game please."
	icon = 'mojave/icons/mob/clothing/head.dmi'
	icon_state = "t45_pa"
	worn_icon = 'mojave/icons/mob/large-worn-icons/64x64/head.dmi'
	worn_icon_state = "t45_pa"
	strip_delay = 200
	max_integrity = 500
	resistance_flags = FIRE_PROOF | ACID_PROOF
	armor = list(MELEE = 80, BULLET = 80, LASER = 80, ENERGY = 80, BOMB = 80, BIO = 100, RAD = 100, FIRE = 100, ACID = 100) //Make the armor the same as the hardsuit one for consistancy
	actions_types = null //No lights my dude, sorry
	worn_x_dimension = 64
	worn_y_dimension = 64
	clothing_flags = LARGE_WORN_ICON

//No touchy
/obj/item/clothing/head/helmet/space/hardsuit/power_armor/Initialize()
	. = ..()
	interaction_flags_item &= ~INTERACT_ITEM_ATTACK_HAND_PICKUP

//Generic power armor based off of the hardsuit
/obj/item/clothing/suit/space/hardsuit/power_armor
	name = "Generic Power Armor"
	desc = "Don't ever use this in the video game please."
	icon = 'mojave/icons/mob/clothing/suit.dmi'
	icon_state = "t45-pa"
	worn_icon = 'mojave/icons/mob/clothing/suit.dmi'
	worn_icon_state = "t45-pa"
	density = TRUE //It's a suit of armor man
	anchored = TRUE
	strip_delay = 200
	max_integrity = 500
	resistance_flags = FIRE_PROOF | ACID_PROOF
	armor = list(MELEE = 80, BULLET = 80, LASER = 80, ENERGY = 80, BOMB = 80, BIO = 100, RAD = 100, FIRE = 100, ACID = 100) //Make the armor the same as the hardsuit one for consistancy
	actions_types = null //No helmet toggle, sorry dude
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/power_armor
	var/original_pilot_footstep //Footsteps that the equipping pilot used to have, so we can replace the component's footsteps with a mecha move

/obj/item/clothing/suit/space/hardsuit/power_armor/Initialize()
	. = ..()
	interaction_flags_item &= ~INTERACT_ITEM_ATTACK_HAND_PICKUP

//It's a suit of armor, it ain't going to fall over just because the pilot is dead
/obj/item/clothing/suit/space/hardsuit/power_armor/equipped(mob/user, slot)
	. = ..()
	ADD_TRAIT(user, TRAIT_FORCED_STANDING, "power_armor")
	if(slot == ITEM_SLOT_OCLOTHING)
		var/datum/component/footstep/C = user?.GetComponent(/datum/component/footstep)
		if(C)
			original_pilot_footstep = C.footstep_sounds //Yes, this means light_step quirk will somewhat silence power armor, go figure
			C.footstep_sounds = 'sound/mecha/mechstep.ogg'

/obj/item/clothing/suit/space/hardsuit/power_armor/dropped(mob/user)
	. = ..()
	REMOVE_TRAIT(user, TRAIT_FORCED_STANDING, "power_armor")
	var/datum/component/footstep/C = user?.GetComponent(/datum/component/footstep)
	if(C)
		C.footstep_sounds = original_pilot_footstep

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
		to_chat(user, "You're unable to climb into the [src] due to already having a helmet or suit equipped!")
		return FALSE

	else
		if(user.wear_suit == src)
			to_chat(user, "You begin exiting the [src].")
			if(do_after(user, 6 SECONDS, target = user) && user.wear_suit == src)
				GetOutside(user)
				return TRUE

	to_chat(user, "You begin entering the [src].")
	if(do_after(user, 6 SECONDS, target = user) && user.wear_suit != src)
		GetInside(user)
		return TRUE

	return FALSE

//Let's actually get into the power armor
/obj/item/clothing/suit/space/hardsuit/power_armor/proc/GetInside(mob/living/carbon/human/user)
	if(!istype(user))
		return

	density = FALSE
	anchored = FALSE
	user.visible_message("<span class='warning'>[user] enters the [src]!</span>")
	user.forceMove(get_turf(src))
	user.equip_to_slot_if_possible(src, ITEM_SLOT_OCLOTHING)
	ToggleHelmet()

//Nevermind let's get out
/obj/item/clothing/suit/space/hardsuit/power_armor/proc/GetOutside(mob/living/carbon/human/user)
	user.visible_message("<span class='warning'>[user] exits from the [src].</span>")
	playsound(src.loc, 'sound/mecha/mechmove03.ogg', 50, TRUE)
	user.dropItemToGround(src, force = TRUE)
	density = TRUE
	anchored = TRUE

//TODO for later involving integrity and ricochets
/obj/item/clothing/suit/space/hardsuit/power_armor/hit_reaction(mob/living/carbon/human/owner, atom/movable/hitby, attack_text = "the attack", final_block_chance = 0, damage = 0, attack_type = MELEE_ATTACK)
	if(prob(50))
		var/datum/effect_system/spark_spread/spark_system = new /datum/effect_system/spark_spread
		spark_system.start()
	..()


//For now the t45 is just a new subtype
/obj/item/clothing/head/helmet/space/hardsuit/power_armor/t45
	name = "T45 Power Armor Helmet"
	desc = "A beefy helmet attached to a suit of power armor."

/obj/item/clothing/suit/space/hardsuit/power_armor/t45
	name = "T45 Power Armor Suit"
	desc = "Supposedly the first power armor to be deployed in the Great War. While it does have it's flaws, it still represents a very robust piece of armor that can withstand great punishment."
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/power_armor/t45

/obj/item/clothing/head/helmet/space/hardsuit/power_armor/t51b
	name = "T51 Power Armor Helmet"
	desc = "A more advanced helmet for a more advanced piece of power armor."
	armor = list(MELEE = 90, BULLET = 90, LASER = 90, ENERGY = 90, BOMB = 90, BIO = 100, RAD = 100, FIRE = 100, ACID = 100) //Make the armor the same as the hardsuit one for consistancy
	icon_state = "t51b_pa"
	worn_icon_state = "t51b_pa"

/obj/item/clothing/suit/space/hardsuit/power_armor/t51b
	name = "T51B Power Armor Suit"
	desc = "The last widely developed and distributed power armor prior to the nuclear winter, even after all of these years it still outperforms it's previous model iteration."
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/power_armor/t51b
	armor = list(MELEE = 90, BULLET = 90, LASER = 90, ENERGY = 90, BOMB = 90, BIO = 100, RAD = 100, FIRE = 100, ACID = 100) //Make the armor the same as the hardsuit one for consistancy
	icon_state = "t51b-pa"
	worn_icon_state = "t51b-pa"
