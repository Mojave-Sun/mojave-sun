// Guns
/obj/item/gun/ballistic/shotgun/ms13/lever
	name = "lever action shotgun"
	desc = "A trusty lever action shotgun with a tube supporting a maximum of five shells and a reinforced grip for bashing in heads."
	icon_state = "levershot"
	inhand_icon_state = "levershot"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/lever
	fire_sound = 'mojave/sound/ms13weapons/gunsounds/levershot/levershot2.ogg'
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	force = 25
	fire_delay = 5

/obj/item/gun/ballistic/shotgun/ms13/huntingshot
	name = "hunting shotgun"
	desc = "A pre-war pump action shotgun with an extended tube capable of holding eight shells and a bulky stock that excels in melee combat."
	icon_state = "huntingshot"
	inhand_icon_state = "huntingshot"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/huntingshot
	fire_sound = 'mojave/sound/ms13weapons/gunsounds/huntingshot/huntingshot2.ogg'
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	force = 30
	fire_delay = 5

/obj/item/gun/ballistic/shotgun/ms13/trail
	name = "trail carbine"
	desc = "A lever action repeater chambered for .44 Magnum with a solid capacity."
	icon_state = "trail"
	inhand_icon_state = "trail"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/tube44
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	fire_sound = 'mojave/sound/ms13weapons/trailfire.ogg'
	fire_delay = 5
	extra_damage = 40
	extra_penetration = 10
	force = 15

/obj/item/gun/ballistic/shotgun/ms13/cowboy
	name = "cowboy repeater"
	desc = "A classic lever action repeater chambered for .357."
	icon_state = "cowboy"
	inhand_icon_state = "cowboy"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/tube357
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	fire_sound = 'mojave/sound/ms13weapons/gunsounds/repeater/repeater1.ogg'
	fire_delay = 5
	extra_damage = 35
	extra_penetration = 10
	force = 15

/obj/item/gun/ballistic/shotgun/ms13/brush
	name = "brush gun"
	desc = "A lever action repeater chambered for the deadly .45-70 cartridge. Can't carry a lot of rounds and doesn't fire very fast, but with so much damage does that really matter?"
	icon_state = "brush"
	inhand_icon_state = "brush"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/tube4570
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	fire_sound = 'mojave/sound/ms13weapons/brushfire.ogg'
	fire_delay = 5
	extra_damage = 55
	extra_penetration = 10
	force = 15

/obj/item/gun/ballistic/shotgun/automatic/ms13/battle
	name = "battle rifle"
	desc = "A very old but very reliable semi-automatic, clip fed rifle from long before the war. Chambered for .308."
	icon_state = "battler"
	inhand_icon_state = "battler"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/battler
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	fire_sound = 'mojave/sound/ms13weapons/battlerifle.ogg'
	fire_delay = 5
	extra_damage = 40
	extra_penetration = 15

/obj/item/gun/ballistic/shotgun/automatic/ms13/battle/sks
	name = "\improper SKS"
	desc = "An old European semi-automatic rifle chambered for 7.62 rounds and normally fed from 10 round stripper clips."
	icon_state = "sks"
	inhand_icon_state = "sks"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/sks
	fire_sound = 'mojave/sound/ms13weapons/gunsounds/sks/sks1.ogg'
	extra_damage = 30
	extra_penetration = 10


/obj/item/gun/ballistic/shotgun/automatic/ms13/battle/sks/scoped
	name = "scoped SKS"
	desc = "An SKS with a scope attached and some improved rifling for better penetration."
	icon_state = "scoped_sks"
	inhand_icon_state = "scoped_sks"
	extra_penetration = 15
	zoomable = TRUE
	zoom_amt = 10
	zoom_out_amt = 13

//Magazines
/obj/item/ammo_box/magazine/internal/shot/ms13/tube4570
	name = "4570 internal tube magazine"
	ammo_type = /obj/item/ammo_casing/ms13/c4570
	caliber = "4570"
	max_ammo = 6

/obj/item/ammo_box/magazine/internal/shot/ms13/tube44
	name = ".44 magnum internal tube magazine"
	ammo_type = /obj/item/ammo_casing/ms13/m44
	caliber = "44"
	max_ammo = 8

/obj/item/ammo_box/magazine/internal/shot/ms13/tube357
	name = ".357 magnum internal tube magazine"
	ammo_type = /obj/item/ammo_casing/ms13/a357
	caliber = "357"
	max_ammo = 7

/obj/item/ammo_box/magazine/internal/shot/ms13/battler
	name = "battle rifle internal magazine (.308)"
	ammo_type = /obj/item/ammo_casing/ms13/a308
	caliber = "a308"
	max_ammo = 8

/obj/item/ammo_box/magazine/internal/shot/ms13/sks
	name = "SKS internal magazine (7.62)"
	ammo_type = /obj/item/ammo_casing/ms13/a762
	caliber = "a762"
	max_ammo = 10

/obj/item/ammo_box/magazine/internal/shot/ms13/lever
	name = "lever action shotgun internal tube magazine"
	ammo_type = /obj/item/ammo_casing/shotgun/ms13/buckshot
	max_ammo = 5

/obj/item/ammo_box/magazine/internal/shot/ms13/huntingshot
	name = "hunting shotgun internal tube magazine"
	ammo_type = /obj/item/ammo_casing/shotgun/ms13/buckshot
	max_ammo = 8

//Loaders
/obj/item/ammo_box/ms13/tube4570
	name = ".45-70 speed loader tube"
	icon = 'mojave/icons/objects/ammo.dmi'
	icon_state = "4570tube"
	ammo_type = /obj/item/ammo_casing/ms13/c4570
	caliber = "4570"
	max_ammo = 6

/obj/item/ammo_box/ms13/tube44
	name = ".44 speed loader tube"
	icon = 'mojave/icons/objects/ammo.dmi'
	icon_state = "44tube"
	ammo_type = /obj/item/ammo_casing/ms13/m44
	caliber = "44"
	max_ammo = 8

/obj/item/ammo_box/ms13/tube357
	name = ".357 speed loader tube"
	icon = 'mojave/icons/objects/ammo.dmi'
	icon_state = "357tube"
	ammo_type = /obj/item/ammo_casing/ms13/a357
	caliber = "357"
	max_ammo = 7

/obj/item/ammo_box/ms13/battler
	name = "battle rifle stripper clip (.308)"
	icon = 'mojave/icons/objects/ammo.dmi'
	icon_state = "battler"
	ammo_type = /obj/item/ammo_casing/ms13/a308
	caliber = "a308"
	max_ammo = 8

/obj/item/ammo_box/ms13/sks
	name = "SKS stripper clip (7.62)"
	icon = 'mojave/icons/objects/ammo.dmi'
	icon_state = "sksclip"
	ammo_type = /obj/item/ammo_casing/ms13/a762
	caliber = "a762"
	max_ammo = 10
