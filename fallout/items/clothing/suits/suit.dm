/obj/item/clothing/suit/fallout
	name = "generic fallout suit"
	desc = "You shouldn't be seeing this. It do be lookin' kinda clean doe."
	icon = 'fallout/icons/objects/clothing/suits.dmi'
	mob_overlay_icon = 'fallout/icons/mob/clothing/suit.dmi'
	allowed = list(/obj/item/pen,/obj/item/paper,/obj/item/stamp,/obj/item/reagent_containers/food/drinks/flask,/obj/item/melee,/obj/item/storage/box/matches,/obj/item/lighter,/obj/item/clothing/mask/cigarette,/obj/item/storage/fancy/cigarettes,/obj/item/flashlight,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/scalpel,/obj/item/surgical_drapes,/obj/item/cautery,/obj/item/hemostat,/obj/item/retractor,/obj/item/storage/pill_bottle/dice,/obj/item/dice)
	body_parts_covered = CHEST|ARMS|LEGS|GROIN
	
/obj/item/clothing/suit/fallout/vest
	name = "leather vest"
	desc = "A vest made of tanned leather."
	icon_state = "tanleather"
	item_state = "det_suit"
	armor = list(melee = 15, bullet = 10, laser = 5, energy = 5, bomb = 10, bio = 0, rad = 0, fire = 0, acid = 0)

/obj/item/clothing/suit/fallout/vest/puffer
	name = "puffer vest"
	desc = "A thick vest with a rubbery water-resistant shell."
	icon_state = "puffervest"
	
/obj/item/clothing/suit/fallout/vest/cowboy
	name = "cowboy vest"
	desc = "A brown vest, typically worn by wannabe cowboys and prospectors."
	icon_state = "cowboybvest"
	item_state = "lb_suit"
	
/obj/item/clothing/suit/fallout/vest/grey
	name = "grey vest"
	desc = "A grey, fancy looking vest."
	icon_state = "cowboygvest"
	item_state = "gy_suit"
	
/obj/item/clothing/suit/fallout/ljacket
	name = "leather jacket"
	desc = "A typical leather jacket."
	icon_state = "mfp"
	item_state = "hostrench"
	armor = list(melee = 25, bullet = 20, laser = 5, energy = 5, bomb = 10, bio = 5, rad = 5, fire = 5, acid = 5)
	allowed = list(/obj/item/pen,/obj/item/paper,/obj/item/stamp,/obj/item/reagent_containers/food/drinks/flask,/obj/item/storage/box/matches,/obj/item/lighter,/obj/item/clothing/mask/cigarette,/obj/item/storage/fancy/cigarettes,/obj/item/flashlight,/obj/item/gun,/obj/item/ammo_box,/obj/item/ammo_casing)
	
/obj/item/clothing/suit/fallout/ljacket/reinforced
	name = "reinforced leather jacket"
	desc = "A leather jacket reinforced with a thick shoulder pad."
	icon_state = "mfp_raider"
	armor = list(melee = 35, bullet = 25, laser = 10, energy = 10, bomb = 20, bio = 10, rad = 10, fire = 10, acid = 10)
	
/obj/item/clothing/suit/fallout/ljacket/veteran
	name = "merc veteran coat"
	desc = "A blue leather coat adorned with war medals. Commonly used by mercenaries."
	icon_state = "veteran"
	item_state = "suit-command"
	
/obj/item/clothing/suit/fallout/duster
	name = "duster"
	desc = "A long brown leather overcoat."
	icon_state = "duster"
	item_state = "det_suit"
	armor = list(melee = 25, bullet = 20, laser = 5, energy = 5, bomb = 10, bio = 5, rad = 5, fire = 5, acid = 5)
	allowed = list(/obj/item/pen,/obj/item/paper,/obj/item/stamp,/obj/item/reagent_containers/food/drinks/flask,/obj/item/storage/box/matches,/obj/item/lighter,/obj/item/clothing/mask/cigarette,/obj/item/storage/fancy/cigarettes,/obj/item/flashlight,/obj/item/gun,/obj/item/ammo_box,/obj/item/ammo_casing)
	
/obj/item/clothing/suit/fallout/duster/sheriff
	name = "sheriff duster"
	desc = "A long brown leather overcoat. Reinforced and typically worn by wasteland lawmen."
	icon_state = "sheriff"
	armor = list(melee = 35, bullet = 25, laser = 10, energy = 10, bomb = 20, bio = 10, rad = 10, fire = 10, acid = 10)
	
