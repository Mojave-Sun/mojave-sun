//Fallout 13 related guns and variables to inherent

/obj/item/gun/ballistic/fallout
	name = "generic fallout gun"
	desc = "complain when seeing this"
	icon = 'fallout/icons/objects/guns/projectile.dmi'
	lefthand_file = 'fallout/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'fallout/icons/mob/inhands/weapons/guns_righthand.dmi'

//Fallout version for shotguns
/obj/item/gun/ballistic/shotgun/fallout
	name = "generic fallout gun"
	desc = "complain when seeing this"
	icon = 'fallout/icons/objects/guns/projectile.dmi'
	lefthand_file = 'fallout/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'fallout/icons/mob/inhands/weapons/guns_righthand.dmi'

//Revolvers
/obj/item/gun/ballistic/revolver/fallout
	name = "generic fallout gun"
	desc = "complain when seeing this"
	icon = 'fallout/icons/objects/guns/projectile.dmi'
	lefthand_file = 'fallout/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'fallout/icons/mob/inhands/weapons/guns_righthand.dmi'

//Automatics
/obj/item/gun/ballistic/automatic/fallout
	name = "generic fallout gun"
	desc = "complain when seeing this"
	icon = 'fallout/icons/objects/guns/projectile.dmi'
	lefthand_file = 'fallout/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'fallout/icons/mob/inhands/weapons/guns_righthand.dmi'
	automatic = 2 //2 decisecond delay
	force = 20

// Trenchgun //
/obj/item/gun/ballistic/shotgun/fallout/trench
	name = "Winchester M97"
	desc = "A pre-war military grade shotgun with wood furniture and a five-shell capacity underneath plus one in chamber."
	icon_state = "trenchgun"
	item_state = "trenchgun"
	w_class = WEIGHT_CLASS_HUGE
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/ballistic/shotgun/fallout/boltaction/remington
	name = "Remington 700"
	desc = "A sturdy hunting rifle, chambered in 308. and in use before the war."
	icon_state = "308"
	item_state = "rifle"
	mag_type = /obj/item/ammo_box/magazine/internal/boltaction
	fire_sound = 'fallout/sound/f13weapons/hunting_rifle.ogg'
	w_class = WEIGHT_CLASS_HUGE
	weapon_weight = WEAPON_HEAVY
	extra_damage = 40

/obj/item/gun/ballistic/shotgun/fallout/boltaction/remington/scoped
	name = "Scoped Remington 700"
	desc = "A sturdy hunting rifle, chambered in 308. and in use before the war. This one has a 8x scope mounted to it."
	icon_state = "rifle308_scope"
	item_state = "rifle"
	mag_type = /obj/item/ammo_box/magazine/internal/boltaction
	fire_sound = 'fallout/sound/f13weapons/hunting_rifle.ogg'
	fire_delay = 3
	zoomable = TRUE
	zoom_amt = 10
	zoom_out_amt = 13


/obj/item/gun/ballistic/shotgun/fallout/automatic/hunting
	name = "Colt Rangemaster"
	desc = "A semi automatic Colt Rangemaster semi-automatic rifle chambered in .308."
	icon_state = "rangemaster"
	item_state = "fnfal"
	fire_delay = 3
	mag_type = /obj/item/ammo_box/magazine/internal/boltaction/rangemaster
	fire_sound = 'fallout/sound/f13weapons/hunting_rifle.ogg'
	w_class = WEIGHT_CLASS_HUGE
	weapon_weight = WEAPON_HEAVY
	extra_damage = 40

//Single Shot
obj/item/gun/ballistic/revolver/fallout/caravan_shotgun
	name = "caravan shotgun"
	desc = "An common over under double barreled shotgun."
	icon_state = "caravan_shotgun"
	item_state = "dshotgun1"
	force = 25
	mag_type = /obj/item/ammo_box/magazine/internal/shot/dual
	fire_sound = 'fallout/sound/f13weapons/caravan_shotgun.ogg'
	w_class = WEIGHT_CLASS_HUGE
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/ballistic/revolver/fallout/single_shotgun
	name = "single shotgun"
	desc = "A dirt cheap single shot shotgun."
	icon_state = "single_shotgun"
	item_state = "singleshot"
	force = 15
	mag_type = /obj/item/ammo_box/magazine/internal/shot/improvised
	fire_sound = 'fallout/sound/f13weapons/caravan_shotgun.ogg'
	w_class = WEIGHT_CLASS_HUGE
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/ballistic/revolver/fallout/zipgun
	name = "zipgun"
	desc = "A crudely made single shot 10mm pistol."
	icon_state = "zipgun"
	item_state = "gun"
	fire_sound = 'sound/weapons/gun/pistol/shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/internal/shot/improvised10mm

