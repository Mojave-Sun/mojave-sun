/obj/effect/spawner/lootdrop/fallout
	name = "DO NOT USE ME - Fallout loot spawners"
	lootdoubles = FALSE
	fan_out_items = TRUE
	
/obj/effect/spawner/lootdrop/fallout/armor
	name = "DO NOT USE ME - Fallout armor spawners"
	
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
				/obj/item/clothing/suit/fallout/trench/detective/dark,
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
	var/loot24 = list(
				/obj/item/clothing/suit/fallout/trench/detective,
				/obj/item/clothing/head/helmet/fallout/cowboy/padded/detective
				)
	var/loot25 = list(
				/obj/item/clothing/suit/fallout/vest/denim,
				""
				)
	var/loot26 = list(
				/obj/item/clothing/suit/fallout/trench/brown,
				""
				)
				
				
/obj/effect/spawner/lootdrop/fallout/armor/tier1/Initialize() //on mapload, pick what to spawn
	loot = pick(loot1, loot2, loot3, loot4, loot5, loot6, loot7, loot8, loot9, loot10, loot11, loot12, loot13, loot14, loot15, loot16, loot17, loot18, loot19, loot20, loot21, loot22, loot23, loot24, loot25, loot26)
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

/obj/effect/spawner/lootdrop/fallout/armor/tier4
	name = "tier 4 armor spawner"
	lootcount = 2
	var/loot1 = list(
				/obj/item/clothing/suit/armor/fallout/combat/advanced,
				/obj/item/clothing/head/helmet/fallout/combat/advanced
				)
	var/loot2 = list(
				/obj/item/clothing/suit/armor/fallout/combat/reinforced,
				/obj/item/clothing/head/helmet/fallout/combat/reinforced
				)
	var/loot3 = list(
				/obj/item/clothing/suit/armor/fallout/tesla,
				/obj/item/clothing/head/helmet/fallout/tesla
				)
	var/loot4 = list(
				/obj/item/clothing/suit/armor/fallout/combat/black,
				/obj/item/clothing/head/helmet/fallout/combat/black
				)
	var/loot5 = list(
				/obj/item/clothing/suit/armor/fallout/eliteriot,
				/obj/item/clothing/head/helmet/fallout/eliteriot
				)
				
/obj/effect/spawner/lootdrop/fallout/armor/tier4/Initialize()
	loot = pick(loot1, loot2, loot3, loot4, loot5)
	. = ..()
	
/obj/effect/spawner/lootdrop/fallout/armor/lowrandom
	name = "low tier random armor spawner"
	lootcount = 1 
	
	loot = list(
			/obj/effect/spawner/lootdrop/fallout/armor/tier1 = 60,
			/obj/effect/spawner/lootdrop/fallout/armor/tier2 = 40,
			)
			
/obj/effect/spawner/lootdrop/fallout/armor/highrandom
	name = "high tier random armor spawner"
	lootcount = 1
	
	loot = list(
			/obj/effect/spawner/lootdrop/fallout/armor/tier2 = 10,
			/obj/effect/spawner/lootdrop/fallout/armor/tier3 = 60,
			/obj/effect/spawner/lootdrop/fallout/armor/tier4 = 30,
			)

/obj/effect/spawner/lootdrop/fallout/gun
	name = "DO NOT USE ME - Fallout gun spawners"

