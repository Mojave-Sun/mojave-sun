//Guns
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
	
/obj/item/gun/ballistic/revolver/fallout/pipe_rev
	name = "pipe revolver"
	desc = "Crudely fashioned makeshift revolver chambered for .45 caliber rounds."
	item_state = "model29"
	icon_state = "m29"
	fire_sound = 'fallout/sound/f13weapons/44mag.ogg'
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/internal/rev45
	extra_damage = 30
	fire_delay = 6

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
	
/obj/item/gun/ballistic/revolver/fallout/38rev
	name = ".38 revolver"
	desc = "A compact .38 revolver. One of the best holdout pistols."
	item_state = "model29"
	icon_state = "m29"
	fire_sound = 'fallout/sound/f13weapons/44mag.ogg'
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/internal/rev38
	extra_damage = 25
	fire_delay = 4

//Magazines
/obj/item/ammo_box/magazine/internal/shot/improvised10mm
	name = "improvised shotgun internal magazine"
	ammo_type = /obj/item/ammo_casing/fallout/c10mm
	icon = 'fallout/icons/objects/ammo.dmi'
	max_ammo = 1

/obj/item/ammo_box/magazine/internal/cylinder/rev44
	name = "44 magnum cylinder"
	ammo_type = /obj/item/ammo_casing/fallout/m44
	icon = 'fallout/icons/objects/ammo.dmi'
	caliber = "44"
	max_ammo = 6

/obj/item/ammo_box/magazine/internal/cylinder/rev357
	name = "357 magnum cylinder"
	ammo_type = /obj/item/ammo_casing/fallout/a357
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

/obj/item/ammo_box/magazine/internal/cylinder/rev45
	name = "pipe revolver cylinder"
	ammo_type = "/obj/item/ammo_casing/fallout/c45"
	icon = 'fallout/icons/objects/ammo.dmi'
	caliber = "45"
	max_ammo = 6