/obj/item/gun/ballistic/revolver/fallout/pipe_rifle
	name = "pipe rifle"
	desc = "A crudely made single shot 10mm rifle."
	icon_state = "pipe_rifle"
	item_state = "improvshotgun"
	fire_sound = 'sound/weapons/gun/rifle/shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/internal/shot/improvised10mm
	w_class = WEIGHT_CLASS_HUGE
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/ballistic/revolver/fallout/m29
	name = "\improper S&W Model 29"
	desc = "Being that this is the most powerful handgun in the world, and can blow your head clean-off, you've got to ask yourself one question. Do I feel lucky? Well, do ya punk? "
	item_state = "model29"
	icon_state = "m29"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev44
	fire_sound = 'fallout/sound/f13weapons/44mag.ogg'
	w_class = WEIGHT_CLASS_NORMAL
	fire_delay = 3
	extra_damage = 30
	extra_penetration = 10

/obj/item/gun/ballistic/revolver/fallout/m29/alt
	item_state = "44magnum"
	icon_state = "mysterious_m29"
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/gun/ballistic/revolver/fallout/m29/scoped
	name = "\improper Scoped S&W Model 29"
	icon_state = "scoped_m29"
	desc = "Being that this is the most powerful handgun in the world, and can blow your head clean-off, you've got to ask yourself one question. Do I feel lucky? Well, do ya punk? Now with a scope!"
	zoomable = TRUE
	zoom_amt = 10
	zoom_out_amt = 13
	fire_delay = 4
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/gun/ballistic/revolver/colt357
	name = "\improper .357 Magnum revolver"
	desc = "A relatively primitive .357 magnum revolver."
	item_state = "colt357"
	icon_state = "colt357"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev357
	w_class = WEIGHT_CLASS_NORMAL
	fire_delay = 5
	extra_damage = 30

/obj/item/gun/ballistic/revolver/fallout/needler
	name = "needler pistol"
	desc = "You suspect this Bringham needler pistol was once used in scientific field studies. It uses small hard-plastic hypodermic darts as ammo. "
	icon_state = "needler"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/revneedler
	fire_sound = 'sound/weapons/gun/smg/shot_suppressed.ogg'
	w_class = WEIGHT_CLASS_SMALL

/obj/item/gun/ballistic/revolver/fallout/colt6250
	name = "colt 6250"
	desc = "The Colt 6520 10mm autoloading pistol is a highly durable and efficient weapon developed by Colt Firearms prior to the Great War.It proved to be resistant to the desert-like conditions of the post-nuclear wasteland and is a fine example of workmanship and quality construction."
	icon_state = "colt6250"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev6250
	fire_sound = 'fallout/sound/f13weapons/10mm_fire_02.ogg'
	w_class = WEIGHT_CLASS_NORMAL
	fire_delay = 3
	extra_damage = 30
	extra_penetration = 10

/obj/item/gun/ballistic/revolver/fallout/sequoia
	name = "Ranger Sequoia"
	desc = "This large, double-action revolver is a rare, scopeless variant of the hunting revolver. It is used exclusively by the New California Republic Rangers. This revolver features a dark finish with intricate engravings etched all around the weapon. Engraved along the barrel are the words 'For Honorable Service,' and 'Against All Tyrants.' The hand grip bears the symbol of the NCR Rangers, a bear, and a brass plate attached to the bottom that reads '20 Years.' "
	icon_state = "sequoia"
	item_state = "sequoia"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev4570
	fire_sound = 'fallout/sound/f13weapons/sequoia.ogg'
	w_class = WEIGHT_CLASS_NORMAL
	fire_delay = 4
	extra_damage = 45

