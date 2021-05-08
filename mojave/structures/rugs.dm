//The physical rugs//

/obj/structure/ms13/rug
	name = "rug"
	desc = "A common rug, used to cover your boring floor. Transporting these has been the bane of humanity for years, now."
	icon = 'mojave/icons/structure/64x64_rugs.dmi'
	icon_state = "rug_blue"
	flags_1 = FLAMMABLE
	anchored = TRUE
	layer = BELOW_OPEN_DOOR_LAYER
	var/item_rug = /obj/item/ms13/rug
	COOLDOWN_DECLARE(rug_cooldown)
	var/list/remarks = list(
	"Why won't it stay straight..?",
	"Come on you piece of...",
	"Come on already, It's just a rug!",
	"This really shouldn't be hard, it's not that heavy!",
	"This is incredibly dumb. Just- Gah!",
	"I'd have an easier time trying to shave the damn hair off a brahmin's udders!",
	"Wrangling a ghoul is easier than this bullsh...",
	"So many other things i'd rather be doing...",
	"Keep flopping and I'll use you as fuel!",
	"This is hardly worth it...") //Time to get mad.

/obj/structure/ms13/rug/MouseDrop(mob/user)
	. = ..()
	if(get_dist(src, user)<2)
		to_chat(usr, "<span class='warning'>[pick(remarks)]</span>")
		if(do_after(user, 20 SECONDS, target = src))
			usr.visible_message("<span class='notice'>[usr] rolls and grabs \the [src.name].</span>", "<span class='notice'>You grab \the [src.name].</span>")
			var/obj/item/C = new item_rug(loc)
			usr.put_in_hands(C)
			qdel(src)

	return ..()

/obj/structure/ms13/rug/fancy
	desc = "A common rug, used to cover your boring floor. It's got a nice and simple pattern on it, perfect for the living room."
	icon_state = "rug_fancy"
	item_rug = /obj/item/ms13/rug/fancy

/obj/structure/ms13/rug/rubber
	name = "rubber mat"
	desc = "A large rubber mat, usually used in industrial areas to keep traction in slick conditions."
	icon_state = "rug_rubber"
	item_rug = /obj/item/ms13/rug/rubber
	remarks = list(
	"You'd have been better off as a damn tire.",
	"Just- Roll already!",
	"Come on... Come ON!",
	"Please just roll up...",
	"Uuuuughhh...",
	"For the love of...",
	"Do I even want this thing anymore..?")

//The object versions, used for picking up//

/obj/item/ms13/rug
	name = "rug"
	desc = "a common rug, used to cover your boring floor. It's currently rolled up, but peeking through you can see it's blue."
	icon = 'mojave/icons/objects/decorative.dmi'
	lefthand_file = 'mojave/icons/mob/inhands/items_lefthand.dmi'
	righthand_file = 'mojave/icons/mob/inhands/items_righthand.dmi'
	icon_state = "rug"
	inhand_icon_state = "rug"
	throw_range = 2
	w_class = WEIGHT_CLASS_BULKY
	var/obj/structure/ms13/rug/origin_type = /obj/structure/ms13/rug

/obj/item/ms13/rug/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/two_handed, require_twohands=TRUE)

/obj/item/ms13/rug/attack_self(mob/user)
	var/turf/T = get_turf(loc)
	if(!isfloorturf(T))
		to_chat(user, "<span class='warning'>You need ground to plant this on!</span>")
		return

	user.visible_message("<span class='notice'>[user] lays down \the [src.name].</span>", "<span class='notice'>You lay down \the [name].</span>")
	var/obj/structure/ms13/rug/C = new origin_type(get_turf(loc))
	C.setDir(dir)
	qdel(src)

/obj/item/ms13/rug/fancy
	name = "rug"
	desc = "a common rug, used to cover your boring floor. It's currently rolled up, but peeking through you can see it's got a pattern on it."
	origin_type = /obj/structure/ms13/rug/fancy

/obj/item/ms13/rug/rubber
	name = "rubber mat"
	desc = "A large rubber mat, usually used in industrial areas to keep traction in slick conditions. Rolled and ready to transport."
	icon_state = "rug_rubber"
	inhand_icon_state = "rug_rubber"
	origin_type = /obj/structure/ms13/rug/rubber