/obj/effect/spawner/lootdrop/fallout/gun/tier1
	name = "tier 1 gun spawner"
	lootcount = 3
	var/loot1 = list(
				/obj/item/gun/ballistic/automatic/pistol/fallout/m9mm/handmade,
				/obj/item/ammo_box/magazine/fallout/m9mm,
				/obj/item/ammo_box/magazine/fallout/m9mm
				)
	var/loot2 = list(
				/obj/item/gun/ballistic/automatic/pistol/fallout/m9mm,
				/obj/item/ammo_box/magazine/fallout/m9mm,
				/obj/item/ammo_box/magazine/fallout/m9mm
				)
	var/loot3 = list(
				/obj/item/gun/ballistic/automatic/pistol/fallout/m10mm/chinese,
				/obj/item/ammo_box/fallout/cpistol,
				/obj/item/ammo_box/fallout/cpistol
				)
	var/loot4 = list(
				/obj/item/gun/ballistic/automatic/pistol/fallout/m10mm,
				/obj/item/ammo_box/magazine/fallout/m10mm,
				/obj/item/ammo_box/magazine/fallout/m10mm
				)
	var/loot5 = list(
				/obj/item/gun/ballistic/automatic/pistol/fallout/pistol22,
				/obj/item/ammo_box/magazine/fallout/m22,
				""
				)
	var/loot6 = list(
				/obj/item/gun/ballistic/revolver/fallout/rev357/handmade/rifle,
				/obj/item/ammo_box/fallout/rev357,
				/obj/item/ammo_box/fallout/rev357
				)
	var/loot7 = list(
				/obj/item/gun/ballistic/automatic/fallout/marksman/service/police22,
				/obj/item/ammo_box/magazine/fallout/r22,
				/obj/item/ammo_box/magazine/fallout/r22
				)
	var/loot8 = list(
				/obj/item/gun/ballistic/revolver/fallout/rev357/handmade,
				/obj/item/ammo_box/fallout/rev357,
				/obj/item/ammo_box/fallout/rev357
				)
	var/loot9 = list(
				/obj/item/gun/ballistic/revolver/fallout/rev10mm,
				/obj/item/ammo_box/fallout/rev10mm,
				/obj/item/ammo_box/fallout/rev10mm
				)
	var/loot10 = list(
				/obj/item/gun/ballistic/rifle/fallout/varmint,
				/obj/item/ammo_box/magazine/fallout/r10,
				/obj/item/ammo_box/magazine/fallout/r10
				)

/obj/effect/spawner/lootdrop/fallout/gun/tier1/Initialize()
	loot = pick(loot1, loot2, loot3, loot4, loot5, loot6, loot7, loot8, loot9, loot10)
	. = ..()

/obj/effect/spawner/lootdrop/fallout/gun/tier2
	name = "tier 2 gun spawner"
	lootcount = 3
	var/loot1 = list(
				/obj/item/gun/ballistic/automatic/pistol/fallout/m10mm/military,
				/obj/item/ammo_box/magazine/fallout/m10mm,
				/obj/item/ammo_box/magazine/fallout/m10mm
				)
	var/loot2 = list(
				/obj/item/gun/ballistic/automatic/pistol/fallout/pistol45,
				/obj/item/ammo_box/magazine/fallout/m45,
				/obj/item/ammo_box/magazine/fallout/m45
				)
	var/loot3 = list(
				/obj/item/gun/ballistic/automatic/fallout/marksman/service,
				/obj/item/ammo_box/magazine/fallout/r20,
				""
				)
	var/loot4 = list(
				/obj/item/gun/ballistic/automatic/fallout/smg9mm/handmade,
				/obj/item/ammo_box/magazine/fallout/smgm9mm,
				""
				)
	var/loot5 = list(
				/obj/item/gun/ballistic/rifle/fallout/hunting,
				/obj/item/ammo_box/magazine/fallout/r308,
				/obj/item/ammo_box/magazine/fallout/r308
				)
	var/loot6 = list(
				/obj/item/gun/ballistic/shotgun/automatic/fallout/battle/sks,
				/obj/item/ammo_box/fallout/sks,
				/obj/item/ammo_box/fallout/sks
				)
	var/loot7 = list(
				/obj/item/gun/ballistic/shotgun/fallout/cowboy,
				/obj/item/ammo_box/fallout/tube357,
				/obj/item/ammo_box/fallout/tube357
				)
	var/loot8 = list(
				/obj/item/gun/ballistic/revolver/fallout/rev357,
				/obj/item/ammo_box/fallout/rev357,
				/obj/item/ammo_box/fallout/rev357
				)
	var/loot9 = list(
				/obj/item/gun/ballistic/revolver/fallout/rev357/police,
				/obj/item/ammo_box/fallout/rev357,
				/obj/item/ammo_box/fallout/rev357
				)

