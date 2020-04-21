// Guns
/obj/item/gun/ballistic/shotgun/fallout/lever
	name = "lever action shotgun"
	desc = "A trusty lever action shotgun with a tube supporting a maximum of five shells and a reinforced grip for bashing in heads."
	icon_state = "levershot"
	item_state = "trail"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/lever
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	force = 25

/obj/item/gun/ballistic/shotgun/fallout/huntingshot
	name = "hunting shotgun"
	desc = "A pre-war pump action shotgun with an extended tube capable of holding eight shells and a bulky stock that excels in melee combat."
	icon_state = "huntingshot"
	item_state = "trail"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/huntingshot
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	force = 30

/obj/item/gun/ballistic/shotgun/automatic/fallout/trail
	name = "trail carbine"
	desc = "A lever action repeater chambered for .44 Magnum. An overall improved design allows it to fire just a bit faster than other repeaters with a higher capacity to boot."
	icon_state = "trail"
	item_state = "trail"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/tube44
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	fire_delay = 5
	extra_damage = 40
	extra_penetration = 10

/obj/item/gun/ballistic/shotgun/automatic/fallout/cowboy
	name = "cowboy repeater"
	desc = "A classic lever action repeater chambered for .357."
	icon_state = "cowboy"
	item_state = "cowboy"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/tube357
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	fire_delay = 6
	extra_damage = 35
	extra_penetration = 10

/obj/item/gun/ballistic/shotgun/automatic/fallout/brush
	name = "brush gun"
	desc = "A lever action repeater chambered for the deadly .45-70 cartridge. Can't carry a lot of rounds and doesn't fire very fast, but with so much damage does that really matter?"
	icon_state = "brush"
	item_state = "brush"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/tube4570
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	fire_delay = 6
	extra_damage = 55
	extra_penetration = 10

/obj/item/gun/ballistic/shotgun/automatic/fallout/battle
	name = "battle rifle"
	desc = "A very old but very reliable semi-automatic, clip fed rifle from long before the war. Chambered for .308."
	icon_state = "battler"
	item_state = "brush"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/battler
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	fire_delay = 4
	extra_damage = 40
	extra_penetration = 15

/obj/item/gun/ballistic/shotgun/automatic/fallout/battle/sks
	name = "SKS"
	desc = "An old European semi-automatic rifle chambered for 7.62 rounds and normally fed from 10 round stripper clips."
	icon_state = "sks"
	item_state = "brush"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/sks
	extra_damage = 30
	extra_penetration = 10


/obj/item/gun/ballistic/shotgun/automatic/fallout/battle/sks/scoped
	name = "Scoped SKS"
	desc = "An SKS with a scope attached and some improved rifling for better penetration."
	icon_state = "scoped_sks"
	item_state = "brush"
	extra_penetration = 15
	zoomable = TRUE
	zoom_amt = 10
	zoom_out_amt = 13

//Magazines
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

/obj/item/ammo_box/magazine/internal/shot/battler
	name = "battle rifle internal magazine (.308)"
	ammo_type = /obj/item/ammo_casing/fallout/a308
	caliber = "a308"
	max_ammo = 8

/obj/item/ammo_box/magazine/internal/shot/sks
	name = "SKS internal magazine (7.62)"
	ammo_type = /obj/item/ammo_casing/fallout/a762
	caliber = "a762"
	max_ammo = 10

/obj/item/ammo_box/magazine/internal/shot/lever
	name = "lever action shotgun internal tube magazine"
	ammo_type = /obj/item/ammo_casing/shotgun/buckshot
	max_ammo = 5

/obj/item/ammo_box/magazine/internal/shot/huntingshot
	name = "hunting shotgun internal tube magazine"
	ammo_type = /obj/item/ammo_casing/shotgun/buckshot
	max_ammo = 8

//Loaders
/obj/item/ammo_box/tube4570
	name = ".45-70 speed loader tube"
	icon = 'fallout/icons/objects/ammo.dmi'
	icon_state = "10mmadv"
	ammo_type = /obj/item/ammo_casing/fallout/c4570
	caliber = "4570"
	max_ammo = 6
	multiple_sprites = 2

/obj/item/ammo_box/tube44
	name = ".44 speed loader tube"
	icon = 'fallout/icons/objects/ammo.dmi'
	icon_state = "10mmadv"
	ammo_type = /obj/item/ammo_casing/fallout/m44
	caliber = "44"
	max_ammo = 8
	multiple_sprites = 2

/obj/item/ammo_box/tube357
	name = ".357 speed loader tube"
	icon = 'fallout/icons/objects/ammo.dmi'
	icon_state = "10mmadv"
	ammo_type = /obj/item/ammo_casing/fallout/a357
	caliber = "357"
	max_ammo = 7
	multiple_sprites = 2

/obj/item/ammo_box/battler
	name = "battle rifle stripper clip (.308)"
	icon = 'fallout/icons/objects/ammo.dmi'
	icon_state = "10mmadv"
	ammo_type = /obj/item/ammo_casing/fallout/a308
	caliber = "a308"
	max_ammo = 8
	multiple_sprites = 2

/obj/item/ammo_box/sks
	name = "SKS stripper clip (7.62)"
	icon = 'fallout/icons/objects/ammo.dmi'
	icon_state = "10mmadv"
	ammo_type = /obj/item/ammo_casing/fallout/a762
	caliber = "a762"
	max_ammo = 10
	multiple_sprites = 2
