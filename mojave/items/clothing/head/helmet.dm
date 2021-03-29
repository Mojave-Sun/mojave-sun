/obj/item/clothing/head/helmet/ms13
	name = "generic ms13 helmet"
	desc = "You shouldn't be seeing this helmet."
	icon = 'mojave/icons/objects/clothing/hats.dmi'
	worn_icon = 'mojave/icons/mob/clothing/head.dmi'
	flags_inv = HIDEHAIR

/obj/item/clothing/head/hooded/ms13
	name = "generic ms13 hood"
	desc = "Gamer phone home. Something is wrong."
	icon = 'mojave/icons/objects/clothing/hats.dmi'
	worn_icon = 'mojave/icons/mob/clothing/head.dmi'
	flags_inv = HIDEHAIR
	dynamic_hair_suffix = ""
	dynamic_fhair_suffix = ""

/obj/item/clothing/head/helmet/ms13/baseball
	name = "baseball cap"
	desc = "A classic baseball cap. A relic from pre-nuclear America."
	icon_state = "baseball"
	inhand_icon_state = "baseball"

/obj/item/clothing/head/helmet/ms13/utilitycap
	name = "utility cap"
	desc = "A dusty utility cap. History practicaly seeps from the half-frayed fabrics of it."
	icon_state = "utility_gsoft"
	inhand_icon_state = "baseball"

/obj/item/clothing/head/helmet/ms13/utilitycap/blue
	name = "blue utility cap"
	desc = "A pleasant blue utility cap. The brim is a bit floppy."
	icon_state = "utility_nsoft"

/obj/item/clothing/head/helmet/ms13/utilitycap/green
	name = "green utility cap"
	desc = "A fashionable green utility cap. Could be used to blend in with ANYTHING green nearby."
	icon_state = "utility_osoft"

/obj/item/clothing/head/helmet/ms13/utilitycap/tan
	name = "tan utility cap"
	desc = "An old utility cap. This one's got a nice beige colour to it."
	icon_state = "utility_tsoft"

/obj/item/clothing/head/helmet/ms13/vaulthelmet
	name = "vault security helmet"
	desc = "An armored helmet used by Vault security officers, good protection against ballistic threats."
	icon_state = "vaulthelmet"
	inhand_icon_state = "helmet"
	armor = list(melee = 30, bullet = 50, laser = 15, energy = 15, bomb = 30, bio = 20, rad = 20, fire = 30, acid = 20)
	flags_inv = HIDEEARS|HIDEHAIR
	dynamic_hair_suffix = ""
	dynamic_fhair_suffix = ""

/obj/item/clothing/head/helmet/ms13/utilitycap/deputy
	name = "deputy's cap"
	desc = "A formal refurbished pre-war cap. It's got a faded logo in the inner rim."
	icon_state = "deputycap"
	inhand_icon_state = "deputycap"

/obj/item/clothing/head/helmet/ms13/cowboy/sheriff
	name = "sheriff's hat"
	desc = "A wide brimmed sheriff hat. There's better smelling things in the wasteland, perhaps you could give it a wash some time. Upon further examination, you can see there is a metal rim inside of it with some rather thick leather in the dome. "
	icon_state = "sheriffhat"
	inhand_icon_state = "sheriffhat"
	armor = list(melee = 20, bullet = 15, laser = 15, energy = 10, bomb = 0, bio = 0, rad = 0, fire = 10, acid = 10)

/obj/item/clothing/head/helmet/ms13/metal
	name = "reinforced metal helmet"
	desc = "A strong metal helmet that will protect your brain from bullets or being caved in, but won't save your head from getting burned by a laser."
	icon_state = "metalhelmet"
	inhand_icon_state = "metalhelmet"
	armor = list("melee" = 50, "bullet" = 35, "laser" = 0, "energy" = 0, "bomb" = 30, "bio" = 10, "rad" = 10, "fire" = 40, "acid" = 10)
	flags_inv = HIDEEARS|HIDEFACE|HIDEHAIR
	dynamic_hair_suffix = ""
	dynamic_fhair_suffix = ""

/obj/item/clothing/head/helmet/ms13/military/raider
	name = "hooded mask"
	desc = "A shabbily put together hooded mask. The hood was clearly roughly torn from a jacket. Looks like your face could survive a punch or two though, not to mention the windchill is cut down."
	icon_state = "hoodraider"
	inhand_icon_state = "bulletproof"

/obj/item/clothing/head/helmet/ms13/military/raider/ushanka
	name = "trappers mask"
	desc = "A sturdy mask sewn straight into a thick fur hat. Nice and cozy. "
	icon_state = "ushankaraider"
	inhand_icon_state = "bulletproof"