/obj/effect/spawner/lootdrop/fallout/gun/tier2/Initialize()
	loot = pick(loot1, loot2, loot3, loot4, loot5, loot6, loot7, loot8, loot9)
	. = ..()

/obj/effect/spawner/lootdrop/fallout/gun/tier3
	name = "tier 3 gun spawner"
	lootcount = 3
	var/loot1 = list(
				/obj/item/gun/ballistic/revolver/fallout/rev44,
				/obj/item/ammo_box/fallout/rev44,
				/obj/item/ammo_box/fallout/rev44
				)
	var/loot2 = list(
				/obj/item/gun/ballistic/revolver/fallout/rev44/rifle,
				/obj/item/ammo_box/fallout/rev44,
				/obj/item/ammo_box/fallout/rev44
				)
	var/loot3 = list(
				/obj/item/gun/ballistic/revolver/fallout/rev357/heavy,
				/obj/item/ammo_box/fallout/rev357,
				/obj/item/ammo_box/fallout/rev357
				)
	var/loot4 = list(
				/obj/item/gun/ballistic/revolver/fallout/huntingrev,
				/obj/item/ammo_box/fallout/rev4570,
				/obj/item/ammo_box/fallout/rev4570
				)
	var/loot5 = list(
				/obj/item/gun/ballistic/revolver/fallout/rev556,
				/obj/item/ammo_box/fallout/rev556,
				/obj/item/ammo_box/fallout/rev556
				)
	var/loot6 = list(
				/obj/item/gun/ballistic/shotgun/fallout/trail,
				/obj/item/ammo_box/fallout/tube44,
				/obj/item/ammo_box/fallout/tube44
				)
	var/loot7 = list(
				/obj/item/gun/ballistic/rifle/fallout/hunting/scoped,
				/obj/item/ammo_box/magazine/fallout/r308,
				/obj/item/ammo_box/magazine/fallout/r308
				)
	var/loot8 = list(
				/obj/item/gun/ballistic/shotgun/automatic/fallout/battle/sks/scoped,
				/obj/item/ammo_box/fallout/sks,
				/obj/item/ammo_box/fallout/sks
				)
	var/loot9 = list(
				/obj/item/gun/ballistic/automatic/fallout/smg10mm,
				/obj/item/ammo_box/magazine/fallout/smgm10mm,
				""
				)
	var/loot10 = list(
				/obj/item/gun/ballistic/automatic/fallout/smg9mm,
				/obj/item/ammo_box/magazine/fallout/smgm9mm,
				""
				)
	var/loot11 = list(
				/obj/item/gun/ballistic/automatic/fallout/assaultrifle/chinese/handmade,
				/obj/item/ammo_box/magazine/fallout/ar762,
				""
				)
	var/loot12 = list(
				/obj/item/gun/ballistic/automatic/fallout/marksman,
				/obj/item/ammo_box/magazine/fallout/r20,
				""
				)

/obj/effect/spawner/lootdrop/fallout/gun/tier3/Initialize()
	loot = pick(loot1, loot2, loot3, loot4, loot5, loot6, loot7, loot8, loot9, loot10, loot11, loot12)
	. = ..()

