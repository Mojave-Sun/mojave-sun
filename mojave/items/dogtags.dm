/* The old dogtags
* and medallions from BD.
* all have the dogtag subtype
*/

/obj/item/card/id/ms13
	name = "\improper ID tag"
	desc = "A simple identification tag. This is a base class and you shouldn't be seeing it."
	icon = 'mojave/icons/objects/dogtags.dmi'
	icon_state = "bos_holotag"
	uses_overlays = FALSE
	var/datum/bank_account = null

/obj/item/card/id/ms13/bos
	name = "\improper BoS holotag"
	desc = "A set of dogtags, identifying the wearer as a member of the Brotherhood of Steel."
	icon_state = "bos_holotag"

/obj/item/card/id/ms13/deputy
	name = "deputy's badge"
	desc = "A silver badge which shows honour and dedication. Has some electronic workings sloppily attached to the back of it."
	assignment = "Deputy"
	icon_state = "deputy"

/obj/item/card/id/ms13/deputy/attackby(obj/item/W, mob/user, params)
	if(istype(W, /obj/item/card/id/ms13/sheriff))
		registered_name = stripped_input(user, "Who do you want to designate as your deputy?", , "", MAX_NAME_LEN)
		to_chat(user, "You scribble the [registered_name] for the name on the badge.")
		update_label()
	return ..()

/obj/item/card/id/ms13/sheriff
	name = "sheriff's badge"
	desc = "A golden Sheriff's badge. Has some electronic workings sloppily attached to the back of it."
	icon_state = "sheriff"

/obj/item/card/id/ms13/ncrrecruit
	name = "recruit's tags"
	desc = "A dog tag proving enlistment in the NCR, issued to local recruits."
	assignment = "NCR Recruit"
	icon_state = "ncrdogtagtrooper"

/obj/item/card/id/ms13/ncrrecruit/attackby(obj/item/W, mob/user, params)
	if(istype(W, /obj/item/card/id/ms13/ncrlieutenant))
		registered_name = stripped_input(user, "Who do you want to designate as a recruit?", , "", MAX_NAME_LEN)
		to_chat(user, "You scribble the [registered_name] for the name on the dogtag.")
		update_label()
	return ..()

/obj/item/card/id/ms13/ncrtrooper
	name = "trooper's tags"
	desc = "A dog tag proving enlistment in the NCR."
	icon_state = "ncrdogtagtrooper"

/obj/item/card/id/ms13/ncrsergeant
	name = "sergeant's tags"
	desc = "A chevron decorated dog tag showing NCO status within the NCR."
	icon_state = "ncrdogtagsergeant"

/obj/item/card/id/ms13/ncrlieutenant
	name = "lieutenant's tags"
	desc = "A silver bar dog tag that denotes a member of the NCR military with a lieutenant commission."
	icon_state = "ncrdogtagofficer"

/obj/item/card/id/ms13/ncrcaptain
	name = "captain's tags"
	desc = "A dog tag that demands respect from all those subordinate to it. This one belongs to an NCR captain."
	icon_state = "ncrdogtagcaptain"

/obj/item/card/id/ms13/ncrranger
	name = "ranger's tags"
	desc = "A dog tag that invokes fear in those who see it. Belongs to an elite of the NCR, usually with a big iron on their hip."
	icon_state = "ncrdogtagranger"

/obj/item/card/id/ms13/legrecruit
	name = "recruit medallion"
	desc = "A silver disc stamped with the Legion's Bull insignia. Belongs to a recruit."
	assignment = "Legion Recruit"
	icon_state = "legionmedallionrecruit"


/obj/item/card/id/ms13/legrecruit/attackby(obj/item/W, mob/user, params)
	if(istype(W, /obj/item/card/id/ms13/legcenturion))
		registered_name = stripped_input(user, "Who do you want to designate as a recruit?", , "", MAX_NAME_LEN)
		to_chat(user, "You scribble the [registered_name] for the name on the medallion.")
		update_label()
	return ..()

/obj/item/card/id/ms13/legprime
	name = "prime medallion"
	desc = "A marked silver disc stamped with the Legion's Bull insignia. Belongs to a prime."
	icon_state = "legionmedallionprime"

/obj/item/card/id/ms13/legveteran
	name = "veteran medallion"
	desc = "A heavily marked silver disc stamped with the Legion's Bull insignia. Belongs to a veteran, and reeks of iron."
	icon_state = "legionmedallionveteran"

/obj/item/card/id/ms13/legcenturion
	name = "centurion medallion"
	desc = "A golden disc awarded to the most fierce men in the entire Legion. If you are close enough to read the insignia you won't be alive much longer."
	icon_state = "legionmedallioncent"
