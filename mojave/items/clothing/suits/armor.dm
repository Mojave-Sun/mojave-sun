/obj/item/clothing/suit/armor/ms13
	name = "generic ms13 armor"
	desc = "You shouldn't be seeing this."
	icon = 'mojave/icons/objects/clothing/suits.dmi'
	worn_icon = 'mojave/icons/mob/clothing/suit.dmi'
	allowed = list(/obj/item/pen,/obj/item/paper,/obj/item/stamp,/obj/item/reagent_containers/food/drinks/flask,/obj/item/storage/box/matches,/obj/item/lighter,/obj/item/clothing/mask/cigarette,/obj/item/storage/fancy/cigarettes,/obj/item/flashlight,/obj/item/gun,/obj/item/ammo_box,/obj/item/ammo_casing)
	body_parts_covered = CHEST|ARMS|LEGS|GROIN
	///Icon file for left hand inhand overlays
	lefthand_file = 'mojave/icons/mob/inhands/clothing_lefthand.dmi'
	///Icon file for right inhand overlays
	righthand_file = 'mojave/icons/mob/inhands/clothing_righthand.dmi'

/obj/item/clothing/suit/hooded/ms13
	name = "generic ms13 hooded clothing"
	desc = "BASE CLASE BASE CLASS. AAAAAAAAAAAAAAA"
	icon = 'mojave/icons/objects/clothing/suits.dmi'
	worn_icon = 'mojave/icons/mob/clothing/suit.dmi'
	lefthand_file = 'mojave/icons/mob/inhands/clothing_lefthand.dmi'
	righthand_file = 'mojave/icons/mob/inhands/clothing_righthand.dmi'
	hoodtype = null

/obj/item/clothing/suit/armor/ms13/kit
	name = "armor kit"
	desc = "A kit of armor intended to be worn over clothing, made almost entirely of metal reinforcements."
	icon_state = "armorkit"
	inhand_icon_state = "armorkit"
	armor = list("melee" = 35, "bullet" = 25, "laser" = 0, "energy" = 0, "bomb" = 25, "bio" = 10, "rad" = 10, "fire" = 25, "acid" = 10)

/obj/item/clothing/suit/armor/ms13/kit/heavy
	name = "heavy armor kit"
	desc = "An even heavier kit of metal reinforcements for wearing over clothing. Great protection, but still won't do anything against lasers."
	icon_state = "harmorkit"
	inhand_icon_state = "harmorkit"
	armor = list("melee" = 50, "bullet" = 35, "laser" = 0, "energy" = 0, "bomb" = 30, "bio" = 10, "rad" = 10, "fire" = 40, "acid" = 10)

/obj/item/clothing/suit/armor/ms13/tire
	name = "tire armor"
	desc = "A very crude set of armor made from pieces of tire. Can save your life in a pinch, but is overall not very protective."
	icon_state = "tirearmor"
	inhand_icon_state = "tirearmor"
	armor = list(melee = 20, bullet = 15, laser = 5, energy = 5, bomb = 5, bio = 5, rad = 5, fire = 5, acid = 5)

/obj/item/clothing/suit/armor/ms13/leatherarmor
	name = "leather armor"
	desc = "A hardened leather chest piece, solid armor revered by wastelanders everywhere."
	icon_state = "leatherarmor"
	inhand_icon_state = "leatherarmor"
	armor = list(melee = 30, bullet = 25, laser = 15, energy = 15, bomb = 15, bio = 10, rad = 10, fire = 10, acid = 10)

/obj/item/clothing/suit/armor/ms13/leatherarmor/reinforced
	name = "reinforced leather armor"
	desc = "A leather chest piece with thicker leather, extra padding and overall very improved protection."
	icon_state = "reinforcedleather"
	inhand_icon_state = "reinforcedleather"
	armor = list(melee = 40, bullet = 35, laser = 25, energy = 25, bomb = 30, bio = 10, rad = 10, fire = 25, acid = 10)

/obj/item/clothing/suit/armor/ms13/metal/vaultvan
	name = "\improper Vault-tec van armor"
	desc = "Makeshift metal armor scrounged together from, as one may expect, the old remains of a Vault-tec van."
	icon_state = "vaultvanarmor"
	inhand_icon_state = "vaultvanarmor"

