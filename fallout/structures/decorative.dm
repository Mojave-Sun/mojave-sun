//Decorative and flavor/fluff things.

/obj/structure/f13/tv
	name = "\improper Radiation King Television"
	desc = "A message asking the audience to please standby appears on screen."
	icon = 'icons/obj/computer.dmi'
	icon_state = "television"

/obj/structure/dresser/f13
	name = "dresser"
	desc = "A nicely-crafted steel dresser. It's filled with lots of undies."
	icon = 'fallout/icons/structure/circular_cabinets.dmi'
	var/dresser_type = "pristine_circabinet_orange"

/obj/structure/dresser/f13/attack_hand(mob/user)
	icon_state = "[dresser_type]-open"
	update_icon()
	. = ..()
	if(.)
		return
	if(!Adjacent(user))//no tele-grooming

		return
	if(ishuman(user))
		var/mob/living/carbon/human/H = user

		if(H.dna && H.dna.species && (NO_UNDERWEAR in H.dna.species.species_traits))
			to_chat(user, "<span class='warning'>You are not capable of wearing underwear.</span>")
			return

		var/choice = input(user, "Underwear, Undershirt, or Socks?", "Changing") as null|anything in list("Underwear","Underwear Color","Undershirt","Socks")
		if(!Adjacent(user))
			return
		switch(choice)
			if("Underwear")
				var/new_undies = input(user, "Select your underwear", "Changing")  as null|anything in GLOB.underwear_list
				if(new_undies)
					H.underwear = new_undies
			if("Underwear Color")
				var/new_underwear_color = input(H, "Choose your underwear color", "Underwear Color","#"+H.underwear_color) as color|null
				if(new_underwear_color)
					H.underwear_color = sanitize_hexcolor(new_underwear_color)
			if("Undershirt")
				var/new_undershirt = input(user, "Select your undershirt", "Changing") as null|anything in GLOB.undershirt_list
				if(new_undershirt)
					H.undershirt = new_undershirt
			if("Socks")
				var/new_socks = input(user, "Select your socks", "Changing") as null|anything in GLOB.socks_list
				if(new_socks)
					H.socks= new_socks
		icon_state = "[dresser_type]"
		update_icon()
		add_fingerprint(H)
		H.update_body()

/obj/structure/dresser/f13/torquise
	dresser_type = "circabinet_torquise"
	icon_state = "circabinet_torquise"

/obj/structure/dresser/f13/torquise/pristine
	icon_state = "pristine_circabinet_torquise"
	dresser_type = "pristine_circabinet_torquise"

/obj/structure/dresser/f13/orange
	icon_state = "circabinet_orange"
	dresser_type = "circabinet_orange"

/obj/structure/dresser/f13/orange/pristine
	icon_state = "pristine_circabinet_orange"
	dresser_type = "pristine_circabinet_orange"