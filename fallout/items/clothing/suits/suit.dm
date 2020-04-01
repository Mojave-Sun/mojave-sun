/obj/item/clothing/suit/fallout
	name = "generic fallout suit"
	desc = "You shouldn't be seeing this. It do be lookin' kinda clean doe."
	icon = 'fallout/icons/objects/clothing/suits.dmi'
	allowed = list(/obj/item/pen,/obj/item/paper,/obj/item/stamp,/obj/item/reagent_containers/food/drinks/flask,/obj/item/melee,/obj/item/storage/box/matches,/obj/item/lighter,/obj/item/clothing/mask/cigarette,/obj/item/storage/fancy/cigarettes,/obj/item/flashlight,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/scalpel,/obj/item/surgical_drapes,/obj/item/cautery,/obj/item/hemostat,/obj/item/retractor,/obj/item/storage/pill_bottle/dice,/obj/item/dice)
	body_parts_covered = CHEST|ARMS|LEGS|GROIN
	
/obj/item/clothing/suit/fallout/lvest
	name = "leather vest"
	desc = "A vest made of tanned leather."
	icon_state = "tanleather"
	item_state = "det_suit"
	armor = list(melee = 15, bullet = 10, laser = 5, energy = 5, bomb = 10, bio = 0, rad = 0, fire = 0, acid = 0)

/obj/item/clothing/suit/fallout/puffer
	name = "puffer vest"
	desc = "A thick vest with a rubbery water-resistant shell."
	icon_state = "puffervest"
	item_state = "det_suit"
	armor = list(melee = 15, bullet = 10, laser = 5, energy = 5, bomb = 10, bio = 0, rad = 0, fire = 0, acid = 0)
	
/obj/item/clothing/suit/fallout/cowboyvest
	name = "cowboy vest"
	desc = "A brown vest, typically worn by wannabe cowboys and prospectors."
	icon_state = "cowboybvest"
	item_state = "lb_suit"
	armor = list(melee = 15, bullet = 10, laser = 5, energy = 5, bomb = 10, bio = 0, rad = 0, fire = 0, acid = 0)
	
/obj/item/clothing/suit/fallout/gvest
	name = "grey vest"
	desc = "A grey, fancy looking vest."
	icon_state = "cowboygvest"
	item_state = "gy_suit"
	armor = list(melee = 15, bullet = 10, laser = 5, energy = 5, bomb = 10, bio = 0, rad = 0, fire = 0, acid = 0)
	
/obj/item/clothing/suit/fallout/ljacket
	name = "leather jacket"
	desc = "A typical leather jacket."
	icon_state = "mfp"
	item_state = "hostrench"
	armor = list(melee = 25, bullet = 20, laser = 5, energy = 5, bomb = 10, bio = 0, rad = 0, fire = 0, acid = 0)
	allowed = list(/obj/item/pen,/obj/item/paper,/obj/item/stamp,/obj/item/reagent_containers/food/drinks/flask,/obj/item/storage/box/matches,/obj/item/lighter,/obj/item/clothing/mask/cigarette,/obj/item/storage/fancy/cigarettes,/obj/item/flashlight,/obj/item/gun,/obj/item/ammo_box,/obj/item/ammo_casing)
	
/obj/item/clothing/suit/fallout/ljacket/reinforced
	name = "reinforced leather jacket"
	desc = "A leather jacket reinforced with a thick shoulder pad."
	icon_state = "mfp_raider"
	armor = list(melee = 35, bullet = 25, laser = 10, energy = 10, bomb = 20, bio = 0, rad = 0, fire = 0, acid = 0)
	
/obj/item/clothing/suit/fallout/veteran
	name = "merc veteran coat"
	desc = "A blue leather coat adorned with war medals. Commonly used by mercenaries."
	icon_state = "veteran"
	item_state = "suit-command"
	armor = list(melee = 25, bullet = 20, laser = 5, energy = 5, bomb = 10, bio = 0, rad = 0, fire = 0, acid = 0)
	allowed = list(/obj/item/pen,/obj/item/paper,/obj/item/stamp,/obj/item/reagent_containers/food/drinks/flask,/obj/item/storage/box/matches,/obj/item/lighter,/obj/item/clothing/mask/cigarette,/obj/item/storage/fancy/cigarettes,/obj/item/flashlight,/obj/item/gun,/obj/item/ammo_box,/obj/item/ammo_casing)
	