/obj/item/clothing/head/helmet/ms13/combat
	name = "combat helmet"
	desc = "A standard combat helmet that can save your life and your cranium from plenty of threats."
	icon_state = "combathelmet"
	inhand_icon_state = "combathelmet"
	armor = list("melee" = 45, "bullet" = 40, "laser" = 15, "energy" = 15, "bomb" = 40, "bio" = 20, "rad" = 20, "fire" = 40, "acid" = 20)
	flags_cover = NONE
	dynamic_hair_suffix = ""
	dynamic_fhair_suffix = ""

/obj/item/clothing/head/helmet/ms13/combat/battered
	name = "battered combat helmet"
	desc = "A battered and well worn combat helmet that isn't quite as good at protecting vital areas as it used to be, but it can get the job done."
	icon_state = "bat_combathelmet"
	inhand_icon_state = "combathelmet"
	armor = list("melee" = 30, "bullet" = 25, "laser" = 10, "energy" = 10, "bomb" = 30, "bio" = 15, "rad" = 15, "fire" = 30, "acid" = 15)

/obj/item/clothing/head/helmet/ms13/combat/advanced
	name = "advanced combat helmet"
	desc = "An advanced, reinforced combat helmet that is top of the line protection."
	icon_state = "adv_combathelmet"
	inhand_icon_state = "combathelmet_mk2"
	armor = list("melee" = 55, "bullet" = 45, "laser" = 25, "energy" = 25, "bomb" = 50, "bio" = 25, "rad" = 25, "fire" = 60, "acid" = 25)

/obj/item/clothing/head/helmet/ms13/stealth
	name = "stealth suit helmet"
	desc = "A stealth suit's helmet. With a menacing orange visor, the victim will never have the pleasure of locking eye contact."
	icon_state = "stealthhelmet"
	inhand_icon_state = "stealthhelmet"
	armor = list("melee" = 25, "bullet" = 15, "laser" = 15, "energy" = 10, "bomb" = 5, "bio" = 25, "rad" = 25, "fire" = 30, "acid" = 25)
	flags_cover = HEADCOVERSEYES
	flags_inv = HIDEEARS|HIDEFACE|HIDEHAIR
	dynamic_hair_suffix = ""
	dynamic_fhair_suffix = ""

/obj/item/clothing/head/helmet/ms13/eliteriot
	name = "elite riot helmet"
	desc = "An advanced helmet originally used by elite pre-war riot control units."
	icon_state = "riotgearhelmet"
	inhand_icon_state = "riotgearhelmet"
	armor = list("melee" = 55, "bullet" = 45, "laser" = 25, "energy" = 25, "bomb" = 50, "bio" = 25, "rad" = 25, "fire" = 60, "acid" = 25)
	flags_inv = HIDEEARS|HIDEFACE|HIDEHAIR
	dynamic_hair_suffix = ""
	dynamic_fhair_suffix = ""

/obj/item/clothing/head/helmet/ms13/firehood
	name = "fireproof hood"
	desc = "The hood to a near completely fire resistent suit. Pretty heavy, but not so bad once it's on."
	icon_state = "firehood"
	inhand_icon_state = "firehood"
	armor = list(melee = 25, bullet = 5, laser = 35, energy = 35, bomb = 10, bio = 5, rad = 10, fire = 100, acid = 10)
	heat_protection = HEAD
	resistance_flags = FIRE_PROOF
	dynamic_hair_suffix = ""
	dynamic_fhair_suffix = ""

/obj/item/clothing/head/helmet/ms13/radiationhood
	name = "radiation suit hood"
	desc = "A hood to go along with your radiation suit. It's got a geiger counter mounted near the filter, but it doesn't seem functional."
	icon_state = "radsuithood"
	inhand_icon_state = "radsuithood"
	armor = list(melee = 20, bullet = 5, laser = 10, energy = 10, bomb = 10, bio = 5, rad = 75, fire = 15, acid = 10)
	dynamic_hair_suffix = ""
	dynamic_fhair_suffix = ""

/obj/item/clothing/head/hooded/ms13/hazmat
	name = "hazmat hood"
	desc = "The hood to a hazmat suit. You'll want to keep this close if you want the suit to actually do anything for you."
	icon_state = "hazmathood"
	inhand_icon_state = "hazmat"
	armor = list(melee = 15, bullet = 5, laser = 5, energy = 5, bomb = 5, bio = 75, rad = 10, fire = 5, acid = 75)
	resistance_flags = ACID_PROOF
	dynamic_hair_suffix = ""
	dynamic_fhair_suffix = ""