/obj/item/clothing/suit/armor/ms13/metal
	name = "metal armor"
	desc = "A metal chestplate with some other additional metal protective gear. Offers good protection against conventional attacks, but won't do anything against lasers."
	icon_state = "metalarmor"
	inhand_icon_state = "metalarmor"
	armor = list("melee" = 35, "bullet" = 25, "laser" = 0, "energy" = 0, "bomb" = 25, "bio" = 10, "rad" = 10, "fire" = 25, "acid" = 10)

/obj/item/clothing/suit/armor/ms13/metal/reinforced
	name = "reinforced metal armor"
	desc = "A sturdy, reinforced suit of metal armor. Gives very good overall protection at the cost of doing nothing to protect you from a stray laser beam."
	icon_state = "reinforcedmetal"
	inhand_icon_state = "reinforcedmetal"
	armor = list("melee" = 50, "bullet" = 35, "laser" = 0, "energy" = 0, "bomb" = 30, "bio" = 10, "rad" = 10, "fire" = 40, "acid" = 10)

/obj/item/clothing/suit/armor/ms13/metal/heavy
	name = "heavy metal armor"
	desc = "A heavy suit of plated metal armor. Best in class protection against conventional weapons, melee attacks especially, but still won't be much help against lasers."
	icon_state = "heavymetal"
	inhand_icon_state = "heavymetal"
	armor = list("melee" = 60, "bullet" = 50, "laser" = 5, "energy" = 5, "bomb" = 50, "bio" = 20, "rad" = 20, "fire" = 60, "acid" = 20)

/obj/item/clothing/suit/armor/ms13/vest
	name = "police vest"
	desc = "A light bulletproof vest mostly used by pre-war police forces."
	icon_state = "policekevlar"
	inhand_icon_state = "policekevlar"
	blood_overlay_type = "armor"
	dog_fashion = /datum/dog_fashion/back
	armor = list(melee = 30, bullet = 50, laser = 15, energy = 15, bomb = 30, bio = 20, rad = 20, fire = 30, acid = 20)

/obj/item/clothing/suit/armor/ms13/vest/military
	name = "military vest"
	desc = "A military grade bulletproof vest that is nearly unmatched in stopping bullets from dealing fatal damage."
	icon_state = "militarykevlar"
	inhand_icon_state = "militarykevlar"
	armor = list(melee = 40, bullet = 55, laser = 20, energy = 20, bomb = 40, bio = 20, rad = 20, fire = 50, acid = 20)

/obj/item/clothing/suit/armor/ms13/vest/vault
	name = "vault security vest"
	desc = "A bulletproof vest intended for use by Vault security officers."
	icon_state = "vaultarmor"

/obj/item/clothing/suit/ms13/trench/bossduster
	name = "boss' duster"
	desc = "A duster with a rather thick vest under it. This just SCREAMS authority. Could probably stop a few bullets."
	icon_state = "armouredcourier"
	inhand_icon_state = "det_suit"
	blood_overlay_type = "armor"
	armor = list(melee = 30, bullet = 30, laser = 10, energy = 10, bomb = 25, bio = 5, rad = 5, fire = 20, acid = 5)

/obj/item/clothing/suit/ms13/trench/enforcercoat
	name = "enforcers overcoat"
	desc = "A duster with a rather thick vest under it. This just SCREAMS authority. Could probably stop a few bullets."
	icon_state = "enforcercoat"
	inhand_icon_state = "det_suit"
	blood_overlay_type = "armor"
	armor = list(melee = 40, bullet = 45, laser = 15, energy = 10, bomb = 25, bio = 5, rad = 5, fire = 30, acid = 5)

/obj/item/clothing/suit/ms13/vest/raider
	name = "lightly armored jacket"
	desc = "A jacket with some basic armor attached to it. Better than nothing."
	icon_state = "winterjacketraider"
	inhand_icon_state = "det_suit"
	blood_overlay_type = "armor"
	armor = list(melee = 25, bullet = 35, laser = 10, energy = 10, bomb = 25, bio = 5, rad = 5, fire = 20, acid = 5)

/obj/item/clothing/suit/ms13/vest/raider/plated
	name = "plate reinforced coat"
	desc = "A nice thick coat. The torso has a bit of padding under it while it's also got some rough scrapped together metal plates to protect the shoulders and thighs."
	icon_state = "knightlyraider"

/obj/item/clothing/suit/ms13/vest/raider/kevlar
	name = "reinforced coat"
	desc = "A cozy coat with some leather straps tieing some metal bits to the wearer. It's got a seemingly trustworthy vest over it. Could it take a shot?"
	icon_state = "dapperraider"

