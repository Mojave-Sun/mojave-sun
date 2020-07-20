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
  if(!Adjacent(user))//no tele-grooming
    icon_state = "[dresser_type]"
    return
  . = ..()
  if(.)
    return
  icon_state = "[dresser_type]"
  update_icon()

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
