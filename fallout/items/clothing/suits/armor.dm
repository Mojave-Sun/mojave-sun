/obj/item/clothing/suit/armor/fallout
	name = "generic fallout armor"
	desc = "You shouldn't be seeing this."
	icon = 'fallout/icons/objects/clothing/suits.dmi'
	mob_overlay_icon = 'fallout/icons/mob/clothing/suit.dmi'
	allowed = list(/obj/item/pen,/obj/item/paper,/obj/item/stamp,/obj/item/reagent_containers/food/drinks/flask,/obj/item/storage/box/matches,/obj/item/lighter,/obj/item/clothing/mask/cigarette,/obj/item/storage/fancy/cigarettes,/obj/item/flashlight,/obj/item/gun,/obj/item/ammo_box,/obj/item/ammo_casing)
	body_parts_covered = CHEST|ARMS|LEGS|GROIN

/obj/item/clothing/suit/armor/fallout/kit
	name = "armor kit"
	desc = "Various armor parts and pieces worn over clothing. Good at stopping knives and bullets, but not much else."
	icon_state = "armorkit"
	item_state = "armorkit"
	armor = list(melee = 30, bullet = 30, laser = 0, energy = 0, bomb = 15, bio = 5, rad = 5, fire = 5, acid = 5)

/obj/item/clothing/suit/armor/fallout/kit/light
	name = "light armor kit"
	desc = "Some padded cloth, leather, and metal fastened over clothing.  Limited protection, but could save your life."
	icon_state = "lightarmorkit"
	item_state = "lightarmorkit"
	armor = list(melee = 15, bullet = 15, laser = 0, energy = 0, bomb = 5, bio = 0, rad = 0, fire = 0, acid = 0)

/obj/item/clothing/suit/armor/fallout/leatherarmor
	name = "leather armor"
	desc = "A standard suit of leather armor, worn by wastelanders everywhere."
	icon_state = "leatherarmor"
	item_state = "leatherarmor"
	armor = list(melee = 35, bullet = 25, laser = 10, energy = 10, bomb = 20, bio = 10, rad = 10, fire = 10, acid = 10)
	flags_inv = HIDEJUMPSUIT

/obj/item/clothing/suit/armor/fallout/leatherarmor/light
	name = "lightweight leather armor"
	desc = "A light suit of leather armor, stripped of almost all of it's metal pieces, reducing it's overall protective value."
	icon_state = "lightleather"
	item_state = "lightleather"
	armor = list(melee = 25, bullet = 20, laser = 5, energy = 5, bomb = 10, bio = 5, rad = 5, fire = 5, acid = 5)

/obj/item/clothing/suit/armor/fallout/blastmaster
	name = "blastmaster raider armor"
	desc = "Crude raider armor most notable for utilizing a tire as the shoulder pad. Perhaps not the most effective, but it gets the job done."
	icon_state = "blastmaster"
	item_state = "blastmaster"
	armor = list(melee = 30, bullet = 25, laser = 5, energy = 5, bomb = 25, bio = 10, rad = 10, fire = 20, acid = 10)
	flags_inv = HIDEJUMPSUIT

/obj/item/clothing/suit/armor/fallout/yankee
	name = "yankee raider armor"
	desc = "A set of raider armor made from old football gear. Not too good at stopping bullets but great at stopping knives."
	icon_state = "yankee"
	item_state = "yankee"
	armor = list("melee" = 40, "bullet" = 15, "laser" = 10, "energy" = 10, "bomb" = 25, "bio" = 10, "rad" = 10, "fire" = 10, "acid" = 10)

/obj/item/clothing/suit/armor/fallout/sadist
	name = "sadist raider armor"
	desc = "Minimalist raider leather armor. Only for the truly sadistic."
	icon_state = "sadist"
	item_state = "sadist"
	armor = list(melee = 35, bullet = 25, laser = 10, energy = 10, bomb = 20, bio = 10, rad = 10, fire = 10, acid = 10)

/obj/item/clothing/suit/armor/fallout/sadist/tribal
	name = "tribal raider armor"
	desc = "Raider armor made mostly of padded cloth and leather, with an added tire for emergencies."
	icon_state = "tribalraider"
	item_state = "tribalraider"

