//Guns
/obj/item/gun/ballistic/automatic/fallout/smg45
	name = ".45 submachine gun"
	desc = "A classic .45 submachine gun that takes an expansive 50 round drum magazine."
	icon_state = "smg45"
	item_state = "tommygun"
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	slot_flags = 0
	mag_type = /obj/item/ammo_box/magazine/smgm45
	fire_sound = 'sound/weapons/gun/smg/shot.ogg'
	can_suppress = FALSE
	fire_delay = 3
	burst_size = 3
	extra_damage = 10
	extra_penetration = 5
	spread = 10
	
/obj/item/gun/ballistic/automatic/fallout/smg22
	name = ".22 submachine gun"
	desc = "A suppressed .22 submachine gun that feeds from a large pan magazine placed on top of the gun. An interesting weapon for interesting people."
	icon_state = "smg22"
	item_state = "tommygun"
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	suppressed = 1
	slot_flags = 0
	mag_type = /obj/item/ammo_box/magazine/smgm22
	fire_sound = 'sound/weapons/gun/smg/shot_suppressed.ogg'
	fire_delay = 3
	burst_size = 3
	extra_damage = 10
	spread = 10
	
/obj/item/gun/ballistic/automatic/fallout/smg38
	name = "handmade submachine gun"
	desc = "A submachine gun made from scratch, supports a 36 round .38 drum magazine. It's poor design makes it incredibly hard to control."
	icon_state = "smg38"
	item_state = "tommygun"
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	can_suppress = FALSE
	slot_flags = 0
	mag_type = /obj/item/ammo_box/magazine/smgm38
	fire_sound = 'sound/weapons/gun/smg/shot_suppressed.ogg'
	fire_delay = 3
	burst_size = 3
	extra_damage = 10
	spread = 14

/obj/item/gun/ballistic/automatic/fallout/smg10mm
	name = "10mm submachine gun"
	desc = "A light, one handed 10mm submachine gun. Decent power in a small package."
	icon_state = "smg10mm"
	item_state = "smg10mm"
	w_class = WEIGHT_CLASS_NORMAL
	slot_flags = 0
	mag_type = /obj/item/ammo_box/magazine/smgm10mm
	fire_sound = 'sound/weapons/gun/smg/shot.ogg'
	burst_size = 3
	fire_delay = 3
	extra_damage = 10
	extra_penetration = 5
	spread = 10

/obj/item/gun/ballistic/automatic/fallout/smg9mm
	name = "9mm submachine gun"
	desc = "A fast firing, old school 9mm submachine gun. Doesn't pack a lot of punch per bullet, but that doesn't matter when you're spitting them out so fast."
	icon_state = "smg9mm"
	item_state = "smg9mm"
	mag_type = /obj/item/ammo_box/magazine/smgm9mm
	fire_sound = 'fallout/sound/f13weapons/greasegun.ogg'
	can_suppress = FALSE
	burst_size = 3
	fire_delay = 3
	extra_damage = 10
	force = 15
	spread = 10

/obj/item/gun/ballistic/automatic/fallout/assaultrifle
	name = "assault rifle"
	desc = "A general purpose, standard automatic assault rifle chambered in 5.56. Commonly used by pre-war US military forces."
	icon_state = "assaultrifle"
	item_state = "fnfal"
	slot_flags = 0
	mag_type = /obj/item/ammo_box/magazine/r20
	fire_sound = 'fallout/sound/f13weapons/assaultrifle_fire.ogg'
	burst_size = 3
	fire_delay = 4
	extra_damage = 15
	extra_penetration = 10
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	spread = 6

/obj/item/gun/ballistic/automatic/fallout/assaultrifle/infiltrator
	name = "Infiltrator"
	desc = "A heavily modified and customized assault rifle with a scope and suppressor as it's most notable additions. Sacrifices a little bit of damage for a little more control."
	icon_state = "infiltrator"
	item_state = "fnfal"
	suppressed = 1
	extra_damage = 15
	extra_penetration = 5
	zoomable = TRUE
	zoom_amt = 10
	zoom_out_amt = 13
	fire_sound = 'sound/weapons/gun/smg/shot_suppressed.ogg'
	spread = 5
	
/obj/item/gun/ballistic/automatic/fallout/assaultrifle/chinese
	name = "Chinese assault rifle"
	desc = "A Chinese made assault rifle chambered in the heavier 7.62 round, packs a bigger punch in exchange for reduced accuracy."
	icon_state = "chinesear"
	mag_type = /obj/item/ammo_box/magazine/ar762
	extra_penetration = 15
	spread = 8
	
/obj/item/gun/ballistic/automatic/fallout/assaultrifle/chinese/handmade
	name = "handmade assault rifle"
	desc = "A decent quality handmade assault rifle chambered in 7.62."
	icon_state = "handmadear"
	extra_penetration = 5

/obj/item/gun/ballistic/automatic/fallout/marksman
	name = "marksman carbine"
	desc = "A 5.56 carbine with a scope attached to help in long range combat. Packs a good punch for 5.56 rounds, but at the cost of a slower rate of fire."
	icon_state = "marksman"
	item_state = "marksman"
	w_class = WEIGHT_CLASS_BULKY
	mag_type = /obj/item/ammo_box/magazine/r20
	fire_sound = 'fallout/sound/f13weapons/marksman_rifle.ogg'
	can_suppress = FALSE
	fire_delay = 5
	burst_size = 1
	extra_damage = 35
	extra_penetration = 10
	zoomable = TRUE
	zoom_amt = 10
	zoom_out_amt = 13
	weapon_weight = WEAPON_HEAVY
	automatic = null
	
