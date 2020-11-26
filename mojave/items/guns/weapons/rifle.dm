//Guns
/obj/item/gun/ballistic/rifle/ms13/hunting
	name = "hunting rifle"
	desc = "A sturdy bolt action hunting rifle, chambered in 308. and in use before the war."
	icon_state = "hunting"
	inhand_icon_state = "hunting"
	mag_type = /obj/item/ammo_box/magazine/ms13/r308
	fire_sound = 'mojave/sound/ms13weapons/hunting_rifle.ogg'
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	extra_damage = 40
	extra_penetration = 15
	fire_delay = 6
	
/obj/item/gun/ballistic/rifle/ms13/hunting/scoped
	name = "scoped hunting rifle"
	desc = "A bolt action hunting rifle with a scope attached and a slightly improved barrel for better penetration."
	icon_state = "scoped_hunting"
	inhand_icon_state = "scoped_hunting"
	extra_penetration = 20
	zoomable = TRUE
	zoom_amt = 10
	zoom_out_amt = 13
	
/obj/item/gun/ballistic/rifle/ms13/varmint
	name = "varmint rifle"
	desc = "A light hunting rifle chambered for 5.56 rounds."
	icon_state = "varmint"
	inhand_icon_state = "varmint"
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	fire_sound = 'mojave/sound/ms13weapons/varmint_rifle.ogg'
	fire_delay = 6
	extra_damage = 30
	extra_penetration = 5
	mag_type = /obj/item/ammo_box/magazine/ms13/r10
	
/obj/item/gun/ballistic/rifle/ms13/varmint/ratslayer
	name = "\improper Ratslayer"
	desc = "A uniquely modified varmint rifle with greatly improved rifling, a scope, and supressor attached."
	icon_state = "ratslayer"
	inhand_icon_state = "ratslayer"
	extra_damage = 35
	extra_penetration = 10
	fire_sound = 'sound/weapons/gun/smg/shot_suppressed.ogg'
	zoomable = TRUE
	zoom_amt = 10
	zoom_out_amt = 13
	suppressed = 1
	
/obj/item/gun/ballistic/rifle/ms13/hunting/scoped/amr
	name = "anti-material rifle"
	desc = "An extremely heavy duty .50 caliber sniper rifle. Have you seen what this can do to a Deathclaw?"
	icon_state = "amr"
	inhand_icon_state = "amr"
	mag_type = /obj/item/ammo_box/magazine/ms13/amr
	fire_sound = 'mojave/sound/ms13weapons/amrfire.ogg'
	fire_delay = 8
	extra_damage = 60
	
//Magazines
/obj/item/ammo_box/magazine/ms13/r10
	name = "10 round magazine (5.56mm)"
	icon = 'mojave/icons/objects/ammo.dmi'
	icon_state = "556r10"
	ammo_type = /obj/item/ammo_casing/ms13/a556
	caliber = "a556"
	max_ammo = 10
	multiple_sprites = 2
	
/obj/item/ammo_box/magazine/ms13/r308
	name = "5 round magazine (.308)"
	icon = 'mojave/icons/objects/ammo.dmi'
	icon_state = "r308"
	ammo_type = /obj/item/ammo_casing/ms13/a308
	caliber = "a308"
	max_ammo = 5
	multiple_sprites = 2
	
/obj/item/ammo_box/magazine/ms13/amr
	name = "6 round magazine (.50)"
	icon = 'mojave/icons/objects/ammo.dmi'
	icon_state = "50cal"
	ammo_type = /obj/item/ammo_casing/ms13/a50MG
	caliber = "a50MG"
	max_ammo = 6
	multiple_sprites = 2