/obj/item/clothing/head/helmet/space/ms13
	name = "space helmet"
	desc = "A near pristine space helmet. Not a single crack in the glass found. It's probably still good to go!"
	icon = 'mojave/icons/objects/clothing/hats.dmi'
	worn_icon = 'mojave/icons/mob/clothing/head.dmi'
	icon_state = "spacehelmet"
	inhand_icon_state = "spacehelmet"
	armor = list(melee = 15, bullet = 5, laser = 5, energy = 5, bomb = 5, bio = 75, rad = 10, fire = 5, acid = 75)
	flags_inv = HIDEHAIR
	dynamic_hair_suffix = ""
	dynamic_fhair_suffix = ""

/obj/item/clothing/head/helmet/ms13/ncr
	name = "\improper NCR infantry helmet"
	desc = "A standard issue NCR infantry helmet adapted for arctic environments."
	icon_state = "ncr_infantry_helmet"
	inhand_icon_state = "ncr_infantry_helmet"
	armor = list(melee = 35, bullet = 30, laser = 15, energy = 15, bomb = 25, bio = 10, rad = 10, fire = 20, acid = 10)
	flags_cover = NONE
	dynamic_hair_suffix = ""
	dynamic_fhair_suffix = ""

/obj/item/clothing/head/helmet/ms13/ncr/goggles
	name = "\improper NCR goggles helmet"
	desc = "An NCR helmet with added goggles and additional protective padding."
	icon_state = "ncr_goggles_helmet"
	inhand_icon_state = "ncr_goggles_helmet"
	can_toggle = 1
	toggle_message = "You pull the goggles down on"
	alt_toggle_message = "You push the goggles up on"
	actions_types = list(/datum/action/item_action/toggle)
	armor = list("melee" = 40, "bullet" = 35, "laser" = 20, "energy" = 20, "bomb" = 30, "bio" = 20, "rad" = 20, "fire" = 25, "acid" = 20)

/obj/item/clothing/head/helmet/ms13/ncr/beret
	name = "\improper NCR officer beret"
	desc = "An NCR officer's beret. Minimal protection, maximum style and authority."
	icon_state = "ncr_officer_beret"
	inhand_icon_state = "ncr_officer_beret"
	armor = list(melee = 20, bullet = 15, laser = 5, energy = 5, bomb = 5, bio = 5, rad = 5, fire = 5, acid = 5)

/obj/item/clothing/head/helmet/ms13/ncr/beret/brown
	icon_state = "ncr_officer_brberet"
	inhand_icon_state = "ncr_officer_brberet"

/obj/item/clothing/head/helmet/ms13/legion/vexillarius
	name = "vexillarius headdress"
	desc = "A helmet used by only the loudest message relayers and heartiest morale boosters of the Legion"
	icon_state = "leg_vex"
	inhand_icon_state = "owl_mask"
	armor = list("melee" = 35, "bullet" = 15, "laser" = 15, "energy" = 10, "bomb" = 15, "bio" = 20, "rad" = 20, "fire" = 25, "acid" = 20)

/obj/item/clothing/head/helmet/ms13/legion/recruit
	name = "legion recruit headband"
	desc = "A red headband, often worn by recruits of the Legion"
	icon_state = "leg_rec"
	inhand_icon_state = "owl_mask"
	armor = list("melee" = 10, "bullet" = 5, "laser" = 15, "energy" = 15, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 20)

/obj/item/clothing/head/helmet/ms13/legion/prime
	name = "\improper Legion prime helmet"
	desc = "A helmet used by Prime Legionaries. It's pretty dense."
	icon_state = "leg_prime"
	inhand_icon_state = "owl_mask"
	armor = list("melee" = 35, "bullet" = 20, "laser" = 15, "energy" = 20, "bomb" = 25, "bio" = 20, "rad" = 20, "fire" = 25, "acid" = 20)
	flags_inv = HIDEEARS|HIDEHAIR

/obj/item/clothing/head/helmet/ms13/legion/veteran
	name = "\improper Legion veteran helmet"
	desc = "A helmet used by Veteran Legionaries. It's got a face guard to keep you from bumping into things!"
	icon_state = "leg_vet"
	inhand_icon_state = "owl_mask"
	armor = list("melee" = 40, "bullet" = 25, "laser" = 20, "energy" = 20, "bomb" = 25, "bio" = 20, "rad" = 20, "fire" = 25, "acid" = 20)
	flags_inv = HIDEEARS|HIDEHAIR

