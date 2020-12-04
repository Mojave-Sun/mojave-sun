/obj/effect/spawner/lootdrop/ms13/armor
	name = "DO NOT USE ME - Mojave Sun armor spawners"
	
/obj/effect/spawner/lootdrop/ms13/armor/tier1
	name = "tier 1 armor spawner"
	lootcount = 2
	var/loot1 = list(
				/obj/item/clothing/suit/ms13/vest,
				/obj/item/clothing/head/helmet/ms13/cowboy/stormchaser
				)
	var/loot2 = list(
				/obj/item/clothing/suit/ms13/vest/cowboy,
				/obj/item/clothing/head/helmet/ms13/cowboy
				)
	var/loot3 = list(
				/obj/item/clothing/suit/ms13/vest/grey,
				/obj/item/clothing/head/helmet/ms13/cowboy/black
				)
	var/loot4 = list(
				/obj/item/clothing/suit/ms13/vest/puffer,
				""
				)
	var/loot5 = list(
				/obj/item/clothing/suit/ms13/vest/letterman,
				""
				)
	var/loot6 = list(
				/obj/item/clothing/suit/ms13/ljacket,
				/obj/item/clothing/head/helmet/ms13/cowboy/padded/black
				)
	var/loot7 = list(
				/obj/item/clothing/suit/ms13/ljacket/mayor/blue,
				""
				)
	var/loot8 = list(
				/obj/item/clothing/suit/ms13/ljacket/mayor/black,
				""
				)
	var/loot9 = list(
				/obj/item/clothing/suit/ms13/ljacket/veteran,
				/obj/item/clothing/head/helmet/ms13/cowboy/padded/police
				)
	var/loot10 = list(
				/obj/item/clothing/suit/ms13/duster,
				/obj/item/clothing/head/helmet/ms13/cowboy/padded
				)
	var/loot11 = list(
				/obj/item/clothing/suit/ms13/trench,
				/obj/item/clothing/head/helmet/ms13/cowboy/padded
				)
	var/loot12 = list(
				/obj/item/clothing/suit/ms13/trench/black,
				/obj/item/clothing/head/helmet/ms13/cowboy/padded/black
				)
	var/loot13 = list(
				/obj/item/clothing/suit/ms13/trench/detective/dark,
				/obj/item/clothing/head/helmet/ms13/cowboy/padded/detective/grey
				)
	var/loot14 = list(
				/obj/item/clothing/suit/ms13/ljacket/biker,
				""
				)
	var/loot15 = list(
				/obj/item/clothing/suit/ms13/ljacket/bomber,
				/obj/item/clothing/head/helmet/ms13/cowboy/padded/ushanka
				)
	var/loot16 = list(
				/obj/item/clothing/suit/ms13/ljacket/military,
				/obj/item/clothing/head/helmet/ms13/cowboy/padded/military
				)
	var/loot17 = list(
				/obj/item/clothing/suit/ms13/ljacket/wanderer,
				/obj/item/clothing/head/helmet/ms13/cowboy/stormchaser
				)
	var/loot18 = list(
				/obj/item/clothing/suit/toggle/labcoat/ms13/wintercoat/grey,
				""
				)
	var/loot19 = list(
				/obj/item/clothing/suit/toggle/labcoat/ms13/wintercoat,
				""
				)
	var/loot20 = list(
				/obj/item/clothing/suit/toggle/labcoat/ms13,
				""
				)
	var/loot21 = list(
				/obj/item/clothing/suit/armor/ms13/leatherarmor/light,
				/obj/item/clothing/head/helmet/ms13/cowboy/stormchaser
				)
	var/loot22 = list(
				/obj/item/clothing/suit/armor/ms13/kit/light,
				""
				)
	var/loot23 = list(
				/obj/item/clothing/head/helmet/ms13/hockey,
				""
				)
	var/loot24 = list(
				/obj/item/clothing/suit/ms13/trench/detective,
				/obj/item/clothing/head/helmet/ms13/cowboy/padded/detective
				)
	var/loot25 = list(
				/obj/item/clothing/suit/ms13/vest/denim,
				""
				)
	var/loot26 = list(
				/obj/item/clothing/suit/ms13/trench/brown,
				""
				)
				
				
/obj/effect/spawner/lootdrop/ms13/armor/tier1/Initialize() //on mapload, pick what to spawn
	loot = pick(loot1, loot2, loot3, loot4, loot5, loot6, loot7, loot8, loot9, loot10, loot11, loot12, loot13, loot14, loot15, loot16, loot17, loot18, loot19, loot20, loot21, loot22, loot23, loot24, loot25, loot26)
	. = ..()