/obj/item/clothing/suit/fallout/duster
	name = "duster"
	desc = "A long brown leather overcoat."
	icon_state = "duster"
	item_state = "det_suit"
	armor = list(melee = 25, bullet = 20, laser = 5, energy = 5, bomb = 10, bio = 0, rad = 0, fire = 0, acid = 0)
	allowed = list(/obj/item/pen,/obj/item/paper,/obj/item/stamp,/obj/item/reagent_containers/food/drinks/flask,/obj/item/storage/box/matches,/obj/item/lighter,/obj/item/clothing/mask/cigarette,/obj/item/storage/fancy/cigarettes,/obj/item/flashlight,/obj/item/gun,/obj/item/ammo_box,/obj/item/ammo_casing)
	
/obj/item/clothing/suit/fallout/duster/sheriff
	name = "sheriff duster"
	desc = "A long brown leather overcoat. Reinforced and typically worn by wasteland lawmen."
	icon_state = "sheriff"
	armor = list(melee = 35, bullet = 25, laser = 10, energy = 10, bomb = 20, bio = 0, rad = 0, fire = 0, acid = 0)
	
/obj/item/clothing/suit/fallout/trench
	name = "thick trenchcoat"
	desc = "A heavy tan trenchcoat."
	icon_state = "autumn"
	item_state = "autumn"
	armor = list(melee = 25, bullet = 20, laser = 5, energy = 5, bomb = 10, bio = 0, rad = 0, fire = 0, acid = 0)
	allowed = list(/obj/item/pen,/obj/item/paper,/obj/item/stamp,/obj/item/reagent_containers/food/drinks/flask,/obj/item/storage/box/matches,/obj/item/lighter,/obj/item/clothing/mask/cigarette,/obj/item/storage/fancy/cigarettes,/obj/item/flashlight,/obj/item/gun,/obj/item/ammo_box,/obj/item/ammo_casing)
	
/obj/item/clothing/suit/fallout/trench/black
	name = "black trenchcoat"
	desc = "An imposing black trenchcoat."
	icon_state = "jensencoat"
	item_state = "jensencoat"
	
/obj/item/clothing/suit/fallout/ljacket/wanderer
	name = "wanderer jacket"
	desc = "A jacket made from tanned leather."
	icon_state = "wanderer"
	item_state = "owl"
	
/obj/item/clothing/suit/fallout/ljacket/biker
	name = "biker jacket"
	desc = "A leather jacket most suited for biker gangs."
	icon_state = "biker_jacket"
	
/obj/item/clothing/suit/toggle/labcoat/fallout
	name = "doctor's coat"
	desc = "The medical coat of a typical wasteland doctor."
	icon = 'fallout/icons/objects/clothing/suits.dmi'
	icon_state = "followers"
	item_state = "labcoat"
	armor = list(melee = 10, bullet = 5, laser = 5, energy = 5, bomb = 5, bio = 15, rad = 15, fire = 15, acid = 15)
	body_parts_covered = CHEST|ARMS|LEGS|GROIN
	allowed = list(/obj/item/pen,/obj/item/paper,/obj/item/stamp,/obj/item/reagent_containers/food/drinks/flask,/obj/item/storage/box/matches,/obj/item/lighter,/obj/item/clothing/mask/cigarette,/obj/item/storage/fancy/cigarettes,/obj/item/flashlight,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/scalpel,/obj/item/surgical_drapes,/obj/item/cautery,/obj/item/hemostat,/obj/item/retractor,/obj/item/storage/pill_bottle/dice,/obj/item/dice
	
/obj/item/clothing/suit/fallout/trench/battle
	name = "battle trenchcoat"
	desc = "A trenchcoat with extra padding and lined with fur for extra style. Perfect for a mix of battle ready and charming."
	icon_state = "maxson_battlecoat"
	armor = list(melee = 35, bullet = 25, laser = 10, energy = 10, bomb = 20, bio = 0, rad = 0, fire = 0, acid = 0)