/obj/item/clothing/head/helmet/ms13/legion/decanus/recruit
	name = "\improper Legion recruit decanus helmet"
	desc = "A helmet used by recruit decanii of the Legion. It sports some brown feathers to signify lesser leadership."
	icon_state = "leg_decr"
	inhand_icon_state = "owl_mask"
	armor = list("melee" = 30, "bullet" = 35, "laser" = 30, "energy" = 20, "bomb" = 35, "bio" = 20, "rad" = 20, "fire" = 25, "acid" = 20)
	flags_inv = HIDEEARS|HIDEFACE|HIDEHAIR

/obj/item/clothing/head/helmet/ms13/legion/decanus/prime
	name = "\improper Legion prime decanus helmet"
	desc = "A helmet used by prime decanii of the Legion. It's got black feathers to signify a moderate rank."
	icon_state = "leg_decp"
	inhand_icon_state = "owl_mask"
	armor = list("melee" = 35, "bullet" = 40, "laser" = 30, "energy" = 20, "bomb" = 35, "bio" = 20, "rad" = 20, "fire" = 25, "acid" = 20)
	flags_inv = HIDEEARS|HIDEFACE|HIDEHAIR

/obj/item/clothing/head/helmet/ms13/legion/decanus/veteran
	name = "\improper Legion veteran decanus helmet"
	desc = "A helmet used by only the most experienced Decanii of the Legion! It's got striped feathers to signify superior rank."
	icon_state = "leg_decv"
	inhand_icon_state = "owl_mask"
	armor = list("melee" = 45, "bullet" = 40, "laser" = 35, "energy" = 20, "bomb" = 35, "bio" = 20, "rad" = 20, "fire" = 25, "acid" = 20)
	flags_inv = HIDEEARS|HIDEFACE|HIDEHAIR

/obj/item/clothing/head/helmet/ms13/legion/centurion
	name = "\improper Legion centurion helmet"
	desc = "A helmet donned by only the most esteemed Centurions in the Legion. Impressive!"
	icon_state = "leg_cent"
	inhand_icon_state = "owl_mask"
	armor = list("melee" = 60, "bullet" = 40, "laser" = 35, "energy" = 20, "bomb" = 55, "bio" = 20, "rad" = 20, "fire" = 25, "acid" = 20)
	flags_inv = HIDEEARS|HIDEHAIR

/obj/item/clothing/head/helmet/ms13/legion/praetorian
	name = "\improper Legion praetorian helmet"
	desc = "A skillfuly forged helmet for a skill endowed man. Only the highest of guards may wear this."
	icon_state = "leg_prae"
	inhand_icon_state = "owl_mask"
	armor = list("melee" = 65, "bullet" = 50, "laser" = 45, "energy" = 20, "bomb" = 65, "bio" = 20, "rad" = 20, "fire" = 25, "acid" = 20)
	flags_inv = HIDEEARS|HIDEHAIR

/obj/item/clothing/head/helmet/ms13/legion/scout
	name = "\improper Legion scout helmet"
	desc = "A simple helmet, often seen sucking onto the heads of Legionary scouts."
	icon_state = "leg_scout"
	inhand_icon_state = "owl_mask"
	armor = list("melee" = 25, "bullet" = 25, "laser" = 25, "energy" = 20, "bomb" = 35, "bio" = 20, "rad" = 20, "fire" = 25, "acid" = 20)
	flags_inv = HIDEEARS

/obj/item/clothing/head/helmet/ms13/legion/explorer
	name = "\improper Legion explorer cap"
	desc = "A relatively preserved pre-war baseball cap, now pridefully adopted by Legion explorers. Style over Strength."
	icon_state = "leg_exp"
	inhand_icon_state = "owl_mask"
	armor = list("melee" = 15, "bullet" = 10, "laser" = 15, "energy" = 20, "bomb" = 15, "bio" = 20, "rad" = 20, "fire" = 25, "acid" = 20)

/obj/item/clothing/head/helmet/ms13/manny
	name = "\improper Manny Mammoth head"
	desc = "A perfectly preserved pre-war VINTAGE Manny Mammoth head! It smells of crusty pizza."
	icon_state = "mannyhead"
	inhand_icon_state = "mannyhead"

/obj/item/clothing/head/helmet/ms13/combat/bos
	name = "\improper BoS combat helmet"
	desc = "A hard, custom built helmet issued to Brotherhood troops."
	icon_state = "bos_helmet"
	inhand_icon_state = "bos_helmet"