/obj/effect/spawner/lootdrop/ms13/armor/tier2
	name = "tier 2 armor spawner"
	lootcount = 2
	var/loot1 = list(
				/obj/item/clothing/suit/ms13/ljacket/reinforced/deputy/blue,
				""
				)
	var/loot2 = list(
				/obj/item/clothing/suit/ms13/ljacket/reinforced/deputy/black,
				""
				)
	var/loot3 = list(
				/obj/item/clothing/suit/ms13/ljacket/reinforced,
				/obj/item/clothing/head/helmet/ms13/cowboy/reinf/motorcycle
				)
	var/loot4 = list(
				/obj/item/clothing/suit/ms13/duster/reinf,
				/obj/item/clothing/head/helmet/ms13/cowboy/reinf
				)
	var/loot5 = list(
				/obj/item/clothing/suit/ms13/trench/battle/black,
				/obj/item/clothing/head/helmet/ms13/cowboy/reinf
				)
	var/loot6 = list(
				/obj/item/clothing/suit/ms13/trench/battle,
				""
				)
	var/loot7 = list(
				/obj/item/clothing/head/helmet/riot/ms13,
				""
				)
	var/loot8 = list(
				/obj/item/clothing/suit/armor/ms13/kit,
				""
				)
	var/loot9 = list(
				/obj/item/clothing/suit/armor/ms13/leatherarmor,
				/obj/item/clothing/head/helmet/ms13/cowboy/reinf/motorcycle
				)
	var/loot10 = list(
				/obj/item/clothing/suit/armor/ms13/blastmaster,
				/obj/item/clothing/head/helmet/ms13/blastmaster
				)
	var/loot11 = list(
				/obj/item/clothing/suit/armor/ms13/yankee,
				/obj/item/clothing/head/helmet/ms13/yankee
				)
	var/loot12 = list(
				/obj/item/clothing/suit/armor/ms13/sadist,
				/obj/item/clothing/head/helmet/ms13/psychotic
				)
	var/loot13 = list(
				/obj/item/clothing/suit/armor/ms13/sadist/tribal,
				""
				)
	var/loot14 = list(
				/obj/item/clothing/suit/armor/ms13/badlands,
				/obj/item/clothing/head/helmet/ms13/wastehound
				)
	var/loot15 = list(
				/obj/item/clothing/suit/armor/ms13/painspike,
				/obj/item/clothing/head/helmet/ms13/arclight
				)
	var/loot16 = list(
				/obj/item/clothing/suit/armor/ms13/vest,
				/obj/item/clothing/head/helmet/ms13/cowboy/padded/police
				)
	var/loot17 = list(
				/obj/item/clothing/suit/armor/ms13/vest/detective,
				/obj/item/clothing/head/helmet/ms13/cowboy/padded/detective
				)
				
/obj/effect/spawner/lootdrop/ms13/armor/tier2/Initialize()
	loot = pick(loot1, loot2, loot3, loot4, loot5, loot6, loot7, loot8, loot9, loot10, loot11, loot12, loot13, loot14, loot15, loot16, loot17)
	. = ..()
	
/obj/effect/spawner/lootdrop/ms13/armor/tier3
	name = "tier 3 armor spawner"
	lootcount = 2
	var/loot1 = list(
				/obj/item/clothing/suit/ms13/ljacket/sheriff/blue,
				""
				)
	var/loot2 = list(
				/obj/item/clothing/suit/ms13/ljacket/sheriff/black,
				""
				)
	var/loot3 = list(
				/obj/item/clothing/suit/ms13/trench/black/armored,
				/obj/item/clothing/head/helmet/ms13/cowboy/reinf
				)
	var/loot4 = list(
				/obj/item/clothing/suit/armor/ms13/vaultvan,
				/obj/item/clothing/head/helmet/ms13/reinfhard
				)
	var/loot5 = list(
				/obj/item/clothing/suit/armor/ms13/metal/light,
				/obj/item/clothing/head/helmet/ms13/eyebot
				)
	var/loot6 = list(
				/obj/item/clothing/suit/armor/ms13/metal,
				/obj/item/clothing/head/helmet/ms13/metal
				)
	var/loot7 = list(
				/obj/item/clothing/suit/armor/ms13/vest/military,
				/obj/item/clothing/head/helmet/ms13/military
				)
	var/loot8 = list(
				/obj/item/clothing/suit/armor/ms13/leatherarmor/reinforced,
				/obj/item/clothing/head/helmet/ms13/cowboy/reinf/motorcycle
				)
	var/loot9 = list(
				/obj/item/clothing/suit/armor/ms13/combat,
				/obj/item/clothing/head/helmet/ms13/combat
				)
				
/obj/effect/spawner/lootdrop/ms13/armor/tier3/Initialize()
	loot = pick(loot1, loot2, loot3, loot4, loot5, loot6, loot7, loot8, loot9)
	. = ..()

/obj/effect/spawner/lootdrop/ms13/armor/tier4
	name = "tier 4 armor spawner"
	lootcount = 2
	var/loot1 = list(
				/obj/item/clothing/suit/armor/ms13/combat/advanced,
				/obj/item/clothing/head/helmet/ms13/combat/advanced
				)
	var/loot2 = list(
				/obj/item/clothing/suit/armor/ms13/combat/reinforced,
				/obj/item/clothing/head/helmet/ms13/combat/reinforced
				)
	var/loot3 = list(
				/obj/item/clothing/suit/armor/ms13/tesla,
				/obj/item/clothing/head/helmet/ms13/tesla
				)
	var/loot4 = list(
				/obj/item/clothing/suit/armor/ms13/combat/black,
				/obj/item/clothing/head/helmet/ms13/combat/black
				)
	var/loot5 = list(
				/obj/item/clothing/suit/armor/ms13/eliteriot,
				/obj/item/clothing/head/helmet/ms13/eliteriot
				)
				
/obj/effect/spawner/lootdrop/ms13/armor/tier4/Initialize()
	loot = pick(loot1, loot2, loot3, loot4, loot5)
	. = ..()
	
/obj/effect/spawner/lootdrop/ms13/armor/lowrandom
	name = "low tier random armor spawner"
	lootcount = 1 
	
	loot = list(
			/obj/effect/spawner/lootdrop/ms13/armor/tier1 = 60,
			/obj/effect/spawner/lootdrop/ms13/armor/tier2 = 40,
			)
			
/obj/effect/spawner/lootdrop/ms13/armor/highrandom
	name = "high tier random armor spawner"
	lootcount = 1
	
	loot = list(
			/obj/effect/spawner/lootdrop/ms13/armor/tier2 = 10,
			/obj/effect/spawner/lootdrop/ms13/armor/tier3 = 60,
			/obj/effect/spawner/lootdrop/ms13/armor/tier4 = 30,
			)
