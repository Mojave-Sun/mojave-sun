/obj/effect/spawner/lootdrop/ms13
	name = "DO NOT USE ME - Mojave Sun loot spawners"
	lootdoubles = FALSE
	fan_out_items = TRUE
	
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

/obj/effect/spawner/lootdrop/ms13/gun
	name = "DO NOT USE ME - Mojave Sun gun spawners"

/obj/effect/spawner/lootdrop/ms13/gun/tier1
	name = "tier 1 gun spawner"
	lootcount = 3
	var/loot1 = list(
				/obj/item/gun/ballistic/automatic/pistol/ms13/m9mm/handmade,
				/obj/item/ammo_box/magazine/ms13/m9mm,
				/obj/item/ammo_box/magazine/ms13/m9mm
				)
	var/loot2 = list(
				/obj/item/gun/ballistic/automatic/pistol/ms13/m9mm,
				/obj/item/ammo_box/magazine/ms13/m9mm,
				/obj/item/ammo_box/magazine/ms13/m9mm
				)
	var/loot3 = list(
				/obj/item/gun/ballistic/automatic/pistol/ms13/m10mm/chinese,
				/obj/item/ammo_box/ms13/cpistol,
				/obj/item/ammo_box/ms13/cpistol
				)
	var/loot4 = list(
				/obj/item/gun/ballistic/automatic/pistol/ms13/m10mm,
				/obj/item/ammo_box/magazine/ms13/m10mm,
				/obj/item/ammo_box/magazine/ms13/m10mm
				)
	var/loot5 = list(
				/obj/item/gun/ballistic/automatic/pistol/ms13/pistol22,
				/obj/item/ammo_box/magazine/ms13/m22,
				""
				)
	var/loot6 = list(
				/obj/item/gun/ballistic/revolver/ms13/rev357/handmade/rifle,
				/obj/item/ammo_box/ms13/rev357,
				/obj/item/ammo_box/ms13/rev357
				)
	var/loot7 = list(
				/obj/item/gun/ballistic/automatic/ms13/marksman/service/police22,
				/obj/item/ammo_box/magazine/ms13/r22,
				/obj/item/ammo_box/magazine/ms13/r22
				)
	var/loot8 = list(
				/obj/item/gun/ballistic/revolver/ms13/rev357/handmade,
				/obj/item/ammo_box/ms13/rev357,
				/obj/item/ammo_box/ms13/rev357
				)
	var/loot9 = list(
				/obj/item/gun/ballistic/revolver/ms13/rev10mm,
				/obj/item/ammo_box/ms13/rev10mm,
				/obj/item/ammo_box/ms13/rev10mm
				)
	var/loot10 = list(
				/obj/item/gun/ballistic/rifle/ms13/varmint,
				/obj/item/ammo_box/magazine/ms13/r10,
				/obj/item/ammo_box/magazine/ms13/r10
				)

/obj/effect/spawner/lootdrop/ms13/gun/tier1/Initialize()
	loot = pick(loot1, loot2, loot3, loot4, loot5, loot6, loot7, loot8, loot9, loot10)
	. = ..()

/obj/effect/spawner/lootdrop/ms13/gun/tier2
	name = "tier 2 gun spawner"
	lootcount = 3
	var/loot1 = list(
				/obj/item/gun/ballistic/automatic/pistol/ms13/m10mm/military,
				/obj/item/ammo_box/magazine/ms13/m10mm,
				/obj/item/ammo_box/magazine/ms13/m10mm
				)
	var/loot2 = list(
				/obj/item/gun/ballistic/automatic/pistol/ms13/pistol45,
				/obj/item/ammo_box/magazine/ms13/m45,
				/obj/item/ammo_box/magazine/ms13/m45
				)
	var/loot3 = list(
				/obj/item/gun/ballistic/automatic/ms13/marksman/service,
				/obj/item/ammo_box/magazine/ms13/r20,
				""
				)
	var/loot4 = list(
				/obj/item/gun/ballistic/automatic/ms13/smg9mm/handmade,
				/obj/item/ammo_box/magazine/ms13/smgm9mm,
				""
				)
	var/loot5 = list(
				/obj/item/gun/ballistic/rifle/ms13/hunting,
				/obj/item/ammo_box/magazine/ms13/r308,
				/obj/item/ammo_box/magazine/ms13/r308
				)
	var/loot6 = list(
				/obj/item/gun/ballistic/shotgun/automatic/ms13/battle/sks,
				/obj/item/ammo_box/ms13/sks,
				/obj/item/ammo_box/ms13/sks
				)
	var/loot7 = list(
				/obj/item/gun/ballistic/shotgun/ms13/cowboy,
				/obj/item/ammo_box/ms13/tube357,
				/obj/item/ammo_box/ms13/tube357
				)
	var/loot8 = list(
				/obj/item/gun/ballistic/revolver/ms13/rev357,
				/obj/item/ammo_box/ms13/rev357,
				/obj/item/ammo_box/ms13/rev357
				)
	var/loot9 = list(
				/obj/item/gun/ballistic/revolver/ms13/rev357/police,
				/obj/item/ammo_box/ms13/rev357,
				/obj/item/ammo_box/ms13/rev357
				)