/obj/item/gun/ballistic/automatic/fallout/marksman/american
	name = "All-American"
	desc = "A unique and customized marksman carbine. Improved rifling and similar modifications allow for higher damage and an improved paint job allows for higher patriotism."
	icon_state = "allamerican"
	item_state = "marksman"
	extra_damage = 40

/obj/item/gun/ballistic/automatic/fallout/marksman/service
	name = "service rifle"
	desc = "A 5.56 semi-automatic rifle manufactured by and for the NCR."
	icon_state = "service"
	item_state = "servicerifle"
	fire_sound = 'fallout/sound/f13weapons/varmint_rifle.ogg'
	fire_delay = 3
	extra_damage = 25
	extra_penetration = 5
	zoomable = FALSE
	
/obj/item/gun/ballistic/automatic/fallout/marksman/service/survival
	name = "Survivalist rifle"
	desc = "A unique, heavy duty service rifle. Fires slower but packs a much heavier punch. Has definitely seen it's fair share of battle."
	icon_state = "survivalist"
	item_state = "servicerifle"
	fire_delay = 4
	extra_damage = 35
	extra_penetration = 10
	
/obj/item/gun/ballistic/automatic/fallout/marksman/service/police22
	name = ".22 police rifle"
	desc = "A semi-automatic .22 caliber rifle mostly used by pre-war police forces."
	icon_state = "rugerpolice"
	item_state = "servicerifle"
	mag_type = /obj/item/ammo_box/magazine/r22
	fire_sound = 'fallout/sound/f13weapons/varmint_rifle.ogg'
	fire_delay = 4
	extra_damage = 20
	extra_penetration = 0
	
/obj/item/gun/ballistic/automatic/fallout/marksman/service/handmade38
	name = "handmade rifle"
	desc = "A crudely fashioned handmade rifle chambered for .38 rounds."
	icon_state = "hrifle"
	item_state = "servicerifle"
	mag_type = /obj/item/ammo_box/magazine/h38
	fire_sound = 'fallout/sound/f13weapons/varmint_rifle.ogg'
	fire_delay = 6
	extra_damage = 25
	extra_penetration = 5
	
/obj/item/gun/ballistic/automatic/fallout/marksman/sniper
	name = "sniper rifle"
	desc = "A semi-automatic, high powered .308 sniper rifle. Perfect weapon for a determined assassin."
	icon_state = "sniper"
	fire_delay = 5
	extra_damage = 45
	extra_penetration = 10
	mag_type = /obj/item/ammo_box/magazine/r308

//Magazines
/obj/item/ammo_box/magazine/r20
	name = "r20 Magazine (5.56mm)"
	icon = 'fallout/icons/objects/ammo.dmi'
	icon_state = "r20"
	ammo_type = /obj/item/ammo_casing/fallout/a556
	caliber = "a556"
	max_ammo = 20
	multiple_sprites = 2

/obj/item/ammo_box/magazine/smgm10mm
	name = "10mm SMG magazine"
	icon = 'fallout/icons/objects/ammo.dmi'
	icon_state = "smg10mm"
	ammo_type = /obj/item/ammo_casing/fallout/c10mm
	caliber = "10mm"
	max_ammo = 24
	multiple_sprites = 2

/obj/item/ammo_box/magazine/smgm9mm
	name = "9mm SMG Magazine"
	icon = 'fallout/icons/objects/ammo.dmi'
	icon_state = "grease"
	ammo_type = /obj/item/ammo_casing/fallout/c9mm
	caliber = "9mm"
	max_ammo = 30
	multiple_sprites = 2

/obj/item/ammo_box/magazine/smgm45
	name = "50 round drum magazine (.45)"
	icon_state = "drum45"
	ammo_type = /obj/item/ammo_casing/fallout/c45
	caliber = ".45"
	max_ammo = 50
	multiple_sprites = 2

/obj/item/ammo_box/magazine/ar762
	name = "24 round magazine (7.62mm)"
	icon = 'fallout/icons/objects/ammo.dmi'
	icon_state = "r20"
	ammo_type = /obj/item/ammo_casing/fallout/a762
	caliber = "a762"
	max_ammo = 24
	multiple_sprites = 2
	
/obj/item/ammo_box/magazine/smgm22
	name = "60 round magazine (.22)"
	icon_state = "drum45"
	ammo_type = /obj/item/ammo_casing/fallout/c22
	caliber = ".22"
	max_ammo = 60
	multiple_sprites = 2
	
/obj/item/ammo_box/magazine/r22
	name = "10 round magazine (.22)"
	icon_state = "r20"
	ammo_type = /obj/item/ammo_casing/fallout/c22
	caliber = ".22"
	max_ammo = 10
	multiple_sprites = 2
	
/obj/item/ammo_box/magazine/smgm38
	name = "36 round magazine (.38)"
	icon_state = "drum45"
	ammo_type = /obj/item/ammo_casing/fallout/c38
	caliber = "38"
	max_ammo = 36
	multiple_sprites = 2
