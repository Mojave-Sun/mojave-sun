/obj/effect/spawner/lootdrop/fallout
	name = "Fallout loot spawners - DO NOT USE ME"
	lootdoubles = FALSE
	fan_out_items = TRUE
	
/obj/effect/spawner/lootdrop/fallout/armor
	name = "Fallout armor spawners - DO NOT USE ME"
	
/obj/effect/spawner/lootdrop/fallout/armor/tier1
	name = "tier 1 armor spawner"
	lootcount = 2
	var/loot1 = list(
				/obj/item/clothing/suit/fallout/vest,
				/obj/item/clothing/head/helmet/fallout/cowboy/stormchaser
				)
	var/loot2 = list(
				/obj/item/clothing/suit/fallout/vest/cowboy,
				/obj/item/clothing/head/helmet/fallout/cowboy
				)
	var/loot3 = list(
				/obj/item/clothing/suit/fallout/vest/grey,
				/obj/item/clothing/head/helmet/fallout/cowboy/black
				)
	var/loot4 = list(
				/obj/item/clothing/suit/fallout/vest/puffer,
				""
				)
	var/loot5 = list(
				/obj/item/clothing/suit/fallout/vest/letterman,
				""
				)
	var/loot6 = list(
				/obj/item/clothing/suit/fallout/ljacket,
				/obj/item/clothing/head/helmet/fallout/cowboy/padded/black
				)
	var/loot7 = list(
				/obj/item/clothing/suit/fallout/ljacket/mayor/blue,
				""
				)
	var/loot8 = list(
				/obj/item/clothing/suit/fallout/ljacket/mayor/black,
				""
				)
	var/loot9 = list(
				/obj/item/clothing/suit/fallout/ljacket/veteran,
				/obj/item/clothing/head/helmet/fallout/cowboy/padded/police
				)
	var/loot10 = list(
				/obj/item/clothing/suit/fallout/duster,
				/obj/item/clothing/head/helmet/fallout/cowboy/padded
				)
	var/loot11 = list(
				/obj/item/clothing/suit/fallout/trench,
				/obj/item/clothing/head/helmet/fallout/cowboy/padded
				)
	var/loot12 = list(
				/obj/item/clothing/suit/fallout/trench/black,
				/obj/item/clothing/head/helmet/fallout/cowboy/padded/black
				)
	var/loot13 = list(
				/obj/item/clothing/suit/fallout/trench/black/detective,
				/obj/item/clothing/head/helmet/fallout/cowboy/padded/detective/grey
				)
	var/loot14 = list(
				/obj/item/clothing/suit/fallout/ljacket/biker,
				""
				)
	var/loot15 = list(
				/obj/item/clothing/suit/fallout/ljacket/bomber,
				/obj/item/clothing/head/helmet/fallout/cowboy/padded/ushanka
				)
	var/loot16 = list(
				/obj/item/clothing/suit/fallout/ljacket/military,
				/obj/item/clothing/head/helmet/fallout/cowboy/padded/military
				)
	var/loot17 = list(
				/obj/item/clothing/suit/fallout/ljacket/wanderer,
				/obj/item/clothing/head/helmet/fallout/cowboy/stormchaser
				)
	var/loot18 = list(
				/obj/item/clothing/suit/toggle/labcoat/fallout/wintercoat/grey,
				""
				)
	var/loot19 = list(
				/obj/item/clothing/suit/toggle/labcoat/fallout/wintercoat,
				""
				)
	var/loot20 = list(
				/obj/item/clothing/suit/toggle/labcoat/fallout,
				""
				)
	var/loot21 = list(
				/obj/item/clothing/suit/armor/fallout/leatherarmor/light,
				/obj/item/clothing/head/helmet/fallout/cowboy/stormchaser
				)
	var/loot22 = list(
				/obj/item/clothing/suit/armor/fallout/kit/light,
				""
				)
	var/loot23 = list(
				/obj/item/clothing/head/helmet/fallout/hockey,
				""
				)
				
/obj/effect/spawner/lootdrop/fallout/armor/tier1/Initialize() //on mapload, pick what to spawn
	loot = pick(loot1, loot2, loot3, loot4, loot5, loot6, loot7, loot8, loot9, loot10, loot11, loot12, loot13, loot14, loot15, loot16, loot17, loot18, loot19, loot20, loot21, loot22, loot23)
	. = ..()

