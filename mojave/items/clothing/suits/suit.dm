/obj/item/clothing/suit/ms13
	name = "generic ms13 suit"
	desc = "You shouldn't be seeing this. It do be lookin' kinda clean doe."
	icon = 'mojave/icons/objects/clothing/suits.dmi'
	worn_icon = 'mojave/icons/mob/clothing/suit.dmi'
	allowed = list(/obj/item/pen,/obj/item/paper,/obj/item/stamp,/obj/item/reagent_containers/food/drinks/flask,/obj/item/melee,/obj/item/storage/box/matches,/obj/item/lighter,/obj/item/clothing/mask/cigarette,/obj/item/storage/fancy/cigarettes,/obj/item/flashlight,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/scalpel,/obj/item/surgical_drapes,/obj/item/cautery,/obj/item/hemostat,/obj/item/retractor,/obj/item/storage/pill_bottle/dice,/obj/item/dice,/obj/item/gun)
	body_parts_covered = CHEST|ARMS|LEGS|GROIN
	///Icon file for left hand inhand overlays
	lefthand_file = 'mojave/icons/mob/inhands/clothing_lefthand.dmi'
	///Icon file for right inhand overlays
	righthand_file = 'mojave/icons/mob/inhands/clothing_righthand.dmi'

/obj/item/clothing/suit/ms13/ljacket/denim
	name = "denim vest"
	desc = "A thick denim vest."
	icon_state = "denim"
	inhand_icon_state = "denim"

/obj/item/clothing/suit/ms13/ljacket
	name = "leather jacket"
	desc = "A standard leather jacket, decent protection in a pinch."
	icon_state = "leatherjacket"
	inhand_icon_state = "leatherjacket"
	armor = list(melee = 20, bullet = 15, laser = 5, energy = 5, bomb = 5, bio = 5, rad = 5, fire = 5, acid = 5)

/obj/item/clothing/suit/ms13/ljacket/reinforced
	name = "reinforced leather jacket"
	desc = "A leather jacket reinforced with lots of extra leather padding and straps."
	icon_state = "reinfljacket"
	inhand_icon_state = "reinfljacket"
	armor = list(melee = 30, bullet = 25, laser = 15, energy = 15, bomb = 15, bio = 10, rad = 10, fire = 10, acid = 10)

/obj/item/clothing/suit/ms13/ljacket/winter
	name = "brown winter jacket"
	desc = "A plain brown winter jacket."
	icon_state = "winterbrown"
	inhand_icon_state = "winterjacketbrown"

/obj/item/clothing/suit/ms13/ljacket/winter/reinforced
	name = "reinforced brown winter jacket"
	desc = "A brown winter jacket reinforced with lots of leather padding."
	icon_state = "reinfwinterbrown"
	inhand_icon_state = "reinforcedwinterjacketbrown"
	armor = list(melee = 30, bullet = 25, laser = 15, energy = 15, bomb = 15, bio = 10, rad = 10, fire = 10, acid = 10)

/obj/item/clothing/suit/ms13/ljacket/winter/armored
	name = "armored brown winter jacket"
	desc = "A brown winter jacket heavily reinforced with protective armor plating."
	icon_state = "armorwinterbrown"
	inhand_icon_state = "armoredwinterjacketbrown"
	armor = list(melee = 40, bullet = 35, laser = 25, energy = 25, bomb = 30, bio = 10, rad = 10, fire = 25, acid = 10)

/obj/item/clothing/suit/ms13/ljacket/winter/blue
	name = "blue winter jacket"
	desc = "A blue winter jacket."
	icon_state = "winterblue"
	inhand_icon_state = "winterjacketblue"

/obj/item/clothing/suit/ms13/ljacket/winter/reinforced/blue
	name = "reinforced blue winter jacket"
	desc = "A blue winter jacket reinforced with lots of leather padding."
	icon_state = "reinfwinterblue"
	inhand_icon_state = "reinforcedwinterblue"

/obj/item/clothing/suit/ms13/ljacket/winter/armored/blue
	name = "armored blue winter jacket"
	desc = "A blue winter jacket heavily reinforced with protective armor plating."
	icon_state = "armorwinterblue"
	inhand_icon_state = "armoredwinterblue"

/obj/item/clothing/suit/ms13/ljacket/winter/black
	name = "black winter jacket"
	desc = "A black winter jacket."
	icon_state = "winterblack"
	inhand_icon_state = "winterjacketblack"

/obj/item/clothing/suit/ms13/ljacket/winter/reinforced/black
	name = "reinforced black winter jacket"
	desc = "A black winter jacket reinforced with lots of leather padding."
	icon_state = "reinfwinterblack"
	inhand_icon_state = "reinforcedwinterblack"

/obj/item/clothing/suit/ms13/ljacket/winter/armored/black
	name = "armored black winter jacket"
	desc = "A black winter jacket heavily reinforced with protective armor plating."
	icon_state = "armorwinterblack"
	inhand_icon_state = "armoredwinterblack"

/obj/item/clothing/suit/ms13/ljacket/veteran
	name = "merc veteran coat"
	desc = "A blue leather coat adorned with war medals. Commonly used by mercenaries."
	icon_state = "veteran"
	inhand_icon_state = "veteran"

/obj/item/clothing/suit/ms13/ljacket/moleskin
	name = "moleskin jacket"
	desc = "A durable moleskin jacket."
	icon_state = "moleskin"
	inhand_icon_state = "det_suit"

/obj/item/clothing/suit/ms13/ljacket/duster
	name = "duster"
	desc = "A thick leather duster."
	icon_state = "duster"
	inhand_icon_state = "duster"

/obj/item/clothing/suit/ms13/ljacket/duster/ghost
	name = "ghostly duster"
	desc = "A tattered and old, but still decently protective duster with a crude peace sign on the back. Reminds you of ghosts echoing in the past."
	icon_state = "ghostechoe"
	inhand_icon_state = "ghostechoe"

/obj/item/clothing/suit/ms13/trench/hubologist
	name = "hubologist robes"
	desc = "Long, dark, and imposing robes worn by Hubologists."
	icon_state = "hubologist"
	inhand_icon_state = "hubologist"

/obj/item/clothing/suit/ms13/trench/dapper
	name = "dapper overcoat"
	desc = "A fleeced overcoat for the pre-war bourgeois."
	icon_state = "dapper"
	inhand_icon_state = "coatwinter"

/obj/item/clothing/suit/ms13/manny
	name = "\improper Manny Mammoth suit"
	desc = "A perfectly preserved pre-war VINTAGE Manny Mammoth suit! It smells of crusty pizza."
	icon_state = "mannybody"
	inhand_icon_state = "chickensuit"

/obj/item/clothing/suit/ms13/vaultlab
	name = "vault lab coat"
	desc = "A lab coat often worn by Vault doctors. Good for protecting your precious undersuit from rapid blood ejection from your patients."
	icon_state = "vaultlabcoat"
	inhand_icon_state = "labcoat"

/obj/item/clothing/suit/ms13/snazzyleather
	name = "snazzy leather jacket"
	desc = "A leather jacket of remarkable quality. It's got a strange serpent-like symbol on the back. There's no telling where it came from."
	icon_state = "leathersnakes"
	inhand_icon_state = "ro_suit"

/obj/item/clothing/suit/apron/waders/ms13
	name = "leather waders"
	desc = "A pair of heavy duty leather waders, they've seen better days."
	icon_state = "hort_waders"
	inhand_icon_state = "hort_waders"
	body_parts_covered = CHEST|GROIN|LEGS
	permeability_coefficient = 0.5
