/obj/item/clothing/neck/hooded/cloak/fallout
	name = "brown cloak"
	desc = "This shouldn't really exist"
	icon = 'fallout/icons/objects/clothing/neck.dmi'
	worn_icon = 'fallout/icons/mob/clothing/neck.dmi'
	icon_state = "qmcloak"
	inhand_icon_state = "qmcloak"

/obj/item/clothing/neck/hooded/cloak/fallout/speculatore
	name = "speculatore cloak"
	desc = "a hooded cloak worn by the elusive Speculatores of Caesar's Legion. It's good at blocking the sun's rays."
	icon_state = "leg_speccloak"
	hoodtype = /obj/item/clothing/head/hooded/cloakhood/goliath

/obj/item/clothing/head/hooded/cloakhood/goliath
	name = "speculatore cloak hood"
	icon_state = ""
	desc = "A protective & concealing hood."
	armor = list(MELEE = 35, BULLET = 10, LASER = 25, ENERGY = 35, BOMB = 25, BIO = 0, RAD = 0, FIRE = 60, ACID = 60)
	clothing_flags = SNUG_FIT
	flags_inv = HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR
	transparent_protection = HIDEMASK

/obj/item/clothing/neck/cloak/fallout/whitehalfcloak
	name = "white half cloak"
	desc = "A white half cloak used by legionaries. Good for snowy environments."
	icon_state = "leg_whitehalf"
	
/obj/item/clothing/neck/cloak/fallout/redhalfcloak
	name = "red half cloak"
	desc = "A red half cloak worn by certain legionaires. It's got the symbol of the bull on its back."
	icon_state = "leg_redhalf"
	
/obj/item/clothing/neck/cloak/fallout/brownhalfcloak
	name = "brown half cloak"
	desc = "A brown half cloak worn by certain legionaires. It's got the symbol of the bull on its back."
	icon_state = "leg_brownhalf"