/obj/item/gun/ballistic/revolver/fallout/sequoia/scoped
	name = "Magnum Research BFR"
	desc = "A scoped double action revolver chambered in 45-70."
	icon_state = "hunting_revolver"
	zoomable = TRUE
	zoom_amt = 10
	zoom_out_amt = 13
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/gun/ballistic/automatic/fallout/pistol/n99
	name = "N99 pistol"
	desc = "A pre-war large-framed, gas-operated advanced 10mm pistol."
	icon_state = "n99"
	mag_type = /obj/item/ammo_box/magazine/m10mm_adv
	fire_sound = 'fallout/sound/f13weapons/10mm_fire_02.ogg'
	w_class = WEIGHT_CLASS_NORMAL
	fire_delay = 2
	extra_damage = 20
	extra_penetration = 10

/obj/item/gun/ballistic/automatic/fallout/pistol/ninemil
	name = "9mm pistol"
	desc = "A mass produced pre-war Browning Hi-power 9mm pistol."
	icon_state = "ninemil"
	mag_type = /obj/item/ammo_box/magazine/m9mm
	w_class = WEIGHT_CLASS_NORMAL
	fire_delay = 2
	extra_damage = 20
	extra_penetration = 5

/obj/item/gun/ballistic/automatic/fallout/mini_uzi
	name = "\improper Type U3 Uzi"
	desc = "A lightweight, burst-fire submachine gun, for when you really want someone dead. Uses 9mm rounds."
	icon_state = "mini-uzi"
	mag_type = /obj/item/ammo_box/magazine/uzim9mm
	burst_size = 2
	extra_damage = 20
	extra_penetration = 5
	force = 15

/obj/item/gun/ballistic/automatic/fallout/tommygun
	name = "\improper Thompson SMG"
	desc = "Based on the classic 'Chicago Typewriter'."
	icon_state = "tommygun"
	item_state = "tommygun"
	w_class = WEIGHT_CLASS_HUGE
	weapon_weight = WEAPON_HEAVY
	slot_flags = 0
	mag_type = /obj/item/ammo_box/magazine/tommygunm45
	fire_sound = 'sound/weapons/gun/smg/shot.ogg'
	can_suppress = FALSE
	fire_delay = 2
	burst_size = 3
	extra_damage = 25

/obj/item/gun/ballistic/automatic/fallout/smg10mm
	name = "10mm submachine gun"
	desc = "A select fire open bolt 10mm submachine gun. The serial number and manufactuer markings have been scratched off."
	icon_state = "smg10mm"
	item_state = "smg10mm"
	w_class = WEIGHT_CLASS_NORMAL
	slot_flags = 0
	mag_type = /obj/item/ammo_box/magazine/m10mm_auto
	fire_sound = 'sound/weapons/gun/smg/shot.ogg'
	burst_size = 3
	fire_delay = 3
	extra_damage = 20
	extra_penetration = 10