/obj/effect/spawner/lootdrop/ms13/gun/tier2/Initialize()
	loot = pick(loot1, loot2, loot3, loot4, loot5, loot6, loot7, loot8, loot9)
	. = ..()

/obj/effect/spawner/lootdrop/ms13/gun/tier3
	name = "tier 3 gun spawner"
	lootcount = 3
	var/loot1 = list(
				/obj/item/gun/ballistic/revolver/ms13/rev44,
				/obj/item/ammo_box/ms13/rev44,
				/obj/item/ammo_box/ms13/rev44
				)
	var/loot2 = list(
				/obj/item/gun/ballistic/revolver/ms13/rev44/rifle,
				/obj/item/ammo_box/ms13/rev44,
				/obj/item/ammo_box/ms13/rev44
				)
	var/loot3 = list(
				/obj/item/gun/ballistic/revolver/ms13/rev357/heavy,
				/obj/item/ammo_box/ms13/rev357,
				/obj/item/ammo_box/ms13/rev357
				)
	var/loot4 = list(
				/obj/item/gun/ballistic/revolver/ms13/huntingrev,
				/obj/item/ammo_box/ms13/rev4570,
				/obj/item/ammo_box/ms13/rev4570
				)
	var/loot5 = list(
				/obj/item/gun/ballistic/revolver/ms13/rev556,
				/obj/item/ammo_box/ms13/rev556,
				/obj/item/ammo_box/ms13/rev556
				)
	var/loot6 = list(
				/obj/item/gun/ballistic/shotgun/ms13/trail,
				/obj/item/ammo_box/ms13/tube44,
				/obj/item/ammo_box/ms13/tube44
				)
	var/loot7 = list(
				/obj/item/gun/ballistic/rifle/ms13/hunting/scoped,
				/obj/item/ammo_box/magazine/ms13/r308,
				/obj/item/ammo_box/magazine/ms13/r308
				)
	var/loot8 = list(
				/obj/item/gun/ballistic/shotgun/automatic/ms13/battle/sks/scoped,
				/obj/item/ammo_box/ms13/sks,
				/obj/item/ammo_box/ms13/sks
				)
	var/loot9 = list(
				/obj/item/gun/ballistic/automatic/ms13/smg10mm,
				/obj/item/ammo_box/magazine/ms13/smgm10mm,
				""
				)
	var/loot10 = list(
				/obj/item/gun/ballistic/automatic/ms13/smg9mm,
				/obj/item/ammo_box/magazine/ms13/smgm9mm,
				""
				)
	var/loot11 = list(
				/obj/item/gun/ballistic/automatic/ms13/assaultrifle/chinese/handmade,
				/obj/item/ammo_box/magazine/ms13/ar762,
				""
				)
	var/loot12 = list(
				/obj/item/gun/ballistic/automatic/ms13/marksman,
				/obj/item/ammo_box/magazine/ms13/r20,
				""
				)

/obj/effect/spawner/lootdrop/ms13/gun/tier3/Initialize()
	loot = pick(loot1, loot2, loot3, loot4, loot5, loot6, loot7, loot8, loot9, loot10, loot11, loot12)
	. = ..()

