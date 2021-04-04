/obj/effect/spawner/lootdrop/ms13/armor
	name = "DO NOT USE ME - Mojave Sun armor spawners"

/obj/effect/spawner/lootdrop/ms13/armor/tier1
	name = "tier 1 armor spawner"
	lootcount = 2
	var/loot1 = list(
				/obj/item/clothing/suit/ms13/ljacket,
				""
				)
	var/loot2 = list(
				/obj/item/clothing/suit/ms13/ljacket/winter,
				""
				)
	var/loot3 = list(
				/obj/item/clothing/suit/ms13/ljacket/winter/black,
				""
				)
	var/loot4 = list(
				/obj/item/clothing/suit/ms13/ljacket/winter/blue,
				""
				)
	var/loot5 = list(			
				/obj/item/clothing/suit/ms13/ljacket/duster,
				""
				)
	var/loot6 = list(
				/obj/item/clothing/suit/ms13/ljacket/denim,
				""
				)
	var/loot7 = list(
				/obj/item/clothing/suit/ms13/ljacket/moleskin,
				""
				)
	var/loot8 = list(
				/obj/item/clothing/suit/armor/ms13/tire,
				""
				)
/obj/effect/spawner/lootdrop/ms13/armor/tier1/Initialize() //on mapload, pick what to spawn
	loot = pick(loot1, loot2, loot3, loot4, loot5, loot6, loot7, loot8)
	. = ..()

/obj/effect/spawner/lootdrop/ms13/armor/tier2
	name = "tier 2 armor spawner"
	lootcount = 2
	var/loot1 = list(
				/obj/item/clothing/suit/ms13/ljacket/winter/reinforced,
				""
				)
	var/loot2 = list(
				/obj/item/clothing/suit/ms13/ljacket/winter/reinforced/black,
				""
				)
	var/loot3 = list(
				/obj/item/clothing/suit/ms13/ljacket/winter/reinforced/blue,
				""
				)
	var/loot4 = list(
				/obj/item/clothing/suit/ms13/ljacket/reinforced,
				""
				)
	var/loot5 = list(
				/obj/item/clothing/suit/armor/ms13/leatherarmor,
				""
				)
	var/loot6 = list(
				/obj/item/clothing/suit/armor/ms13/combat/battered,
				/obj/item/clothing/head/helmet/ms13/combat/battered
				)
	var/loot7 = list(
				/obj/item/clothing/suit/armor/ms13/metal,
				""
				)
	var/loot8 = list(
				/obj/item/clothing/suit/armor/ms13/kit,
				""
				)
	var/loot9 = list(
				/obj/item/clothing/suit/armor/ms13/metal/vaultvan,
				""
				)

/obj/effect/spawner/lootdrop/ms13/armor/tier2/Initialize()
	loot = pick(loot1, loot2, loot3, loot4, loot5, loot6, loot7, loot8, loot9)
	. = ..()

/obj/effect/spawner/lootdrop/ms13/armor/tier3
	name = "tier 3 armor spawner"
	lootcount = 2
	var/loot1 = list(
				/obj/item/clothing/suit/ms13/ljacket/winter/armored,
				""
				)
	var/loot2 = list(
				/obj/item/clothing/suit/ms13/ljacket/winter/armored/black,
				""
				)
	var/loot3 = list(
				/obj/item/clothing/suit/ms13/ljacket/winter/armored/blue,
				""
				)
	var/loot4 = list(
				/obj/item/clothing/suit/armor/ms13/metal/reinforced,
				/obj/item/clothing/head/helmet/ms13/metal
				)
	var/loot5 = list(
				/obj/item/clothing/suit/armor/ms13/leatherarmor/reinforced,
				""
				)
	var/loot6 = list(
				/obj/item/clothing/suit/armor/ms13/combat,
				/obj/item/clothing/head/helmet/ms13/combat
				)
	var/loot7 = list(
				/obj/item/clothing/suit/armor/ms13/kit/heavy,
				""
				)
	var/loot8 = list(
				/obj/item/clothing/suit/armor/ms13/vest,
				""
				)

/obj/effect/spawner/lootdrop/ms13/armor/tier3/Initialize()
	loot = pick(loot1, loot2, loot3, loot4, loot5, loot6, loot7, loot8)
	. = ..()

/obj/effect/spawner/lootdrop/ms13/armor/tier4
	name = "tier 4 armor spawner"
	lootcount = 2
	var/loot1 = list(
				/obj/item/clothing/suit/armor/ms13/combat/advanced,
				/obj/item/clothing/head/helmet/ms13/combat/advanced
				)
	var/loot2 = list(
				/obj/item/clothing/suit/armor/ms13/tesla,
				""
				)
	var/loot3 = list(
				/obj/item/clothing/suit/armor/ms13/eliteriot,
				/obj/item/clothing/head/helmet/ms13/eliteriot
				)
	var/loot4 = list(
				/obj/item/clothing/suit/armor/ms13/metal/heavy,
				""
				)
	var/loot5 = list(
				/obj/item/clothing/suit/armor/ms13/vest/military,
				""
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