/obj/item/clothing/suit/ms13/vest/raider/scrappy
	name = "scrap reinforced coat"
	desc = "A duster with a rather thick vest under it. This just SCREAMS authority. Could probably stop a few bullets."
	icon_state = "veteranraider"

/obj/item/clothing/suit/armor/ms13/tesla
	name = "tesla armor"
	desc = "Experimental pre-war armor mainly specialized against laser and energy weapons."
	icon_state = "tesla_armor"
	inhand_icon_state = "tesla_armor"
	blood_overlay_type = "armor"
	armor = list("melee" = 40, "bullet" = 35, "laser" = 50, "energy" = 50, "bomb" = 30, "bio" = 25, "rad" = 25, "fire" = 60, "acid" = 25)

/obj/item/clothing/suit/armor/ms13/combat
	name = "combat armor"
	desc = "A standard suit of combat armor offering good protection all around."
	icon_state = "combatarmor"
	inhand_icon_state = "combatarmor"
	armor = list("melee" = 45, "bullet" = 40, "laser" = 15, "energy" = 15, "bomb" = 40, "bio" = 20, "rad" = 20, "fire" = 40, "acid" = 20)

/obj/item/clothing/suit/armor/ms13/combat/battered
	name = "battered combat armor"
	desc = "A very worn and battered suit of combat armor that has not been well maintained over the years."
	icon_state = "bat_combatarmor"
	inhand_icon_state = "bat_combatarmor"
	armor = list("melee" = 30, "bullet" = 25, "laser" = 10, "energy" = 10, "bomb" = 30, "bio" = 15, "rad" = 15, "fire" = 30, "acid" = 15)

/obj/item/clothing/suit/armor/ms13/combat/advanced
	name = "advanced combat armor"
	desc = "A more advanced and protective suit of combat armor from before the war. In pristine condition and offers excellent all around protection."
	icon_state = "adv_combatarmor"
	inhand_icon_state = "adv_combatarmor"
	armor = list("melee" = 55, "bullet" = 45, "laser" = 25, "energy" = 25, "bomb" = 50, "bio" = 25, "rad" = 25, "fire" = 60, "acid" = 25)

/obj/item/clothing/suit/armor/ms13/stealth
	name = "stealth suit"
	desc = "An advanced chinese stealth suit. You'll never see communism coming until it's far too late."
	icon_state = "stealthsuit"
	inhand_icon_state = "stealthsuit"
	armor = list("melee" = 25, "bullet" = 15, "laser" = 15, "energy" = 10, "bomb" = 5, "bio" = 25, "rad" = 25, "fire" = 30, "acid" = 25)
// Should probably get some sort of cloaking once the Stealthboys are in.

/obj/item/clothing/suit/armor/ms13/stealth/assassin
	name = "assassin armor"
	desc = "An 'advanced' replication of a chinese stealth suit. It has a way of making people seemingly ignore you. Or does it?"
	icon_state = "assassin"
	inhand_icon_state = "assassin"
	armor = list("melee" = 30, "bullet" = 20, "laser" = 15, "energy" = 10, "bomb" = 10, "bio" = 25, "rad" = 25, "fire" = 20, "acid" = 25)
// Should probably get some sort of cloaking once the Stealthboys are in.

/obj/item/clothing/suit/armor/ms13/eliteriot
	name = "elite riot gear"
	desc = "A highly specialized and advanced suit of armor oringinally in use by elite riot control units before the war."
	icon_state = "riotgear"
	inhand_icon_state = "riotgear"
	armor = list("melee" = 55, "bullet" = 45, "laser" = 25, "energy" = 25, "bomb" = 50, "bio" = 25, "rad" = 25, "fire" = 60, "acid" = 25)

/obj/item/clothing/suit/armor/ms13/firesuit
	name = "fire suit"
	desc = "Thick fibers woven together, into the ultimate fire-proof suit. There's a few stiches missing here and there, but it'll be fine."
	icon_state = "firesuit"
	inhand_icon_state = "firesuit"
	armor = list(melee = 25, bullet = 5, laser = 35, energy = 35, bomb = 10, bio = 5, rad = 10, fire = 100, acid = 10)
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	resistance_flags = FIRE_PROOF

/obj/item/clothing/suit/armor/ms13/radsuit
	name = "radiation suit"
	desc = "A lead lined suit, designed with the sole purpose of blocking radiation from the human body. It's pretty thick, and while it could protect you from more than rads, why would you waste such a thing like this in combat?"
	icon_state = "radsuit"
	inhand_icon_state = "radsuit"
	armor = list(melee = 20, bullet = 5, laser = 10, energy = 10, bomb = 10, bio = 5, rad = 75, fire = 15, acid = 10)

