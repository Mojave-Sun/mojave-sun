// Guns
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
	mag_type = /obj/item/ammo_box/magazine/internal/boltaction/fallout
	fire_sound = 'fallout/sound/f13weapons/hunting_rifle.ogg'
	w_class = WEIGHT_CLASS_HUGE
	weapon_weight = WEAPON_HEAVY
	extra_damage = 40

/obj/item/gun/ballistic/shotgun/fallout/boltaction/remington/scoped
	name = "Scoped Remington 700"
	desc = "A sturdy hunting rifle, chambered in 308. and in use before the war. This one has a 8x scope mounted to it."
	icon_state = "rifle308_scope"
	item_state = "rifle"
	fire_delay = 3
	zoomable = TRUE
	zoom_amt = 10
	zoom_out_amt = 13

/obj/item/gun/ballistic/shotgun/automatic/fallout/hunting/trail
	name = "trail carbine"
	desc = "A lever action rifle chambered in .44 Magnum."
	icon_state = "trailcarbine"
	item_state = "trailcarbine"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/tube44
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	fire_delay = 4
	extra_damage = 40
	extra_penetration = 10

/obj/item/gun/ballistic/shotgun/automatic/fallout/hunting/trail/scoped
	name = "scoped trail carbine"
	desc = "A lever action rifle chambered in .44 Magnum."
	icon_state = "scopedtrailcarbine"
	item_state = "scopedtrailcarbine"
	zoomable = TRUE
	zoom_amt = 10
	zoom_out_amt = 13
	fire_delay = 6

/obj/item/gun/ballistic/shotgun/automatic/fallout/hunting/cowboy
	name = "cowboy repeater"
	desc = "A lever action rifle chambered in .357 Magnum. Smells vaguely of whiskey and cigarettes."
	icon_state = "cowboyrepeater"
	item_state = "cowboyrepeater"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/tube357
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	fire_delay = 6
	extra_damage = 40

/obj/item/gun/ballistic/shotgun/automatic/fallout/hunting/cowboy/scoped
	name = "scoped cowboy repeater"
	desc = "A lever action rifle chambered in .357 Magnum. Smells vaguely of brooding veterans and cigarettes."
	icon_state = "scopedcowboyrepeater"
	item_state = "scopedcowboyrepeater"
	zoomable = TRUE
	zoom_amt = 10
	zoom_out_amt = 13
	fire_delay = 8

/obj/item/gun/ballistic/shotgun/automatic/fallout/hunting/brush
	name = "brush gun"
	desc = "A short lever action rifle chambered in the heavy 45-70 round. Issued to NCR Veteran Rangers in the absence of heavier weaponry."
	icon_state = "brushgun"
	item_state = "brushgun"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/tube4570
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	fire_delay = 6
	extra_damage = 50
	extra_penetration = 10


/obj/item/gun/ballistic/shotgun/automatic/fallout/hunting/brush/scoped
	name = "scoped brush gun"
	desc = "A short lever action rifle chambered in the heavy 45-70 round. Issued to NCR Veteran Rangers in the absence of heavier weaponry."
	icon_state = "scopedbrushgun"
	item_state = "scopedbrushgun"
	zoomable = TRUE
	zoom_amt = 10
	zoom_out_amt = 13
	fire_delay = 8
	extra_damage = 50
	extra_penetration = 15


/obj/item/gun/ballistic/shotgun/automatic/fallout/hunting
	name = "Colt Rangemaster"
	desc = "A semi automatic Colt Rangemaster semi-automatic rifle chambered in .308."
	icon_state = "rangemaster"
	item_state = "fnfal"
	fire_delay = 3
	mag_type = /obj/item/ammo_box/magazine/internal/boltaction/fallout/rangemaster
	fire_sound = 'fallout/sound/f13weapons/hunting_rifle.ogg'
	w_class = WEIGHT_CLASS_HUGE
	weapon_weight = WEAPON_HEAVY
	extra_damage = 40

//Magazines
/obj/item/ammo_box/magazine/internal/boltaction/fallout
	max_ammo = 5
	multiload = 1
	caliber = "a308"

/obj/item/ammo_box/magazine/internal/boltaction/fallout/rangemaster
	icon = 'fallout/icons/objects/ammo.dmi'
	max_ammo = 10
	caliber = "a762"

/obj/item/ammo_box/magazine/internal/shot/tube4570
	name = "4570 internal tube magazine"
	ammo_type = /obj/item/ammo_casing/fallout/c4570
	caliber = "4570"
	max_ammo = 6

/obj/item/ammo_box/magazine/internal/shot/tube44
	name = ".44 magnum internal tube magazine"
	ammo_type = /obj/item/ammo_casing/fallout/m44
	caliber = "44"
	max_ammo = 8

/obj/item/ammo_box/magazine/internal/shot/tube357
	name = ".357 magnum internal tube magazine"
	ammo_type = /obj/item/ammo_casing/fallout/a357
	caliber = "357"
	max_ammo = 7
