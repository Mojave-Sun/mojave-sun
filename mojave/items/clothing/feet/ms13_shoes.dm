/obj/item/clothing/shoes/ms13
	icon = 'mojave/icons/objects/clothing/shoes.dmi'
	worn_icon = 'mojave/icons/mob/clothing/feet.dmi'

/obj/item/clothing/shoes/ms13
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/shoes

/obj/item/clothing/shoes/ms13/rag
	name = "footcloths"
	desc = "A footcloths made of ripped cloth.<br>It has soaked in smelly sweat, and it is rather repulsive.<br>Only the poorest of settlers, mostly the drug addicts or slaves wear something like that."
	icon_state = "rag"
	inhand_icon_state = "rag"

/obj/item/clothing/shoes/ms13/tan
	name = "tan shoes"
	desc = "A pair of tanned leather shoes."
	icon_state = "tan"
	inhand_icon_state = "tan"

/obj/item/clothing/shoes/ms13/brownie //Make a craft recipe, and delete this comment.
	name = "brown shoes"
	desc = "A pair of brown leather shoes made of wasteland animals hides."
	icon_state = "brownie"
	inhand_icon_state = "brownie"

/obj/item/clothing/shoes/ms13/fancy
	name = "black shoes"
	desc = "A pair of fancy black shoes." //Nice shoes!
	icon_state = "fancy"
	inhand_icon_state = "fancy"

/obj/item/clothing/shoes/ms13/cowboy
	name = "cowboy boots"
	desc = "A pair of cowhide boots with spurs.<br>They have a Cuban heel, rounded to pointed toe, high shaft, and, traditionally, no lacing."
	icon_state = "cowboy"
	inhand_icon_state = "cowboy"

/obj/item/clothing/shoes/ms13/explorer
	name = "worn boots"
	desc = "A pair of slightly worn, steel-toed work boots.<br>Good at keeping toes safe from falling junk you find amid the ruins."
	icon_state = "explorer"
	armor = list(melee = 10, bullet = 10, laser = 0, energy = 0, bomb = 10, bio = 0, rad = 0, fire = 10, acid = 0)

/obj/item/clothing/shoes/ms13/khan
	name = "Great Khan boots"
	desc = "A pair of leather boots reinforced with metal plates.<br>These are commonly worn by Great Khans raiders."
	icon_state = "legionmetal" //It's that simple
	inhand_icon_state = "legionmetal"
	armor = list(melee = 10, bullet = 10, laser = 0, energy = 0, bomb = 10, bio = 0, rad = 0, fire = 10, acid = 0)

/obj/item/clothing/shoes/ms13/military
	name = "military boots"
	desc = "High speed, no-drag combat boots designed for use by the U.S. Army before the Great War."
	icon_state = "military"
	inhand_icon_state = "military"
	permeability_coefficient = 0.01
	clothing_flags = NOSLIP
	armor = list(melee = 10, bullet = 10, laser = 0, energy = 0, bomb = 10, bio = 0, rad = 0, fire = 10, acid = 0)
	strip_delay = 40
	resistance_flags = 0

/obj/item/clothing/shoes/ms13/military/vault
	name = "vault boots"
	desc = "Tight-fit vault-tec branded boots. Built for style and conditioned for the worst."
	icon_state = "vaultboots"
	inhand_icon_state = "vaultboots"
	armor = list(melee = 5, bullet = 5, laser = 0, energy = 0, bomb = 10, bio = 0, rad = 0, fire = 10, acid = 0)

/obj/item/clothing/shoes/ms13/military/light //I'm a ninja!
	name = "advanced combat boots"
	desc = "High speed, no-drag combat boots designed for use by U.S. special forces before the Great War.<br>The soles are made of aerated rubber to silence the movement of the wearer."
//	stepsound = FALSE
	clothing_flags = NOSLIP

/obj/item/clothing/shoes/ms13/military/diesel
	name = "male diesel boots"
	desc = "Fancy mens' steel-toed boots."
	icon_state = "diesel_m"
	inhand_icon_state = "diesel_m"
	armor = list(melee = 20, bullet = 10, laser = 10, energy = 10, bomb = 10, bio = 0, rad = 0, fire = 0, acid = 0)
	cold_protection = FEET
	min_cold_protection_temperature = SHOES_MIN_TEMP_PROTECT

/obj/item/clothing/shoes/ms13/military/female/diesel
	name = "female diesel boots"
	desc = "Fancy womens' knee-high platform boots with shiny steel clasps."
	icon_state = "diesel_f"
	inhand_icon_state = "diesel_f"
	armor = list(melee = 20, bullet = 10, laser = 10, energy = 10, bomb = 10, bio = 0, rad = 0, fire = 0, acid = 0)
	cold_protection = FEET
	min_cold_protection_temperature = SHOES_MIN_TEMP_PROTECT

/obj/item/clothing/shoes/ms13/military/ncr
	name = "NCR boots"
	desc = "A pair of standard issue NCR brown boots, with a puttee."
	icon_state = "ncr_boots"
	inhand_icon_state = "ncr"