/obj/item/clothing/suit/fallout/trench
	name = "thick trenchcoat"
	desc = "A heavy tan trenchcoat."
	icon_state = "tantrench"
	item_state = "tantrench"
	armor = list(melee = 25, bullet = 20, laser = 5, energy = 5, bomb = 10, bio = 5, rad = 5, fire = 5, acid = 5)
	allowed = list(/obj/item/pen,/obj/item/paper,/obj/item/stamp,/obj/item/reagent_containers/food/drinks/flask,/obj/item/storage/box/matches,/obj/item/lighter,/obj/item/clothing/mask/cigarette,/obj/item/storage/fancy/cigarettes,/obj/item/flashlight,/obj/item/gun,/obj/item/ammo_box,/obj/item/ammo_casing)
	
/obj/item/clothing/suit/fallout/trench/black
	name = "black trenchcoat"
	desc = "An imposing black trenchcoat."
	icon_state = "jensencoat"
	item_state = "jensencoat"
	
/obj/item/clothing/suit/fallout/ljacket/biker
	name = "biker jacket"
	desc = "A leather jacket most suited for biker gangs."
	icon_state = "biker_jacket"
	
/obj/item/clothing/suit/fallout/ljacket/bomber
	name = "bomber jacket"
	desc = "A fur-lined bomber jacket. Warm and stylish."
	icon_state = "bomberjacket"
	
/obj/item/clothing/suit/fallout/ljacket/military
	name = "military jacket"
	desc = "An old school military jacket."
	icon_state = "militaryjacket"
	
/obj/item/clothing/suit/fallout/ljacket/letterman
	name = "letterman jacket"
	desc = "A high school letterman jacket. For showing off your achievements in the post apocalypse."
	icon_state = "letterman"
	
/obj/item/clothing/suit/fallout/ljacket/wanderer
	name = "wanderer jacket"
	desc = "A jacket made from tanned leather."
	icon_state = "wanderer"
	item_state = "owl"
	
/obj/item/clothing/suit/toggle/labcoat/fallout
	name = "doctor's coat"
	desc = "The medical coat of a typical wasteland doctor."
	icon = 'fallout/icons/objects/clothing/suits.dmi'
	icon_state = "followers"
	item_state = "labcoat"
	armor = list(melee = 10, bullet = 5, laser = 5, energy = 5, bomb = 5, bio = 15, rad = 15, fire = 15, acid = 15)
	body_parts_covered = CHEST|ARMS|LEGS|GROIN
	allowed = list(/obj/item/pen,/obj/item/paper,/obj/item/stamp,/obj/item/reagent_containers/food/drinks/flask,/obj/item/storage/box/matches,/obj/item/lighter,/obj/item/clothing/mask/cigarette,/obj/item/storage/fancy/cigarettes,/obj/item/flashlight,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/scalpel,/obj/item/surgical_drapes,/obj/item/cautery,/obj/item/hemostat,/obj/item/retractor,/obj/item/storage/pill_bottle/dice,/obj/item/dice)
	
/obj/item/clothing/suit/fallout/trench/battle
	name = "battle trenchcoat"
	desc = "A trenchcoat with extra padding and lined with fur for extra style. Perfect for a mix of battle ready and charming."
	icon_state = "battlecoat"
	item_state = "battlecoat"
	armor = list(melee = 35, bullet = 25, laser = 10, energy = 10, bomb = 20, bio = 10, rad = 10, fire = 10, acid = 10)
	
/obj/item/clothing/suit/toggle/labcoat/fallout/wintercoat
	name = "blue winter coat"
	desc = "A blue, warm winter coat. Perfect for a ski trip."
	icon_state = "coatwinterblue"
	item_state = "coatwinterblue"
	armor = list(melee = 15, bullet = 10, laser = 5, energy = 5, bomb = 10, bio = 0, rad = 0, fire = 0, acid = 0)
	
/obj/item/clothing/suit/toggle/labcoat/fallout/wintercoat/grey
	name = "grey winter coat"
	desc = "A grey, warm winter coat. For those who prefer less brightness in their life."
	icon_state = "coatwinter"
	item_state = "coatwinter"

/obj/item/clothing/suit/fallout/duster/ghost
	name = "ghostly duster"
	desc = "A tattered and old, but still decently protective duster with a crude peace sign on the back. Reminds you of ghosts echoing in the past."
	icon_state = "ghostechoe"
	item_state = "ghostechoe"
	armor = list(melee = 35, bullet = 25, laser = 10, energy = 10, bomb = 20, bio = 10, rad = 10, fire = 10, acid = 10)