/obj/item/clothing/suit/armor/fallout/badlands
	name = "badlands raider armor"
	desc = "Raider armor for the badlands, complete with a fancy bandolier and light kevlar padding. Overall protection does leave something to be desired, however."
	icon_state = "badlands"
	item_state = "badlands"
	armor = list(melee = 20, bullet = 35, laser = 5, energy = 5, bomb = 20, bio = 10, rad = 10, fire = 10, acid = 10)

/obj/item/clothing/suit/armor/fallout/painspike
	name = "painspike raider armor"
	desc = "Extra spiked and reinforced raider armor. Good for up close fighters and those looking to intimidate."
	icon_state = "painspike"
	item_state = "painspike"
	armor = list("melee" = 40, "bullet" = 20, "laser" = 5, "energy" = 5, "bomb" = 20, "bio" = 10, "rad" = 10, "fire" = 15, "acid" = 10)

/obj/item/clothing/suit/armor/fallout/vaultvan
	name = "Vault-tec van armor"
	desc = "Makeshift armor scrounged together from, as one may expect, the old remains of a Vault-tec van. Being made almost entirely of metal does make it susceptible to laser and energy weapons, however."
	icon_state = "vaultvanarmor"
	item_state = "vaultvanarmor"
	armor = list("melee" = 50, "bullet" = 35, "laser" = 5, "energy" = 5, "bomb" = 30, "bio" = 10, "rad" = 10, "fire" = 50, "acid" = 10)

/obj/item/clothing/suit/armor/fallout/metal
	name = "metal armor"
	desc = "Sturdy and heavy metal armor, slows you down but offers solid protection. A full suit of metal armor is, however, very conductive."
	icon_state = "bmetalarmor"
	item_state = "bmetalarmor"
	armor = list("melee" = 55, "bullet" = 40, "laser" = 0, "energy" = 0, "bomb" = 40, "bio" = 20, "rad" = 20, "fire" = 80, "acid" = 20)
	slowdown = 0.5

/obj/item/clothing/suit/armor/fallout/metal/light
	name = "lightweight metal armor"
	desc = "Metal armor with primarily just the chestplate, making it much lighter while only sacrificing some protective qualities.."
	icon_state = "lightmetal"
	item_state = "lightmetal"
	armor = list("melee" = 50, "bullet" = 35, "laser" = 5, "energy" = 5, "bomb" = 30, "bio" = 10, "rad" = 10, "fire" = 50, "acid" = 10)

/obj/item/clothing/suit/armor/fallout/vest
	name = "police vest"
	desc = "A bulletproof police vest meant primarily for stopping small caliber guns."
	icon_state = "armoralt"
	item_state = "armoralt"
	blood_overlay_type = "armor"
	dog_fashion = /datum/dog_fashion/back
	armor = list(melee = 20, bullet = 40, laser = 10, energy = 10, bomb = 25, bio = 5, rad = 5, fire = 20, acid = 5)

/obj/item/clothing/suit/armor/fallout/vest/military
	name = "military vest"
	desc = "A bulletproof military vest that is excellent at stopping almost any bullets, but does not provide great all around protection."
	icon_state = "bulletproof"
	item_state = "bulletproof"
	armor = list(melee = 30, bullet = 50, laser = 15, energy = 15, bomb = 40, bio = 20, rad = 20, fire = 40, acid = 20)

/obj/item/clothing/suit/armor/fallout/vest/detective
	name = "detective vest"
	desc = "A bulletproof vest specifically meant for pre-war police detectives."
	icon_state = "detective-armor"
	item_state = "detective-armor"
	dog_fashion = null

/obj/item/clothing/suit/armor/fallout/tesla
	name = "tesla armor"
	desc = "Pre-war armor designed to expressly limit damage from laser and energy weapons. Provides decent overall protection as well."
	icon_state = "tesla_armor"
	item_state = "tesla_armor"
	blood_overlay_type = "armor"
	armor = list("melee" = 40, "bullet" = 40, "laser" = 45, "energy" = 45, "bomb" = 30, "bio" = 25, "rad" = 25, "fire" = 60, "acid" = 25)

/obj/item/clothing/suit/armor/fallout/leatherarmor/reinforced
	name = "reinforced leather armor"
	desc = "A suit of leather armor reinforced with extra padding, tougher leather, and heavier metal."
	icon_state = "reinforcedleather"
	item_state = "reinforcedleather"
	armor = list(melee = 50, bullet = 35, laser = 25, energy = 25, bomb = 30, bio = 10, rad = 10, fire = 25, acid = 10)