/obj/item/gun/ballistic/automatic/fallout/assault_rifle
	name = "R91 assault rifle"
	desc = "A standard R91 combat rifle, out of use around the time of the Great War."
	icon_state = "assault_rifle"
	item_state = "fnfal"
	slot_flags = 0
	mag_type = /obj/item/ammo_box/magazine/r20
	fire_sound = 'fallout/sound/f13weapons/assaultrifle_fire.ogg'
	burst_size = 3
	fire_delay = 3
	extra_damage = 20
	extra_penetration = 20
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/ballistic/automatic/fallout/assault_rifle/infiltrator
	name = "R91 infiltrator"
	desc = "A customized R91 assault rifle, with a scope, integrated suppressor, cut down stock and polymer furniture."
	icon_state = "infiltrator"
	item_state = "fnfal"
	suppressed = 1
	fire_delay = 3
	extra_damage = 20
	extra_penetration = 10
	zoomable = TRUE
	zoom_amt = 10
	zoom_out_amt = 13
	fire_sound = 'sound/weapons/gun/smg/shot_suppressed.ogg'
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/ballistic/automatic/fallout/marksman
	name = "R94 marksman carbine"
	desc = "A R94 marksman carbine, chambered in 5.56x45. Seen heavy usage in pre-war conflicts. This one isn't a select fire variant."
	icon_state = "marksman_rifle"
	item_state = "marksman"
	w_class = WEIGHT_CLASS_HUGE
	mag_type = /obj/item/ammo_box/magazine/r20
	fire_sound = 'fallout/sound/f13weapons/marksman_rifle.ogg'
	can_suppress = FALSE
	fire_delay = 6
	burst_size = 1
	extra_damage = 40
	extra_penetration = 5
	zoomable = TRUE
	zoom_amt = 10
	zoom_out_amt = 13
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/ballistic/automatic/fallout/marksman/servicerifle
	name = "R81 service rifle"
	desc = "A 5.56x45 semi-automatic service rifle manufcatured by the NCR and issued to all combat personnel."
	icon_state = "service_rifle"
	item_state = "servicerifle"
	fire_sound = 'fallout/sound/f13weapons/varmint_rifle.ogg'
	fire_delay = 3
	extra_damage = 25
	extra_penetration = 5
	mag_type = /obj/item/ammo_box/magazine/r20
	zoomable = FALSE
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/ballistic/automatic/fallout/marksman/servicerifle/varmint
	name = "Varmint Rifle"
	desc = "A low powered 5.56, easy to use rifle."
	icon_state = "varmint"
	item_state = "varmintrifle"
	fire_delay = 8
	extra_damage = 30
	mag_type = /obj/item/ammo_box/magazine/r10

/obj/item/gun/ballistic/automatic/fallout/marksman/servicerifle/varmint/ratslayer
	name = "ratslayer"
	desc = "A modified Varmint Rifle with better stopping power, a scope, and suppressor. Oh, don't forget the sick paint job."
	item_state = "ratslayer"
	extra_damage = 35
	zoomable = TRUE
	zoom_amt = 10
	zoom_out_amt = 13
	fire_sound = 'sound/weapons/gun/smg/shot_suppressed.ogg'

/obj/item/gun/ballistic/automatic/fallout/minigun
	name = "M134 Minigun"
	desc = "The M134 is a 7.62×51mm, six-barrel rotary machine gun with a rate of fire between 2,000 and 6,000 rounds per minute."
	icon_state = "arg"
	item_state = "arg"
	mag_type = /obj/item/ammo_box/magazine/tommygunm45
	fire_sound = 'fallout/sound/f13weapons/10mm_fire_03.ogg'
	fire_delay = 0.2
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/ballistic/automatic/fallout/shotgun/pancor
	name = "Pancor Jackhammer"
	desc = "A select fire automatic shotgun, the pinnacle of turning things into swiss cheese."
	icon_state = "pancor"
	item_state = "cshotgun1"
	fire_sound = 'fallout/sound/f13weapons/repeater_fire.ogg'
	mag_type = /obj/item/ammo_box/magazine/d12g
	w_class = WEIGHT_CLASS_HUGE
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/ballistic/automatic/fallout/shotgun/caws
	name = "HK CAWS"
	desc = "A select fire automatic shotgun, a modern variant of the Pancor Jackhammer."
	icon_state = "caws"
	item_state = "cshotgun1"
	fire_sound = 'fallout/sound/f13weapons/repeater_fire.ogg'
	mag_type = /obj/item/ammo_box/magazine/d12g
	fire_delay = 4
	w_class = WEIGHT_CLASS_HUGE
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/ballistic/automatic/fallout/greasegun
	name = "9mm submachine gun"
	desc = "A mass-produced 9mm sub machine gun. Slow fire rate means less waste of ammo and controllable bursts."
	icon_state = "grease_gun"
	item_state = "smg9mm"
	mag_type = /obj/item/ammo_box/magazine/greasegun
	fire_sound = 'fallout/sound/f13weapons/greasegun.ogg'
	can_suppress = FALSE
	burst_size = 3
	fire_delay = 2
	extra_damage = 20
	extra_penetration = 5
	force = 15

