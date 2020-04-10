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
	item_state = "tanleather"
	armor = list(melee = 15, bullet = 10, laser = 5, energy = 5, bomb = 10, bio = 0, rad = 0, fire = 0, acid = 0)

/obj/item/clothing/suit/fallout/vest/puffer
	name = "puffer vest"
	desc = "A thick vest with a rubbery water-resistant shell."
	icon_state = "puffervest"
	item_state = "puffervest"
	
/obj/item/clothing/suit/fallout/vest/cowboy
	name = "cowboy vest"
	desc = "A brown vest, typically worn by wannabe cowboys and prospectors."
	icon_state = "cowboybvest"
	item_state = "cowboybvest"
	
/obj/item/clothing/suit/fallout/vest/grey
	name = "grey vest"
	desc = "A grey, fancy looking vest."
	icon_state = "cowboygvest"
	item_state = "cowboygvest"

/obj/item/clothing/suit/fallout/vest/letterman
	name = "letterman jacket"
	desc = "A high school letterman jacket. For showing off your achievements in the post apocalypse."
	icon_state = "letterman"
	item_state = "letterman"
	
/obj/item/clothing/suit/fallout/vest/denim
	name = "denim vest"
	desc = "A comfortable vest made of denim. Might not save your life, but atleast it will save your style."
	icon_state = "denim"
	item_state = "denim"
	
/obj/item/clothing/suit/fallout/ljacket
	name = "leather jacket"
	desc = "A typical leather jacket."
	icon_state = "mfp"
	item_state = "mfp"
	armor = list(melee = 25, bullet = 20, laser = 5, energy = 5, bomb = 10, bio = 5, rad = 5, fire = 5, acid = 5)
	allowed = list(/obj/item/pen,/obj/item/paper,/obj/item/stamp,/obj/item/reagent_containers/food/drinks/flask,/obj/item/storage/box/matches,/obj/item/lighter,/obj/item/clothing/mask/cigarette,/obj/item/storage/fancy/cigarettes,/obj/item/flashlight,/obj/item/gun,/obj/item/ammo_box,/obj/item/ammo_casing)
	
/obj/item/clothing/suit/fallout/ljacket/mayor
	name = "Mammoth mayor jacket"
	desc = "A light, brown winter jacket. Normally worn by the mayor of the town of Mammoth."
	icon_state = "mayorjacket"
	item_state = "mayorjacket"
	armor = list(melee = 15, bullet = 10, laser = 5, energy = 5, bomb = 10, bio = 0, rad = 0, fire = 0, acid = 0)
	
/obj/item/clothing/suit/fallout/ljacket/reinforced/deputy
	name = "Mammoth deputy jacket"
	desc = "A reinforced and padded brown winter jacket given to deputies of the town of Mammoth."
	icon_state = "deputyjacket"
	item_state = "deputyjacket"
	
/obj/item/clothing/suit/fallout/ljacket/sheriff
	name = "Mammoth sheriff's jacket"
	desc = "An armored and heavily reinforced brown winter jacket belonging to the sheriff of the town of Mammoth."
	icon_state = "sheriffjacket"
	item_state = "sheriffjacket"
	armor = list(melee = 50, bullet = 35, laser = 25, energy = 25, bomb = 30, bio = 10, rad = 10, fire = 25, acid = 10)
	
/obj/item/clothing/suit/fallout/ljacket/mayor/blue
	name = "blue winter jacket"
	desc = "A light, blue winter jacket."
	icon_state = "winterjacketblue"
	item_state = "winterjacketblue"
	
/obj/item/clothing/suit/fallout/ljacket/reinforced/deputy/blue
	name = "reinforced blue winter jacket"
	desc = "A reinforced and padded blue winter jacket."
	icon_state = "reinforcedwinterblue"
	item_state = "reinforcedwinterblue"
	
/obj/item/clothing/suit/fallout/ljacket/sheriff/blue
	name = "armored blue winter jacket"
	desc = "An armored and heavily reinforced blue winter jacket."
	icon_state = "armoredwinterblue"
	item_state = "armoredwinterblue"
	
/obj/item/clothing/suit/fallout/ljacket/mayor/black
	name = "black winter jacket"
	desc = "A light, black winter jacket."
	icon_state = "winterjacketblack"
	item_state = "winterjacketblack"
	
/obj/item/clothing/suit/fallout/ljacket/reinforced/deputy/black
	name = "reinforced black winter jacket"
	desc = "A reinforced and padded black winter jacket."
	icon_state = "reinforcedwinterblack"
	item_state = "reinforcedwinterblack"
	
/obj/item/clothing/suit/fallout/ljacket/sheriff/black
	name = "armored black winter jacket"
	desc = "An armored and heavily reinforced black winter jacket."
	icon_state = "armoredwinterblack"
	item_state = "armoredwinterblack"
	
/obj/item/clothing/suit/fallout/ljacket/reinforced
	name = "reinforced leather jacket"
	desc = "A leather jacket reinforced with a thick shoulder pad."
	icon_state = "mfp_raider"
	item_state = "mfp_raider"
	armor = list(melee = 35, bullet = 25, laser = 10, energy = 10, bomb = 20, bio = 10, rad = 10, fire = 10, acid = 10)
	
/obj/item/clothing/suit/fallout/ljacket/veteran
	name = "merc veteran coat"
	desc = "A blue leather coat adorned with war medals. Commonly used by mercenaries."
	icon_state = "veteran"
	item_state = "veteran"
	