/obj/item/clothing/suit/armor/fallout/combat
	name = "combat armor"
	desc = "Pre-war military grade combat armor. Offers great all around protection."
	icon_state = "combat_armor"
	item_state = "combat_armor"
	armor = list("melee" = 45, "bullet" = 40, "laser" = 15, "energy" = 15, "bomb" = 40, "bio" = 20, "rad" = 20, "fire" = 40, "acid" = 20)

/obj/item/clothing/suit/armor/fallout/combat/advanced
	name = "advanced combat armor"
	desc = "An advanced and more protective model of combat armor. Excellent overall protection."
	icon_state = "combat_armor_mk2"
	item_state = "combat_armor_mk2"
	armor = list("melee" = 55, "bullet" = 45, "laser" = 25, "energy" = 25, "bomb" = 50, "bio" = 25, "rad" = 25, "fire" = 60, "acid" = 25)

/obj/item/clothing/suit/armor/fallout/combat/reinforced
	name = "reinforced combat armor"
	desc = "Standard combat armor reinforced with lots of metal plating. The added weight from the plating slows the user down, but the protection is well worth it."
	icon_state = "reinfcombat"
	item_state = "reinfcombat"
	armor = list("melee" = 60, "bullet" = 50, "laser" = 10, "energy" = 10, "bomb" = 60, "bio" = 25, "rad" = 25, "fire" = 80, "acid" = 25)
	slowdown = 0.5

/obj/item/clothing/suit/armor/fallout/combat/black
	name = "black combat armor"
	desc = "A specialized set of combat armor, painted black and modified for resistance against laser and energy weapons. Though this comes at the cost of some protection against other attacks."
	icon_state = "enclave_armor"
	item_state = "enclave_armor"
	armor = list("melee" = 50, "bullet" = 40, "laser" = 35, "energy" = 35, "bomb" = 50, "bio" = 25, "rad" = 25, "fire" = 60, "acid" = 25)

/obj/item/clothing/suit/armor/fallout/combat/black/brotherhood
	name = "brotherhood combat armor"
	desc = "Armor made personally by and for the Brotherhood of Steel. Specialized for protecting against laser and energy weapons."
	icon_state = "brotherhood_armor"
	item_state = "brotherhood_armor"

/obj/item/clothing/suit/armor/fallout/eliteriot
	name = "elite riot gear"
	desc = "A highly specialized and advanced suit of armor oringinally in use by elite riot control units before the war."
	icon_state = "elite_riot"
	item_state = "elite_riot"
	armor = list("melee" = 60, "bullet" = 45, "laser" = 20, "energy" = 20, "bomb" = 60, "bio" = 25, "rad" = 25, "fire" = 60, "acid" = 25)

/obj/item/clothing/suit/armor/fallout/ncr
	name = "NCR infantry vest"
	desc = "A standard issue NCR infantry vest specialized for arctic environments."
	icon_state = "ncr_infantry_vest_w"
	item_state = "ncr_infantry_vest_w"
	armor = list(melee = 35, bullet = 35, laser = 10, energy = 10, bomb = 20, bio = 10, rad = 10, fire = 10, acid = 10)

/obj/item/clothing/suit/armor/fallout/ncr/reinforced
	name = "NCR reinforced infantry vest"
	desc = "An NCR infantry vest with extra protective reinforcements."
	icon_state = "ncr_reinforced_vest_w"
	item_state = "ncr_reinforced_vest_w"
	armor = list("melee" = 45, "bullet" = 40, "laser" = 20, "energy" = 20, "bomb" = 25, "bio" = 20, "rad" = 20, "fire" = 20, "acid" = 20)

/obj/item/clothing/suit/armor/fallout/ncr/mantle
	name = "NCR mantle vest"
	desc = "An NCR vest with a mantle on the shoulder, normally indicating some form of authority or command position."
	icon_state = "ncr_standard_mantle_w"
	item_state = "ncr_standard_mantle_w"
	armor = list("melee" = 45, "bullet" = 40, "laser" = 20, "energy" = 20, "bomb" = 25, "bio" = 20, "rad" = 20, "fire" = 20, "acid" = 20)

/obj/item/clothing/suit/armor/fallout/ncr/mantle/reinforced
	name = "NCR reinforced mantle vest"
	desc = "An NCR mantle vest with additional protective reinforcements."
	icon_state = "ncr_reinforced_mantle_w"
	item_state = "ncr_reinforced_mantle_w"
	armor = list("melee" = 50, "bullet" = 45, "laser" = 25, "energy" = 25, "bomb" = 30, "bio" = 25, "rad" = 25, "fire" = 30, "acid" = 25)