/obj/item/gun/ballistic/automatic/fallout/bozar
	name = "Bozar"
	desc = "The ultimate refinement of the sniper's art, the Bozar is a scoped, accurate, light machine gun that will make nice big holes in your enemy. Uses 5.56."
	icon_state = "bozar"
	item_state = "sniper"
	slot_flags = ITEM_SLOT_BACK
	mag_type = /obj/item/ammo_box/magazine/r20
	fire_delay = 2
	w_class = WEIGHT_CLASS_HUGE
	weapon_weight = WEAPON_HEAVY
	fire_sound = 'fallout/sound/f13weapons/bozar_fire.ogg'
	zoomable = TRUE
	zoom_amt = 10
	zoom_out_amt = 13

/* /obj/item/gun/ballistic/automatic/fallout/m72
	name = "M72 Gauss Rifle"
	desc = "The M72 rifle is of German design. It uses an electromagnetic field to propel rounds at tremendous speed... and pierce almost any obstacle. Its range, accuracy and stopping power is almost unparalleled."
	icon = 'fallout/icons/objects/guns/projectile.dmi'
	item_state = "shotgun"
	slot_flags = ITEM_SLOT_BACK
	mag_type = /obj/item/ammo_box/magazine/m2mm
	fire_sound = 'fallout/sound/f13weapons/gauss_rifle.ogg'
	can_suppress = FALSE
	fire_delay = 3
	zoomable = TRUE
	zoom_amt = 10
	zoom_out_amt = 13
	w_class = WEIGHT_CLASS_HUGE
	weapon_weight = WEAPON_HEAVY */

/obj/item/gun/ballistic/automatic/fallout/lsw
	name = "L86A1 LSW"
	desc = "A british variant of the L86 platform. This one was designed as a light support weapon, featuring a bipod and fluted barrel."
	icon_state = "lsw"
	item_state = "l6closedmag"
	slot_flags = 0
	mag_type = /obj/item/ammo_box/magazine/m556
	fire_sound = 'fallout/sound/f13weapons/assaultrifle_fire.ogg'
	can_suppress = FALSE
	fire_delay = 0.3
	w_class = WEIGHT_CLASS_HUGE
	weapon_weight = WEAPON_HEAVY


//Fallout 13
//Magazines

/obj/item/ammo_box/magazine/internal/boltaction/rangemaster
	icon = 'fallout/icons/objects/ammo.dmi'
	max_ammo = 10
	multiload = 1

/obj/item/ammo_box/magazine/internal/shot/improvised10mm
	name = "improvised shotgun internal magazine"
	ammo_type = /obj/item/ammo_casing/fallout/c10mm
	icon = 'fallout/icons/objects/ammo.dmi'
	max_ammo = 1

/obj/item/ammo_box/magazine/r20
	name = "r20 Magazine (5.56mm)"
	icon = 'fallout/icons/objects/ammo.dmi'
	icon_state = "r20"
	ammo_type = /obj/item/ammo_casing/fallout/a556
	caliber = "a556"
	max_ammo = 20
	multiple_sprites = 2

/obj/item/ammo_box/magazine/r10
	name = "r10 Magazine (5.56mm)"
	icon = 'fallout/icons/objects/ammo.dmi'
	icon_state = "r10"
	ammo_type = /obj/item/ammo_casing/fallout/a556
	caliber = "a556"
	max_ammo = 10
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m10mm_auto
	name = "Advanced SMG Magazine (10mm)"
	icon = 'fallout/icons/objects/ammo.dmi'
	icon_state = "smg10mm"
	ammo_type = /obj/item/ammo_casing/fallout/c10mm
	caliber = "10mm"
	max_ammo = 24
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m10mm_adv
	name = "Advanced 10mm Pistol Magazine (10mm)"
	icon = 'fallout/icons/objects/ammo.dmi'
	icon_state = "10mmadv"
	ammo_type = /obj/item/ammo_casing/fallout/c10mm
	caliber = "10mm"
	max_ammo = 12
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m9mm
	name = "9mm Pistol Magazine (9mm)"
	icon = 'fallout/icons/objects/ammo.dmi'
	icon_state = "9mmp"
	ammo_type = /obj/item/ammo_casing/fallout/c9mm
	caliber = "9mm"
	max_ammo = 10
	multiple_sprites = 2

