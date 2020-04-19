//Fallout 13 related guns and variables to inherent

/obj/item/gun/ballistic/fallout
	name = "generic fallout gun"
	desc = "complain when seeing this"
	icon = 'fallout/icons/objects/guns/ballistics.dmi'
	lefthand_file = 'fallout/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'fallout/icons/mob/inhands/weapons/guns_righthand.dmi'

//Fallout version for shotguns
/obj/item/gun/ballistic/shotgun/fallout
	name = "generic fallout gun"
	desc = "complain when seeing this"
	icon = 'fallout/icons/objects/guns/ballistics.dmi'
	lefthand_file = 'fallout/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'fallout/icons/mob/inhands/weapons/guns_righthand.dmi'
	
//Automatic shotguns
/obj/item/gun/ballistic/shotgun/automatic/fallout
	name = "generic fallout gun"
	desc = "complain when seeing this"
	icon = 'fallout/icons/objects/guns/ballistics.dmi'
	lefthand_file = 'fallout/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'fallout/icons/mob/inhands/weapons/guns_righthand.dmi'

//Revolvers
/obj/item/gun/ballistic/revolver/fallout
	name = "generic fallout gun"
	desc = "complain when seeing this"
	icon = 'fallout/icons/objects/guns/ballistics.dmi'
	lefthand_file = 'fallout/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'fallout/icons/mob/inhands/weapons/guns_righthand.dmi'

//Automatics
/obj/item/gun/ballistic/automatic/fallout
	name = "generic fallout gun"
	desc = "complain when seeing this"
	icon = 'fallout/icons/objects/guns/ballistics.dmi'
	lefthand_file = 'fallout/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'fallout/icons/mob/inhands/weapons/guns_righthand.dmi'
	automatic = 2 //2 decisecond delay
	force = 20
	
//Pistols
/obj/item/gun/ballistic/automatic/pistol/fallout
	name = "generic fallout gun"
	desc = "complain when seeing this"
	icon = 'fallout/icons/objects/guns/ballistics.dmi'
	lefthand_file = 'fallout/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'fallout/icons/mob/inhands/weapons/guns_righthand.dmi'
	
//Bolt-actions
/obj/item/gun/ballistic/rifle/fallout
	name = "generic fallout gun"
	desc = "complain when seeing this"
	icon = 'fallout/icons/objects/guns/ballistics.dmi'
	lefthand_file = 'fallout/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'fallout/icons/mob/inhands/weapons/guns_righthand.dmi'
	internal_magazine = FALSE
	tac_reloads = TRUE

/*
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

 /obj/item/gun/ballistic/automatic/fallout/m72
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
	weapon_weight = WEAPON_HEAVY

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
	weapon_weight = WEAPON_HEAVY */


//Fallout 13
//Magazines
/*
/obj/item/ammo_box/magazine/d12g
	name = "shotgun magazine (12g slugs)"
	desc = "A 12g drum magazine."
	icon = 'fallout/icons/objects/ammo.dmi'
	icon_state = "riotmag"
	ammo_type = /obj/item/ammo_casing/shotgun
	caliber = "shotgun"
	max_ammo = 12
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m2mm
	name = "2mm electromagnetic magazine"
	icon = 'fallout/icons/objects/ammo.dmi'
	icon_state = "2mm"
	ammo_type = /obj/item/ammo_casing/fallout/bullet/c2mm
	caliber = "2mm"
	max_ammo = 20
	multiple_sprites = 2 */