/obj/item/clothing/shoes/ms13/military/ncr/winter
	name = "NCR winter boots"
	desc = "A pair of NCR boots intended for winter operations."
	icon_state = "ncr_boots_w"
	inhand_icon_state = "ncr_boots_w"

/obj/item/clothing/shoes/ms13/military/ncr_officer
	name = "NCR officer boots"
	desc = "A pair of brown leather boots, issued to NCR Officers."
	icon_state = "ncr_officer_boots"
	inhand_icon_state = "ncr_officer_boots"

/obj/item/clothing/shoes/ms13/military/ncr_officer/winter
	name = "NCR officer winter Boots"
	desc = "A pair of boots issued to NCR officers for winter operations."
	icon_state = "ncr_officer_boots_w"
	inhand_icon_state = "ncr_officer_boots_w"

/obj/item/clothing/shoes/ms13/military/legion
	name = "generic Legion boots"
	desc = "Generic boots worn by Legionaries."
	icon_state = "leg_tanboot"
	inhand_icon_state = "legionleather"
	armor = list(melee = 20, bullet = 10, laser = 10, energy = 0, bomb = 10, bio = 0, rad = 5, fire = 10, acid = 0)

/obj/item/clothing/shoes/ms13/military/legion/tanboots
	name = "tan leather boots"
	desc = "A crude pair of leather boots commonly worn by the Caesar's Legion recruits. These ones are made of a tan leather."
	icon_state = "leg_tanboot"
	inhand_icon_state = "legionleather"
	armor = list(melee = 10, bullet = 5, laser = 10, energy = 0, bomb = 10, bio = 0, rad = 5, fire = 10, acid = 0)

/obj/item/clothing/shoes/ms13/military/legion/darkboots
	name = "dark leather boots"
	desc = "A crude pair of leather boots commonly worn by the Caesar's Legion recruits. These ones are made of a darker leather."
	icon_state = "leg_darkboot"
	inhand_icon_state = "legionleather"
	armor = list(melee = 10, bullet = 5, laser = 10, energy = 0, bomb = 10, bio = 0, rad = 5, fire = 10, acid = 0)

/obj/item/clothing/shoes/ms13/military/legion/cleats
	name = "cleats"
	desc = "A pair of cleats, often sported by mobility focused Legionaries."
	icon_state = "leg_cleats"
	inhand_icon_state = "legionmetal"
	clothing_flags = NOSLIP
	armor = list(melee = 5, bullet = 10, laser = 10, energy = 10, bomb = 20, bio = 0, rad = 0, fire = 20, acid = 0)

/obj/item/clothing/shoes/ms13/military/legion/legate
	name = "legate boots"
	desc = "A pair of heavy boots worn by the Caesar's Legion Legate."
	icon_state = "legionlegate"
	inhand_icon_state = "legionlegate"
	armor = list(melee = 30, bullet = 30, laser = 20, energy = 20, bomb = 30, bio = 0, rad = 10, fire = 30, acid = 10)

//Fluff

/obj/item/clothing/shoes/ms13/swimfins
	name = "swimming fins"
	desc = "You see, Ivan, when you wear fin in desert, they help you swim good if you find much water."
	icon_state = "flippers"
	inhand_icon_state = "flippers"
	clothing_flags = NOSLIP

/obj/item/clothing/shoes/ms13/moon
	name = "moon boots"
	desc = "These boots are constructed with a thin rubber exterior and cellular rubber midsole covered by colorful nylon fabrics and using polyurethane foams.<br>To the Moon!"
	icon_state = "moon"
	inhand_icon_state = "moon"
	armor = list(melee = 40, bullet = 20, laser = 20, energy = 20, bomb = 20, bio = 10, rad = 50, fire = 0, acid = 0)
	cold_protection = FEET
	min_cold_protection_temperature = SHOES_MIN_TEMP_PROTECT
	heat_protection = FEET
	max_heat_protection_temperature = SHOES_MAX_TEMP_PROTECT
	clothing_flags = NOSLIP

/obj/item/clothing/shoes/ms13/doom
	name = "mars boots"
	desc = "These boots are constructed with a titanium alloy. There are some runes engraved on the side.<br>To Mars!"
	icon_state = "mars"
	inhand_icon_state = "mars"
	armor = list(melee = 40, bullet = 20, laser = 20, energy = 20, bomb = 20, bio = 80, rad = 80, fire = 80, acid = 50)
	cold_protection = FEET
	min_cold_protection_temperature = SHOES_MIN_TEMP_PROTECT
	heat_protection = FEET
	max_heat_protection_temperature = SHOES_MAX_TEMP_PROTECT
	clothing_flags = NOSLIP

/obj/item/clothing/shoes/ms13/miner
	name = "mining boots"
	desc = "Heavy-duty work boots with steel-reinforced toes and some fluffy wool for extra warmth."
	icon_state = "miner"
	inhand_icon_state = "miner"
	armor = list(melee = 20, bullet = 0, laser = 0, energy = 0, bomb = 20, bio = 0, rad = 0, fire = 0, acid = 0)
	cold_protection = FEET
	min_cold_protection_temperature = SHOES_MIN_TEMP_PROTECT