/obj/effect/spawner/lootdrop/ms13/gun/tier4
	name = "tier 4 gun spawner"
	lootcount = 3
	var/loot1 = list(
				/obj/item/gun/ballistic/rifle/ms13/hunting/scoped/amr,
				/obj/item/ammo_box/magazine/ms13/amr,
				/obj/item/ammo_box/magazine/ms13/amr
				)
	var/loot2 = list(
				/obj/item/gun/ballistic/automatic/pistol/ms13/deagle,
				/obj/item/ammo_box/magazine/ms13/deagle,
				/obj/item/ammo_box/magazine/ms13/deagle
				)
	var/loot3 = list(
				/obj/item/gun/ballistic/automatic/pistol/ms13/m12mm,
				/obj/item/ammo_box/magazine/ms13/m12mm,
				/obj/item/ammo_box/magazine/ms13/m12mm
				)
	var/loot4 = list(
				/obj/item/gun/ballistic/automatic/ms13/assaultrifle/chinese,
				/obj/item/ammo_box/magazine/ms13/ar762,
				""
				)
	var/loot5 = list(
				/obj/item/gun/ballistic/automatic/ms13/assaultrifle/infiltrator,
				/obj/item/ammo_box/magazine/ms13/r20,
				""
				)
	var/loot6 = list(
				/obj/item/gun/ballistic/automatic/ms13/assaultrifle,
				/obj/item/ammo_box/magazine/ms13/r20,
				""
				)
	var/loot7 = list(
				/obj/item/gun/ballistic/automatic/ms13/smg12mm,
				/obj/item/ammo_box/magazine/ms13/smg12mm,
				""
				)
	var/loot8 = list(
				/obj/item/gun/ballistic/automatic/ms13/smg22,
				"",
				""
				)
	var/loot9 = list(
				/obj/item/gun/ballistic/automatic/ms13/smg45,
				"",
				""
				)
	var/loot10 = list(
				/obj/item/gun/ballistic/automatic/ms13/marksman/sniper,
				/obj/item/ammo_box/magazine/ms13/r308,
				/obj/item/ammo_box/magazine/ms13/r308
				)
	var/loot11 = list(
				/obj/item/gun/ballistic/shotgun/automatic/ms13/battle,
				/obj/item/ammo_box/ms13/battler,
				/obj/item/ammo_box/ms13/battler
				)
	var/loot12 = list(
				/obj/item/gun/ballistic/shotgun/ms13/brush,
				/obj/item/ammo_box/ms13/tube4570,
				/obj/item/ammo_box/ms13/tube4570
				)

/obj/effect/spawner/lootdrop/ms13/gun/tier4/Initialize()
	loot = pick(loot1, loot2, loot3, loot4, loot5, loot6, loot7, loot8, loot9, loot10, loot11, loot12)
	. = ..()

/obj/effect/spawner/lootdrop/ms13/gun/unique
	name = "unique gun spawner"
	lootcount = 3
	var/loot1 = list(
				/obj/item/gun/ballistic/automatic/pistol/ms13/m9mm/maria,
				/obj/item/ammo_box/magazine/ms13/m9mm,
				/obj/item/ammo_box/magazine/ms13/m9mm
				)
	var/loot2 = list(
				/obj/item/gun/ballistic/rifle/ms13/varmint/ratslayer,
				/obj/item/ammo_box/magazine/ms13/r10,
				/obj/item/ammo_box/magazine/ms13/r10
				)
	var/loot3 = list(
				/obj/item/gun/ballistic/automatic/pistol/ms13/m12mm/devil,
				/obj/item/ammo_box/magazine/ms13/m12mm,
				/obj/item/ammo_box/magazine/ms13/m12mm
				)
	var/loot4 = list(
				/obj/item/gun/ballistic/revolver/ms13/huntingrev/sequoia,
				/obj/item/ammo_box/ms13/rev4570,
				/obj/item/ammo_box/ms13/rev4570
				)
	var/loot5 = list(
				/obj/item/gun/ballistic/revolver/ms13/rev357/lucky,
				/obj/item/ammo_box/ms13/rev357,
				/obj/item/ammo_box/ms13/rev357
				)
	var/loot6 = list(
				/obj/item/gun/ballistic/revolver/ms13/rev44/mysterious,
				/obj/item/ammo_box/ms13/rev44,
				/obj/item/ammo_box/ms13/rev44
				)
	var/loot7 = list(
				/obj/item/gun/ballistic/automatic/ms13/marksman/service/survival,
				/obj/item/ammo_box/magazine/ms13/r20,
				""
				)
	var/loot8 = list(
				/obj/item/gun/ballistic/automatic/ms13/marksman/american,
				/obj/item/ammo_box/magazine/ms13/r20,
				""
				)
	var/loot9 = list(
				/obj/item/gun/ballistic/automatic/pistol/ms13/m10mm/chinese/v420,
				/obj/item/ammo_box/ms13/cpistol,
				/obj/item/ammo_box/ms13/cpistol
				)

