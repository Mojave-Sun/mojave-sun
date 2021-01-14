/obj/item/book/granter/mojave/trait
	var/granted_trait
	var/traitname = "catching bugs"

/obj/item/book/granter/mojave/trait/already_known(mob/living/user)
	if(!granted_trait)
		return TRUE
	if(HAS_TRAIT(src, granted_trait))
		to_chat(user, "<span class='notice'>You already know all about [traitname].</span>")
		return TRUE
	return FALSE

/obj/item/book/granter/mojave/trait/on_reading_start(mob/living/user)
	to_chat(user, "<span class='notice'>You start reading about [traitname]...</span>")

/obj/item/book/granter/mojave/trait/on_reading_finished(mob/living/user)
	to_chat(user, "<span class='notice'>You feel like you've got a good handle on [traitname]!</span>")
	ADD_TRAIT(src, granted_trait, TRAIT_GENERIC)
	onlearned(user)

/obj/item/book/granter/mojave/trait/onlearned(mob/living/user)
	..()
	if(oneuse)
		user.visible_message("<span class='caution'>[src]'s is useless to you now. You throw the book away.</span>")
		qdel(src)

/obj/item/book/granter/mojave/trait/gun
    name = "\improper Guns and Bullets"
    desc = "A useful book on how to properly handle guns."
    granted_trait = TRAIT_GUNHANDLING
    traitname = "gun handling"
    remarks = list("Always keep a gun not being used on safety...", "It's just like the simulations...", "Point the barrel end towards the thing you want to shoot...")