/obj/item/clothing/suit/hooded/ms13/hazmat
	name = "hazmat suit"
	desc = "A relatively thin but sturdy suit. You're not quite sure what it's made from, only that there's not a chance any liquids are getting on your hardly pristine skin. "
	icon_state = "hazmat"
	inhand_icon_state = "hazmat"
	hoodtype = /obj/item/clothing/head/hooded/ms13/hazmat
	resistance_flags = ACID_PROOF
	armor = list(melee = 15, bullet = 5, laser = 5, energy = 5, bomb = 5, bio = 75, rad = 10, fire = 5, acid = 75)

/obj/item/clothing/suit/space/ms13
	name = "\improper Space suit"
	desc = "A state of the art genuine space suit. I hope you didn't go into orbit to get this. Built to last, is up to standard for the harsh climate of space itself."
	icon = 'mojave/icons/objects/clothing/suits.dmi'
	worn_icon = 'mojave/icons/mob/clothing/suit.dmi'
	icon_state = "spacesuit"
	inhand_icon_state = "spacesuit"
	armor = list(melee = 25, bullet = 15, laser = 25, energy = 25, bomb = 5, bio = 50, rad = 40, fire = 60, acid = 50)

/obj/item/clothing/suit/armor/ms13/ncr
	name = "\improper NCR infantry vest"
	desc = "A standard issue NCR infantry vest."
	icon_state = "ncr_infantry_vest"
	inhand_icon_state = "ncr_infantry_vest"
	armor = list(melee = 35, bullet = 30, laser = 15, energy = 15, bomb = 25, bio = 10, rad = 10, fire = 20, acid = 10)

/obj/item/clothing/suit/armor/ms13/ncr/reinforced
	name = "\improper NCR reinforced infantry vest"
	desc = "An NCR infantry vest with extra protective reinforcements."
	icon_state = "ncr_reinforced_vest"
	inhand_icon_state = "ncr_reinforced_vest"
	armor = list("melee" = 40, "bullet" = 35, "laser" = 20, "energy" = 20, "bomb" = 30, "bio" = 20, "rad" = 20, "fire" = 25, "acid" = 20)

/obj/item/clothing/suit/armor/ms13/ncr/mantle
	name = "\improper NCR mantle vest"
	desc = "An NCR vest with a mantle on the shoulder, normally indicating some form of authority or command position."
	icon_state = "ncr_standard_mantle"
	inhand_icon_state = "ncr_standard_mantle"
	armor = list("melee" = 40, "bullet" = 35, "laser" = 20, "energy" = 20, "bomb" = 30, "bio" = 20, "rad" = 20, "fire" = 25, "acid" = 20)

/obj/item/clothing/suit/armor/ms13/ncr/mantle/reinforced
	name = "\improper NCR reinforced mantle vest"
	desc = "An NCR mantle vest with additional protective reinforcements."
	icon_state = "ncr_reinforced_mantle"
	inhand_icon_state = "ncr_reinforced_mantle"
	armor = list("melee" = 45, "bullet" = 40, "laser" = 25, "energy" = 25, "bomb" = 35, "bio" = 25, "rad" = 25, "fire" = 30, "acid" = 25)

/obj/item/clothing/suit/armor/ms13/legion
	name = "standard Legion armor"
	desc = "Standard non-existant armor for Legion recruits, cobbled together with various sports equipment and additional reinforcements as needed."
	icon_state = "leg_rec"
	inhand_icon_state = "legarmor"

/obj/item/clothing/suit/armor/ms13/legion/recruit
	name = "\improper Legion recruit armor"
	desc = "Standard armor for Legion recruits, cobbled together with various sports equipment and additional reinforcements as needed."
	icon_state = "leg_rec"
	inhand_icon_state = "legarmor"
	armor = list("melee" = 40, "bullet" = 25, "laser" = 10, "energy" = 10, "bomb" = 25, "bio" = 5, "rad" = 5, "fire" = 15, "acid" = 5)

/obj/item/clothing/suit/armor/ms13/legion/prime
	name = "\improper Legion prime armor"
	desc = "Sturdier armor given to Prime legionaries, those who survive long enough to get there."
	icon_state = "leg_prime"
	armor = list("melee" = 45, "bullet" = 35, "laser" = 15, "energy" = 15, "bomb" = 30, "bio" = 10, "rad" = 10, "fire" = 25, "acid" = 10)