/obj/effect/spawner/lootdrop/ms13/gun/unique/Initialize()
	loot = pick(loot1, loot2, loot3, loot4, loot5, loot6, loot7, loot8, loot9)
	. = ..()

/obj/effect/spawner/lootdrop/ms13/gun/lowrandom
	name = "low tier random gun spawner"
	lootcount = 1 
	
	loot = list(
			/obj/effect/spawner/lootdrop/ms13/gun/tier1 = 70,
			/obj/effect/spawner/lootdrop/ms13/gun/tier2 = 30,
			)
			
/obj/effect/spawner/lootdrop/ms13/gun/highrandom
	name = "high tier random gun spawner"
	lootcount = 1
	
	loot = list(
			/obj/effect/spawner/lootdrop/ms13/gun/tier2 = 10,
			/obj/effect/spawner/lootdrop/ms13/gun/tier3 = 60,
			/obj/effect/spawner/lootdrop/ms13/gun/tier4 = 30,
			)

/obj/effect/spawner/lootdrop/ms13/ammo
	name = "DO NOT USE ME - Mojave Sun ammo spawners"
	lootcount = 3
	lootdoubles = TRUE

/obj/effect/spawner/lootdrop/ms13/ammo/tier1
	name = "tier 1 ammo spawner"

	loot = list(
			/obj/item/ammo_box/magazine/ms13/r10,
			/obj/item/ammo_box/magazine/ms13/m22,
			/obj/item/ammo_box/magazine/ms13/m9mm,
			/obj/item/ammo_box/ms13/rev10mm,
			/obj/item/ammo_box/magazine/ms13/m10mm,
			/obj/item/ammo_box/ms13/cpistol,
			/obj/item/ammo_box/ms13/rev357,
			/obj/item/ammo_box/magazine/ms13/r22
			)

/obj/effect/spawner/lootdrop/ms13/ammo/tier2
	name = "tier 2 ammo spawner"

	loot = list(
			/obj/item/ammo_box/magazine/ms13/m10mm,
			/obj/item/ammo_box/ms13/rev357,
			/obj/item/ammo_box/ms13/tube357,
			/obj/item/ammo_box/magazine/ms13/m45,
			/obj/item/ammo_box/magazine/ms13/r20,
			/obj/item/ammo_box/magazine/ms13/r308,
			/obj/item/ammo_box/magazine/ms13/smgm9mm,
			/obj/item/ammo_box/ms13/sks
			)

/obj/effect/spawner/lootdrop/ms13/ammo/tier3
	name = "tier 3 ammo spawner"

	loot = list(
			/obj/item/ammo_box/ms13/rev44,
			/obj/item/ammo_box/ms13/rev357,
			/obj/item/ammo_box/ms13/rev4570,
			/obj/item/ammo_box/ms13/rev556,
			/obj/item/ammo_box/magazine/ms13/r20,
			/obj/item/ammo_box/magazine/ms13/r308,
			/obj/item/ammo_box/magazine/ms13/smgm9mm,
			/obj/item/ammo_box/ms13/sks,
			/obj/item/ammo_box/ms13/tube44,
			/obj/item/ammo_box/magazine/ms13/smgm10mm,
			/obj/item/ammo_box/magazine/ms13/ar762
			)

/obj/effect/spawner/lootdrop/ms13/ammo/tier4
	name = "tier 4 ammo spawner"

	loot = list(
			/obj/item/ammo_box/magazine/ms13/smgm45,
			/obj/item/ammo_box/magazine/ms13/amr,
			/obj/item/ammo_box/ms13/tube4570,
			/obj/item/ammo_box/magazine/ms13/smgm22,
			/obj/item/ammo_box/magazine/ms13/r20,
			/obj/item/ammo_box/magazine/ms13/r308,
			/obj/item/ammo_box/magazine/ms13/smg12mm,
			/obj/item/ammo_box/ms13/battler,
			/obj/item/ammo_box/magazine/ms13/deagle,
			/obj/item/ammo_box/magazine/ms13/m12mm,
			/obj/item/ammo_box/magazine/ms13/ar762
			)