/obj/item/ammo_box/magazine/greasegun
	name = "9mm SMG Magazine (9mm)"
	icon = 'fallout/icons/objects/ammo.dmi'
	icon_state = "grease"
	ammo_type = /obj/item/ammo_casing/fallout/c9mm
	caliber = "9mm"
	max_ammo = 30
	multiple_sprites = 2

/obj/item/ammo_box/magazine/d12g
	name = "shotgun magazine (12g slugs)"
	desc = "A 12g drum magazine."
	icon = 'fallout/icons/objects/ammo.dmi'
	icon_state = "riotmag"
	ammo_type = /obj/item/ammo_casing/shotgun
	caliber = "shotgun"
	max_ammo = 12
	multiple_sprites = 2

/* /obj/item/ammo_box/magazine/m2mm
	name = "2mm electromagnetic magazine"
	icon = 'fallout/icons/objects/ammo.dmi'
	icon_state = "2mm"
	ammo_type = /obj/item/ammo_casing/fallout/bullet/c2mm
	caliber = "2mm"
	max_ammo = 20
	multiple_sprites = 2 */

/obj/item/ammo_box/magazine/internal/cylinder/rev44
	name = "44 magnum cylinder"
	ammo_type = /obj/item/ammo_casing/fallout/m44
	icon = 'fallout/icons/objects/ammo.dmi'
	caliber = "44"
	max_ammo = 6

/obj/item/ammo_box/magazine/internal/cylinder/rev357
	name = "357 magnum cylinder"
	ammo_type = /obj/item/ammo_casing/a357
	caliber = "357"
	max_ammo = 6

/obj/item/ammo_box/magazine/internal/cylinder/rev6250
	name = "6250 10mm cylinder"
	ammo_type = /obj/item/ammo_casing/fallout/c10mm
	icon = 'fallout/icons/objects/ammo.dmi'
	caliber = "10mm"
	max_ammo = 6

/obj/item/ammo_box/magazine/internal/cylinder/rev4570
	name = "4570 cylinder"
	ammo_type = /obj/item/ammo_casing/fallout/c4570
	icon = 'fallout/icons/objects/ammo.dmi'
	caliber = "4570"
	max_ammo = 6

/obj/item/ammo_box/magazine/internal/cylinder/revneedler
	name = "needler internal mag"
	ammo_type = /obj/item/ammo_casing/fallout/needle
	icon = 'fallout/icons/objects/ammo.dmi'
	caliber = "needle"
	max_ammo = 5

/obj/item/ammo_box/magazine/internal/cylinder/rev38
	name = "detective revolver cylinder"
	ammo_type = /obj/item/ammo_casing/fallout/c38
	icon = 'fallout/icons/objects/ammo.dmi'
	caliber = "38"
	max_ammo = 6

//Ammo Casings

/obj/item/ammo_casing/fallout
	click_cooldown_override = 1

/obj/item/ammo_casing/fallout/c22
	name = ".22 bullet casing"
	desc = "A .22 bullet casing."
	caliber = ".22"
	projectile_type = /obj/projectile/bullet/fallout/c22

/obj/item/ammo_casing/fallout/c45
	name = ".45 bullet casing"
	desc = "A .45 bullet casing."
	caliber = ".45"
	projectile_type = /obj/projectile/bullet/fallout/c45

/obj/item/ammo_casing/fallout/c9mm
	name = "9mm bullet casing"
	desc = "A 9mm bullet casing."
	caliber = "9mm"
	projectile_type = /obj/projectile/bullet/fallout/c9mm

/obj/item/ammo_casing/fallout/c10mm
	name = "10mm bullet casing"
	desc = "A 10mm bullet casing."
	caliber = "10mm"
	projectile_type = /obj/projectile/bullet/fallout/c10mm


/obj/item/ammo_casing/fallout/m44
	desc = "A 44 Magnum bullet casing."
	caliber = "44"
	projectile_type = /obj/projectile/bullet/fallout/m44

/obj/item/ammo_casing/fallout/c38
	name = ".38 bullet casing"
	desc = "A .38 bullet casing."
	caliber = "38"
	projectile_type = /obj/projectile/bullet/fallout/c38