/obj/effect/spawner/lootdrop/fallout/armor/tier2
	name = "tier 2 armor spawner"
	lootcount = 2
	var/loot1 = list(
				/obj/item/clothing/suit/fallout/ljacket/reinforced/deputy/blue,
				""
				)
	var/loot2 = list(
				/obj/item/clothing/suit/fallout/ljacket/reinforced/deputy/black,
				""
				)
	var/loot3 = list(
				/obj/item/clothing/suit/fallout/ljacket/reinforced,
				/obj/item/clothing/head/helmet/fallout/cowboy/reinf/motorcycle
				)
	var/loot4 = list(
				/obj/item/clothing/suit/fallout/duster/reinf,
				/obj/item/clothing/head/helmet/fallout/cowboy/reinf
				)
	var/loot5 = list(
				/obj/item/clothing/suit/fallout/trench/battle/black,
				/obj/item/clothing/head/helmet/fallout/cowboy/reinf
				)
	var/loot6 = list(
				/obj/item/clothing/suit/fallout/trench/battle,
				""
				)
	var/loot7 = list(
				/obj/item/clothing/head/helmet/riot/fallout,
				""
				)
	var/loot8 = list(
				/obj/item/clothing/suit/armor/fallout/kit,
				""
				)
	var/loot9 = list(
				/obj/item/clothing/suit/armor/fallout/leatherarmor,
				/obj/item/clothing/head/helmet/fallout/cowboy/reinf/motorcycle
				)
	var/loot10 = list(
				/obj/item/clothing/suit/armor/fallout/blastmaster,
				/obj/item/clothing/head/helmet/fallout/blastmaster
				)
	var/loot11 = list(
				/obj/item/clothing/suit/armor/fallout/yankee,
				/obj/item/clothing/head/helmet/fallout/yankee
				)
	var/loot12 = list(
				/obj/item/clothing/suit/armor/fallout/sadist,
				/obj/item/clothing/head/helmet/fallout/psychotic
				)
	var/loot13 = list(
				/obj/item/clothing/suit/armor/fallout/sadist/tribal,
				""
				)
	var/loot14 = list(
				/obj/item/clothing/suit/armor/fallout/badlands,
				/obj/item/clothing/head/helmet/fallout/wastehound
				)
	var/loot15 = list(
				/obj/item/clothing/suit/armor/fallout/painspike,
				/obj/item/clothing/head/helmet/fallout/arclight
				)
	var/loot16 = list(
				/obj/item/clothing/suit/armor/fallout/vest,
				/obj/item/clothing/head/helmet/fallout/cowboy/padded/police
				)
	var/loot17 = list(
				/obj/item/clothing/suit/armor/fallout/vest/detective,
				/obj/item/clothing/head/helmet/fallout/cowboy/padded/detective
				)
				
/obj/effect/spawner/lootdrop/fallout/armor/tier2/Initialize()
	loot = pick(loot1, loot2, loot3, loot4, loot5, loot6, loot7, loot8, loot9, loot10, loot11, loot12, loot13, loot14, loot15, loot16, loot17)
	. = ..()
	
/obj/effect/spawner/lootdrop/fallout/armor/tier3
	name = "tier 3 armor spawner"
	lootcount = 2
	var/loot1 = list(
				/obj/item/clothing/suit/fallout/ljacket/sheriff/blue,
				""
				)
	var/loot2 = list(
				/obj/item/clothing/suit/fallout/ljacket/sheriff/black,
				""
				)
	var/loot3 = list(
				/obj/item/clothing/suit/fallout/trench/black/armored,
				/obj/item/clothing/head/helmet/fallout/cowboy/reinf
				)
	var/loot4 = list(
				/obj/item/clothing/suit/armor/fallout/vaultvan,
				/obj/item/clothing/head/helmet/fallout/reinfhard
				)
	var/loot5 = list(
				/obj/item/clothing/suit/armor/fallout/metal/light,
				/obj/item/clothing/head/helmet/fallout/eyebot
				)
	var/loot6 = list(
				/obj/item/clothing/suit/armor/fallout/metal,
				/obj/item/clothing/head/helmet/fallout/metal
				)
	var/loot7 = list(
				/obj/item/clothing/suit/armor/fallout/vest/military,
				/obj/item/clothing/head/helmet/fallout/military
				)
	var/loot8 = list(
				/obj/item/clothing/suit/armor/fallout/leatherarmor/reinforced,
				/obj/item/clothing/head/helmet/fallout/cowboy/reinf/motorcycle
				)
	var/loot9 = list(
				/obj/item/clothing/suit/armor/fallout/combat,
				/obj/item/clothing/head/helmet/fallout/combat
				)
				
/obj/effect/spawner/lootdrop/fallout/armor/tier3/Initialize()
	loot = pick(loot1, loot2, loot3, loot4, loot5, loot6, loot7, loot8, loot9)
	. = ..()