/obj/item/clothing/suit/fallout/duster
	name = "duster"
	desc = "A long brown leather overcoat."
	icon_state = "duster"
	item_state = "duster"
	armor = list(melee = 25, bullet = 20, laser = 5, energy = 5, bomb = 10, bio = 5, rad = 5, fire = 5, acid = 5)
	allowed = list(/obj/item/pen,/obj/item/paper,/obj/item/stamp,/obj/item/reagent_containers/food/drinks/flask,/obj/item/storage/box/matches,/obj/item/lighter,/obj/item/clothing/mask/cigarette,/obj/item/storage/fancy/cigarettes,/obj/item/flashlight,/obj/item/gun,/obj/item/ammo_box,/obj/item/ammo_casing)
	
/obj/item/clothing/suit/fallout/duster/reinf
	name = "reinforced duster"
	desc = "A long brown leather overcoat reinforced and padded for additional protection."
	icon_state = "reinfduster"
	item_state = "reinfduster"
	armor = list(melee = 35, bullet = 25, laser = 10, energy = 10, bomb = 20, bio = 10, rad = 10, fire = 10, acid = 10)
	
/obj/item/clothing/suit/fallout/trench
	name = "tan trenchcoat"
	desc = "A heavy tan trenchcoat."
	icon_state = "tantrench"
	item_state = "tantrench"
	armor = list(melee = 25, bullet = 20, laser = 5, energy = 5, bomb = 10, bio = 5, rad = 5, fire = 5, acid = 5)
	allowed = list(/obj/item/pen,/obj/item/paper,/obj/item/stamp,/obj/item/reagent_containers/food/drinks/flask,/obj/item/storage/box/matches,/obj/item/lighter,/obj/item/clothing/mask/cigarette,/obj/item/storage/fancy/cigarettes,/obj/item/flashlight,/obj/item/gun,/obj/item/ammo_box,/obj/item/ammo_casing)
	
/obj/item/clothing/suit/fallout/trench/brown
	name = "brown overcoat"
	desc = "A slightly dirty brown overcoat."
	icon_state = "brownover"
	item_state = "brownover"
	
/obj/item/clothing/suit/fallout/trench/black
	name = "black trenchcoat"
	desc = "An imposing black trenchcoat."
	icon_state = "blacktrench"
	item_state = "blacktrench"
	
/obj/item/clothing/suit/fallout/trench/battle/black
	name = "reinforced black trenchcoat"
	desc = "A black trenchcoat with some minor additional armorings for added protection."
	icon_state = "reinforcedblacktrench"
	item_state = "reinforcedblacktrench"
	
/obj/item/clothing/suit/fallout/trench/black/armored
	name = "armored black trenchcoat"
	desc = "An intimidating black trenchcoat with a lot of armor, padding, and a spiked pauldron for making sure that fear is instilled."
	icon_state = "armoredblacktrench"
	item_state = "armoredblacktrench"
	armor = list(melee = 50, bullet = 35, laser = 25, energy = 25, bomb = 30, bio = 10, rad = 10, fire = 25, acid = 10)
	
/obj/item/clothing/suit/fallout/trench/detective
	name = "detective's trenchcoat"
	desc = "A trenchcoat normally worn by pre-war detectives."
	icon_state = "detective"
	item_state = "detective"
	
/obj/item/clothing/suit/fallout/trench/detective/dark
	name = "dark detective's trenchcoat"
	desc = "A dark trenchcoat normally worn by pre-war detectives."
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
	
/obj/item/clothing/suit/fallout/ljacket/wanderer
	name = "wanderer jacket"
	desc = "A jacket made from tanned leather."
	icon_state = "wanderer"
	item_state = "wanderer"
	
/obj/item/clothing/suit/toggle/labcoat/fallout
	name = "doctor's coat"
	desc = "The medical coat of a typical wasteland doctor."
	icon = 'fallout/icons/objects/clothing/suits.dmi'
	mob_overlay_icon = 'fallout/icons/mob/clothing/suit.dmi'
	icon_state = "followers"
	item_state = "followers"
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
	desc = "A blue, warm winter coat. Perfect for a ski trip. Can button open and closed."
	icon_state = "coatwinterblue"
	item_state = "coatwinterblue"
	armor = list(melee = 15, bullet = 10, laser = 5, energy = 5, bomb = 10, bio = 0, rad = 0, fire = 0, acid = 0)
	
/obj/item/clothing/suit/toggle/labcoat/fallout/wintercoat/grey
	name = "grey winter coat"
	desc = "A grey, warm winter coat. For those who prefer less brightness in their life. Can button open and closed."
	icon_state = "coatwinter"
	item_state = "coatwinter"

/obj/item/clothing/suit/fallout/duster/ghost
	name = "ghostly duster"
	desc = "A tattered and old, but still decently protective duster with a crude peace sign on the back. Reminds you of ghosts echoing in the past."
	icon_state = "ghostechoe"
	item_state = "ghostechoe"
	armor = list(melee = 35, bullet = 25, laser = 10, energy = 10, bomb = 20, bio = 10, rad = 10, fire = 10, acid = 10)

/obj/item/clothing/suit/fallout/trench/hubologist
	name = "Hubologist robes"
	desc = "Long, dark, and imposing robes worn by Hubologists."
	icon_state = "hubologist"
	item_state = "hubologist"