/obj/item/clothing/suit/armor/fallout/legion
	name = "legion recruit armor"
	desc = "Standard armor for Legion recruits, cobbled together with various sports equipment and additional reinforcements as needed."
	icon_state = "legrecruit"
	item_state = "legarmor"
	armor = list("melee" = 40, "bullet" = 25, "laser" = 10, "energy" = 10, "bomb" = 25, "bio" = 5, "rad" = 5, "fire" = 15, "acid" = 5)

/obj/item/clothing/suit/armor/fallout/legion/prime
	name = "legion prime armor"
	desc = "Sturdier armor given to Prime legionaries, those who survive long enough to get there."
	icon_state = "legprime"
	armor = list("melee" = 45, "bullet" = 35, "laser" = 15, "energy" = 15, "bomb" = 30, "bio" = 10, "rad" = 10, "fire" = 25, "acid" = 10)

/obj/item/clothing/suit/armor/fallout/legion/veteran
	name = "legion veteran armor"
	desc = "High quality Legion armor given only to their best; feared Legion Veterans."
	icon_state = "legvet"
	armor = list("melee" = 50, "bullet" = 40, "laser" = 20, "energy" = 20, "bomb" = 30, "bio" = 20, "rad" = 20, "fire" = 30, "acid" = 20)

/obj/item/clothing/suit/armor/fallout/legion/scout
	name = "legion scout armor"
	desc = "Legion recruit armor without a chestplate, slightly reduced protection as a result."
	icon_state = "legscout"
	armor = list("melee" = 35, "bullet" = 25, "laser" = 5, "energy" = 5, "bomb" = 20, "bio" = 5, "rad" = 5, "fire" = 10, "acid" = 5)

/obj/item/clothing/suit/armor/fallout/legion/explorer
	name = "legion explorer armor"
	desc = "Legion veteran armor with less reinforcements, reducing some of it's protection."
	icon_state = "legexplorer"
	armor = list("melee" = 45, "bullet" = 40, "laser" = 10, "energy" = 10, "bomb" = 25, "bio" = 20, "rad" = 20, "fire" = 25, "acid" = 20)

/obj/item/clothing/suit/armor/fallout/legion/vexil
	name = "legion vexillarius armor"
	desc = "Legion veteran armor with the addition of protective plates and a Legion banner on it's back."
	icon_state = "legvet"
	armor = list("melee" = 55, "bullet" = 40, "laser" = 25, "energy" = 25, "bomb" = 30, "bio" = 20, "rad" = 20, "fire" = 30, "acid" = 20)

/obj/item/clothing/suit/armor/fallout/legion/cent
	name = "legion centurion armor"
	desc = "A Legion suit of armor made mostly of various pieces of armor, former opponents of the Centurion who made it."
	icon_state = "legcenturion"
	armor = list("melee" = 60, "bullet" = 45, "laser" = 30, "energy" = 30, "bomb" = 45, "bio" = 30, "rad" = 30, "fire" = 50, "acid" = 30)

/obj/item/clothing/suit/armor/fallout/scribe
	name = "brotherhood scribe robe"
	desc = "A red cloth robe worn by Brotherhood of Steel Scribes."
	icon_state = "scribe"
	item_state = "scribe"
	armor = list(melee = 20, bullet = 15, laser = 10, energy = 10, bomb = 10, bio = 15, rad = 15, fire = 15, acid = 15)

/obj/item/clothing/suit/armor/fallout/scribe/head
	name = "brotherhood head scribe robe"
	desc = "A red cloth robe with gold trimmings typically worn by Brotherhood of Steel Head Scribes."
	icon_state = "headscribe"
	item_state = "headscribe"
	armor = list(melee = 25, bullet = 20, laser = 20, energy = 20, bomb = 20, bio = 20, rad = 20, fire = 20, acid = 20)

/obj/item/clothing/suit/armor/fallout/recon
	name = "brotherhood recon armor"
	desc = "A reinforced and armored jumpsuit typically given to Brotherhood Initiates."
	icon_state = "recon"
	item_state = "recon"
	armor = list("melee" = 40, "bullet" = 35, "laser" = 20, "energy" = 20, "bomb" = 25, "bio" = 20, "rad" = 20, "fire" = 25, "acid" = 20)