/obj/effect/spawner/lootdrop/fallout/gun/tier4
	name = "tier 4 gun spawner"
	lootcount = 3
	var/loot1 = list(
				/obj/item/gun/ballistic/rifle/fallout/hunting/scoped/amr,
				/obj/item/ammo_box/magazine/fallout/amr,
				/obj/item/ammo_box/magazine/fallout/amr
				)
	var/loot2 = list(
				/obj/item/gun/ballistic/automatic/pistol/fallout/deagle,
				/obj/item/ammo_box/magazine/fallout/deagle,
				/obj/item/ammo_box/magazine/fallout/deagle
				)
	var/loot3 = list(
				/obj/item/gun/ballistic/automatic/pistol/fallout/m12mm,
				/obj/item/ammo_box/magazine/fallout/m12mm,
				/obj/item/ammo_box/magazine/fallout/m12mm
				)
	var/loot4 = list(
				/obj/item/gun/ballistic/automatic/fallout/assaultrifle/chinese,
				/obj/item/ammo_box/magazine/fallout/ar762,
				""
				)
	var/loot5 = list(
				/obj/item/gun/ballistic/automatic/fallout/assaultrifle/infiltrator,
				/obj/item/ammo_box/magazine/fallout/r20,
				""
				)
	var/loot6 = list(
				/obj/item/gun/ballistic/automatic/fallout/assaultrifle,
				/obj/item/ammo_box/magazine/fallout/r20,
				""
				)
	var/loot7 = list(
				/obj/item/gun/ballistic/automatic/fallout/smg12mm,
				/obj/item/ammo_box/magazine/fallout/smg12mm,
				""
				)
	var/loot8 = list(
				/obj/item/gun/ballistic/automatic/fallout/smg22,
				"",
				""
				)
	var/loot9 = list(
				/obj/item/gun/ballistic/automatic/fallout/smg45,
				"",
				""
				)
	var/loot10 = list(
				/obj/item/gun/ballistic/automatic/fallout/marksman/sniper,
				/obj/item/ammo_box/magazine/fallout/r308,
				/obj/item/ammo_box/magazine/fallout/r308
				)
	var/loot11 = list(
				/obj/item/gun/ballistic/shotgun/automatic/fallout/battle,
				/obj/item/ammo_box/fallout/battler,
				/obj/item/ammo_box/fallout/battler
				)
	var/loot12 = list(
				/obj/item/gun/ballistic/shotgun/fallout/brush,
				/obj/item/ammo_box/fallout/tube4570,
				/obj/item/ammo_box/fallout/tube4570
				)

/obj/effect/spawner/lootdrop/fallout/gun/tier4/Initialize()
	loot = pick(loot1, loot2, loot3, loot4, loot5, loot6, loot7, loot8, loot9, loot10, loot11, loot12)
	. = ..()

/obj/effect/spawner/lootdrop/fallout/gun/unique
	name = "unique gun spawner"
	lootcount = 3
	var/loot1 = list(
				/obj/item/gun/ballistic/automatic/pistol/fallout/m9mm/maria,
				/obj/item/ammo_box/magazine/fallout/m9mm,
				/obj/item/ammo_box/magazine/fallout/m9mm
				)
	var/loot2 = list(
				/obj/item/gun/ballistic/rifle/fallout/varmint/ratslayer,
				/obj/item/ammo_box/magazine/fallout/r10,
				/obj/item/ammo_box/magazine/fallout/r10
				)
	var/loot3 = list(
				/obj/item/gun/ballistic/automatic/pistol/fallout/m12mm/devil,
				/obj/item/ammo_box/magazine/fallout/m12mm,
				/obj/item/ammo_box/magazine/fallout/m12mm
				)
	var/loot4 = list(
				/obj/item/gun/ballistic/revolver/fallout/huntingrev/sequoia,
				/obj/item/ammo_box/fallout/rev4570,
				/obj/item/ammo_box/fallout/rev4570
				)
	var/loot5 = list(
				/obj/item/gun/ballistic/revolver/fallout/rev357/lucky,
				/obj/item/ammo_box/fallout/rev357,
				/obj/item/ammo_box/fallout/rev357
				)
	var/loot6 = list(
				/obj/item/gun/ballistic/revolver/fallout/rev44/mysterious,
				/obj/item/ammo_box/fallout/rev44,
				/obj/item/ammo_box/fallout/rev44
				)
	var/loot7 = list(
				/obj/item/gun/ballistic/automatic/fallout/marksman/service/survival,
				/obj/item/ammo_box/magazine/fallout/r20,
				""
				)
	var/loot8 = list(
				/obj/item/gun/ballistic/automatic/fallout/marksman/american,
				/obj/item/ammo_box/magazine/fallout/r20,
				""
				)
	var/loot9 = list(
				/obj/item/gun/ballistic/automatic/pistol/fallout/m10mm/chinese/v420,
				/obj/item/ammo_box/fallout/cpistol,
				/obj/item/ammo_box/fallout/cpistol
				)