/obj/item/ammo_casing/fallout/a556
	desc = "A 5.56mm bullet casing."
	caliber = "a556"
	projectile_type = /obj/projectile/bullet/fallout/a556

/obj/item/ammo_casing/fallout/a357
	name = "357 bullet casing"
	desc = "A .357 bullet casing."
	caliber = "357"
	projectile_type = /obj/projectile/bullet/fallout/a357

/obj/item/ammo_casing/fallout/a762/lp
	name = "7.62 lowpower bullet casing"
	desc = "A 7.62 bullet casing."
	icon_state = "762-casing"
	caliber = "a762"
	projectile_type = /obj/projectile/bullet/fallout/a762


/obj/item/ammo_casing/fallout/a762
	name = "7.62 bullet casing"
	desc = "A 7.62 bullet casing."
	icon_state = "762-casing"
	caliber = "a762"
	projectile_type = /obj/projectile/bullet/fallout/a762m

/obj/item/ammo_casing/fallout/a308
	name = ".308 bullet casing"
	desc = "A .308 bullet casing."
	icon_state = "762-casing"
	caliber = "a762"
	projectile_type = /obj/projectile/bullet/fallout/a308

/obj/item/ammo_casing/fallout/needle
	name = "A needler round."
	desc = "A dart for use in needler pistols."
	caliber = "needle"
	projectile_type = /obj/projectile/bullet/fallout/needle


/obj/item/ammo_casing/fallout/c4570
	name = ".45-70 bullet casing"
	desc = "A .45-70 bullet casing."
	caliber = "4570"
	projectile_type = /obj/projectile/bullet/fallout/c4570

/*/obj/item/ammo_casing/c4570SP
	name = ".45 LC bullet casing"
	desc = "A .45 Long Colt bullet casing."
	caliber = "4570"
	projectile_type = /obj/projectile/bullet/fallout/c4570SP*/

//Heavy
/obj/item/ammo_casing/fallout/a50AE
	name = ".50AE bullet casing"
	desc = "A .50AE bullet casing."
	caliber = ".50"
	projectile_type = /obj/projectile/bullet/fallout/a50AE

/obj/item/ammo_casing/fallout/a50MG
	name = ".50MG bullet casing"
	desc = "A .50MG bullet casing."
	caliber = "a50MG"
	icon_state = "50mg2"
	projectile_type = /obj/projectile/bullet/fallout/a50MG

//Projectiles

/obj/projectile/bullet/fallout
	speed = 0.2 //Vanilla tg is 0.8

/obj/projectile/bullet/fallout/c45
	damage = 0
	armour_penetration = 0

/obj/projectile/bullet/fallout/c22
	damage = 0
	armour_penetration = 0

/obj/projectile/bullet/fallout/m44
	damage = 0
	armour_penetration = 0

/obj/projectile/bullet/fallout/c9mm
	damage = 0
	armour_penetration = 0

/obj/projectile/bullet/fallout/c10mm
	damage = 0
	armour_penetration = 0

/obj/projectile/bullet/fallout/needle
	name = "needle"
	icon_state = "cbbolt"
	damage = 30
	armour_penetration = 30

/obj/projectile/bullet/fallout/c38
	damage = 0
	armour_penetration = 0

/obj/projectile/bullet/fallout/a762
	damage = 0
	armour_penetration = 0

/obj/projectile/bullet/fallout/a762m
	damage = 0
	armour_penetration = 10

/obj/projectile/bullet/fallout/a308
	damage = 0
	armour_penetration = 20

/obj/projectile/bullet/fallout/a556
	damage = 0
	armour_penetration = 0

/obj/projectile/bullet/fallout/c4570
	damage = 0
	armour_penetration = 0

/*/obj/projectile/bullet/fallout/c4570SP
	damage = 45
	armour_penetration = 20*/

/obj/projectile/bullet/fallout/a357
	damage = 0
	armour_penetration = 0

/obj/projectile/bullet/fallout/a50AE
	damage = 0
	armour_penetration = 0

/obj/projectile/bullet/fallout/a50MG
	damage = 0
	armour_penetration = 0