/obj/item/clothing/suit/armor/ms13/legion/veteran
	name = "\improper Legion veteran armor"
	desc = "High quality Legion armor given only to their best; feared Legion Veterans."
	icon_state = "leg_vet"
	armor = list("melee" = 50, "bullet" = 40, "laser" = 20, "energy" = 20, "bomb" = 30, "bio" = 20, "rad" = 20, "fire" = 30, "acid" = 20)

/obj/item/clothing/suit/armor/ms13/legion/scout
	name = "\improper Legion scout armor"
	desc = "Legion recruit armor without a chestplate, slightly reduced protection as a result."
	icon_state = "leg_scout"
	armor = list("melee" = 35, "bullet" = 25, "laser" = 5, "energy" = 5, "bomb" = 20, "bio" = 5, "rad" = 5, "fire" = 10, "acid" = 5)

/obj/item/clothing/suit/armor/ms13/legion/explorer
	name = "\improper Legion explorer armor"
	desc = "Legion veteran armor with less reinforcements, reducing some of it's protection."
	icon_state = "leg_exp"
	armor = list("melee" = 45, "bullet" = 40, "laser" = 10, "energy" = 10, "bomb" = 25, "bio" = 20, "rad" = 20, "fire" = 25, "acid" = 20)

/obj/item/clothing/suit/armor/ms13/legion/speculatore
	name = "\improper Legion explorer armor"
	desc = "Legion veteran armor with less reinforcements, reducing some of it's protection."
	icon_state = "leg_spec"
	armor = list("melee" = 45, "bullet" = 40, "laser" = 10, "energy" = 10, "bomb" = 25, "bio" = 20, "rad" = 20, "fire" = 25, "acid" = 20)

/obj/item/clothing/suit/armor/ms13/legion/vexillarius
	name = "\improper Legion vexillarius armor"
	desc = "Legion vexillarius armor with the addition of protective plates and defining color."
	icon_state = "leg_vex"
	armor = list("melee" = 50, "bullet" = 40, "laser" = 25, "energy" = 25, "bomb" = 30, "bio" = 20, "rad" = 20, "fire" = 30, "acid" = 20)

/obj/item/clothing/suit/armor/ms13/legion/praetorian
	name = "\improper Legion praetorian armor"
	desc = "Legion praetorian armor, worn only by the most skilled guardians of the Legion."
	icon_state = "leg_prae"
	armor = list("melee" = 55, "bullet" = 40, "laser" = 25, "energy" = 25, "bomb" = 30, "bio" = 20, "rad" = 20, "fire" = 30, "acid" = 20)

/obj/item/clothing/suit/armor/ms13/legion/centurion
	name = "\improper Legion centurion armor"
	desc = "A Legion suit of armor made mostly of various pieces of armor, former opponents of the Centurion who made it."
	icon_state = "leg_cent"
	armor = list("melee" = 60, "bullet" = 45, "laser" = 30, "energy" = 30, "bomb" = 45, "bio" = 30, "rad" = 30, "fire" = 50, "acid" = 30)

/obj/item/clothing/suit/armor/ms13/scribe
	name = "scribe's robe"
	desc = "A finely made, comfortable cloth robe worn by Brotherhood scribes."
	icon_state = "scribe"
	inhand_icon_state = "scribe"
	armor = list(melee = 20, bullet = 15, laser = 10, energy = 10, bomb = 10, bio = 15, rad = 15, fire = 15, acid = 15)

/obj/item/clothing/suit/armor/ms13/scribe/head
	name = "head scribe's robe"
	desc = "A finely made, comfortable cloth robe worn by Brotherhood scribes. This one is navy blue, denoting that it's for a head scribe."
	icon_state = "head_scribe"
	inhand_icon_state = "head_scribe"
	armor = list(melee = 25, bullet = 20, laser = 20, energy = 20, bomb = 20, bio = 20, rad = 20, fire = 20, acid = 20)

/obj/item/clothing/suit/armor/ms13/head_paladin
	name = "head paladin's battlecoat"
	desc = "A masterwork of Brotherhood tailoring, featuring remarkable reinforcement and armoring while not compromising on style or weight."
	icon_state = "battlecoat"
	inhand_icon_state = "battlecoat"

/obj/item/clothing/suit/armor/ms13/combat/bos
	name = "\improper BoS combat armor"
	desc = "A custom built suit of combat armor, designed to hold up to the rigors of the wasteland by the Brotherhood."
	icon_state = "bos_combat"