/obj/effect/spawner/lootdrop/fallout/gun/unique/Initialize()
	loot = pick(loot1, loot2, loot3, loot4, loot5, loot6, loot7, loot8, loot9)
	. = ..()

/obj/effect/spawner/lootdrop/fallout/gun/lowrandom
	name = "low tier random gun spawner"
	lootcount = 1 
	
	loot = list(
			/obj/effect/spawner/lootdrop/fallout/gun/tier1 = 70,
			/obj/effect/spawner/lootdrop/fallout/gun/tier2 = 30,
			)
			
/obj/effect/spawner/lootdrop/fallout/gun/highrandom
	name = "high tier random gun spawner"
	lootcount = 1
	
	loot = list(
			/obj/effect/spawner/lootdrop/fallout/gun/tier2 = 10,
			/obj/effect/spawner/lootdrop/fallout/gun/tier3 = 60,
			/obj/effect/spawner/lootdrop/fallout/gun/tier4 = 30,
			)

/obj/effect/spawner/lootdrop/fallout/ammo
	name = "DO NOT USE ME - Fallout ammo spawners"
	lootcount = 3
	lootdoubles = TRUE

/obj/effect/spawner/lootdrop/fallout/ammo/tier1
	name = "tier 1 ammo spawner"

	loot = list(
			/obj/item/ammo_box/magazine/fallout/r10,
			/obj/item/ammo_box/magazine/fallout/m22,
			/obj/item/ammo_box/magazine/fallout/m9mm,
			/obj/item/ammo_box/fallout/rev10mm,
			/obj/item/ammo_box/magazine/fallout/m10mm,
			/obj/item/ammo_box/fallout/cpistol,
			/obj/item/ammo_box/fallout/rev357,
			/obj/item/ammo_box/magazine/fallout/r22
			)

/obj/effect/spawner/lootdrop/fallout/ammo/tier2
	name = "tier 2 ammo spawner"

	loot = list(
			/obj/item/ammo_box/magazine/fallout/m10mm,
			/obj/item/ammo_box/fallout/rev357,
			/obj/item/ammo_box/fallout/tube357,
			/obj/item/ammo_box/magazine/fallout/m45,
			/obj/item/ammo_box/magazine/fallout/r20,
			/obj/item/ammo_box/magazine/fallout/r308,
			/obj/item/ammo_box/magazine/fallout/smgm9mm,
			/obj/item/ammo_box/fallout/sks
			)

/obj/effect/spawner/lootdrop/fallout/ammo/tier3
	name = "tier 3 ammo spawner"

	loot = list(
			/obj/item/ammo_box/fallout/rev44,
			/obj/item/ammo_box/fallout/rev357,
			/obj/item/ammo_box/fallout/rev4570,
			/obj/item/ammo_box/fallout/rev556,
			/obj/item/ammo_box/magazine/fallout/r20,
			/obj/item/ammo_box/magazine/fallout/r308,
			/obj/item/ammo_box/magazine/fallout/smgm9mm,
			/obj/item/ammo_box/fallout/sks,
			/obj/item/ammo_box/fallout/tube44,
			/obj/item/ammo_box/magazine/fallout/smgm10mm,
			/obj/item/ammo_box/magazine/fallout/ar762
			)

/obj/effect/spawner/lootdrop/fallout/ammo/tier4
	name = "tier 4 ammo spawner"

	loot = list(
			/obj/item/ammo_box/magazine/fallout/smgm45,
			/obj/item/ammo_box/magazine/fallout/amr,
			/obj/item/ammo_box/fallout/tube4570,
			/obj/item/ammo_box/magazine/fallout/smgm22,
			/obj/item/ammo_box/magazine/fallout/r20,
			/obj/item/ammo_box/magazine/fallout/r308,
			/obj/item/ammo_box/magazine/fallout/smg12mm,
			/obj/item/ammo_box/fallout/battler,
			/obj/item/ammo_box/magazine/fallout/deagle,
			/obj/item/ammo_box/magazine/fallout/m12mm,
			/obj/item/ammo_box/magazine/fallout/ar762
			)
