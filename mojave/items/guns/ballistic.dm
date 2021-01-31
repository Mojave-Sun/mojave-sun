//Mojave Sun related guns and variables to inherent

/obj/item/gun/ballistic/ms13
	name = "generic ms13 gun"
	icon = 'mojave/icons/objects/guns/guns_inventory.dmi'
	lefthand_file = 'mojave/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'mojave/icons/mob/inhands/weapons/guns_righthand.dmi'

//Mojave Sun version for shotguns
/obj/item/gun/ballistic/shotgun/ms13
	name = "generic ms13 gun"
	icon = 'mojave/icons/objects/guns/guns_inventory.dmi'
	lefthand_file = 'mojave/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'mojave/icons/mob/inhands/weapons/guns_righthand.dmi'
	inhand_x_dimension = 32
	inhand_y_dimension = 32
	force = 20
	
//Automatic shotguns
/obj/item/gun/ballistic/shotgun/automatic/ms13
	name = "generic ms13 gun"
	icon = 'mojave/icons/objects/guns/guns_inventory.dmi'
	lefthand_file = 'mojave/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'mojave/icons/mob/inhands/weapons/guns_righthand.dmi'
	inhand_x_dimension = 32
	inhand_y_dimension = 32
	force = 15

//Revolvers
/obj/item/gun/ballistic/revolver/ms13
	name = "generic ms13 gun"
	icon = 'mojave/icons/objects/guns/guns_inventory.dmi'
	lefthand_file = 'mojave/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'mojave/icons/mob/inhands/weapons/guns_righthand.dmi'
	force = 10

//Automatics
/obj/item/gun/ballistic/automatic/ms13
	name = "generic ms13 gun"
	icon = 'mojave/icons/objects/guns/guns_inventory.dmi'
	lefthand_file = 'mojave/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'mojave/icons/mob/inhands/weapons/guns_righthand.dmi'
	automatic = 2 //2 decisecond delay
	force = 15
	
//Pistols
/obj/item/gun/ballistic/automatic/pistol/ms13
	name = "generic ms13 gun"
	desc = "complain when seeing this"
	icon = 'mojave/icons/objects/guns/guns_inventory.dmi'
	lefthand_file = 'mojave/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'mojave/icons/mob/inhands/weapons/guns_righthand.dmi'
	force = 10
	
//Bolt-actions
/obj/item/gun/ballistic/rifle/ms13
	name = "generic ms13 gun"
	icon = 'mojave/icons/objects/guns/guns_inventory.dmi'
	lefthand_file = 'mojave/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'mojave/icons/mob/inhands/weapons/guns_righthand.dmi'
	internal_magazine = FALSE
	tac_reloads = TRUE
	force = 15

//Loaders/Ammo boxes
/obj/item/ammo_box/ms13
	name = "generic ms13 ammo box"
	icon = 'mojave/icons/objects/ammo.dmi'
	multiple_sprites = AMMO_BOX_PER_BULLET

//Magazines
/obj/item/ammo_box/magazine/ms13
	name = "generic ms13 magazine"
	icon = 'mojave/icons/objects/ammo.dmi'
	multiple_sprites = AMMO_BOX_PER_BULLET

/*
/obj/item/gun/ballistic/automatic/ms13/minigun
	name = "M134 Minigun"
	desc = "The M134 is a 7.62×51mm, six-barrel rotary machine gun with a rate of fire between 2,000 and 6,000 rounds per minute."
	icon_state = "arg"
	item_state = "arg"
	mag_type = /obj/item/ammo_box/magazine/tommygunm45
	fire_sound = 'mojave/sound/ms13weapons/10mm_fire_03.ogg'
	fire_delay = 0.2
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/ballistic/automatic/ms13/shotgun/pancor
	name = "Pancor Jackhammer"
	desc = "A select fire automatic shotgun, the pinnacle of turning things into swiss cheese."
	icon_state = "pancor"
	item_state = "cshotgun1"
	fire_sound = 'mojave/sound/ms13weapons/repeater_fire.ogg'
	mag_type = /obj/item/ammo_box/magazine/d12g
	w_class = WEIGHT_CLASS_HUGE
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/ballistic/automatic/ms13/shotgun/caws
	name = "HK CAWS"
	desc = "A select fire automatic shotgun, a modern variant of the Pancor Jackhammer."
	icon_state = "caws"
	item_state = "cshotgun1"
	fire_sound = 'mojave/sound/ms13weapons/repeater_fire.ogg'
	mag_type = /obj/item/ammo_box/magazine/d12g
	fire_delay = 4
	w_class = WEIGHT_CLASS_HUGE
	weapon_weight = WEAPON_HEAVY


/obj/item/gun/ballistic/automatic/ms13/bozar
	name = "Bozar"
	desc = "The ultimate refinement of the sniper's art, the Bozar is a scoped, accurate, light machine gun that will make nice big holes in your enemy. Uses 5.56."
	icon_state = "bozar"
	item_state = "sniper"
	slot_flags = ITEM_SLOT_BACK
	mag_type = /obj/item/ammo_box/magazine/r20
	fire_delay = 2
	w_class = WEIGHT_CLASS_HUGE
	weapon_weight = WEAPON_HEAVY
	fire_sound = 'mojave/sound/ms13weapons/bozar_fire.ogg'
	zoomable = TRUE
	zoom_amt = 10
	zoom_out_amt = 13

 /obj/item/gun/ballistic/automatic/ms13/m72
	name = "M72 Gauss Rifle"
	desc = "The M72 rifle is of German design. It uses an electromagnetic field to propel rounds at tremendous speed... and pierce almost any obstacle. Its range, accuracy and stopping power is almost unparalleled."
	icon = 'mojave/icons/objects/guns/projectile.dmi'
	item_state = "shotgun"
	slot_flags = ITEM_SLOT_BACK
	mag_type = /obj/item/ammo_box/magazine/m2mm
	fire_sound = 'mojave/sound/ms13weapons/gauss_rifle.ogg'
	can_suppress = FALSE
	fire_delay = 3
	zoomable = TRUE
	zoom_amt = 10
	zoom_out_amt = 13
	w_class = WEIGHT_CLASS_HUGE
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/ballistic/automatic/ms13/lsw
	name = "L86A1 LSW"
	desc = "A british variant of the L86 platform. This one was designed as a light support weapon, featuring a bipod and fluted barrel."
	icon_state = "lsw"
	item_state = "l6closedmag"
	slot_flags = 0
	mag_type = /obj/item/ammo_box/magazine/m556
	fire_sound = 'mojave/sound/ms13weapons/assaultrifle_fire.ogg'
	can_suppress = FALSE
	fire_delay = 0.3
	w_class = WEIGHT_CLASS_HUGE
	weapon_weight = WEAPON_HEAVY */


//Mojave Sun
//Magazines
/*
/obj/item/ammo_box/magazine/d12g
	name = "shotgun magazine (12g slugs)"
	desc = "A 12g drum magazine."
	icon = 'mojave/icons/objects/ammo.dmi'
	icon_state = "riotmag"
	ammo_type = /obj/item/ammo_casing/shotgun
	caliber = "shotgun"
	max_ammo = 12
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m2mm
	name = "2mm electromagnetic magazine"
	icon = 'mojave/icons/objects/ammo.dmi'
	icon_state = "2mm"
	ammo_type = /obj/item/ammo_casing/ms13/bullet/c2mm
	caliber = "2mm"
	max_ammo = 20
	multiple_sprites = 2 */
