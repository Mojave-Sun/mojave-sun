//Guns
/obj/item/gun/ballistic/rifle/fallout/hunting
	name = "hunting rifle"
	desc = "A sturdy bolt action hunting rifle, chambered in 308. and in use before the war."
	icon_state = "hunting"
	item_state = "rifle"
	mag_type = /obj/item/ammo_box/magazine/r308
	fire_sound = 'fallout/sound/f13weapons/hunting_rifle.ogg'
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	extra_damage = 40
	extra_penetration = 15
	fire_delay = 5
	
/obj/item/gun/ballistic/rifle/fallout/hunting/scoped
	name = "scoped hunting rifle"
	desc = "A bolt action hunting rifle with a scope attached and a slightly improved barrel for better penetration."
	icon_state = "scoped_hunting"
	extra_penetration = 20
	zoomable = TRUE
	zoom_amt = 10
	zoom_out_amt = 13
	
/obj/item/gun/ballistic/rifle/fallout/varmint
	name = "varmint rifle"
	desc = "A light hunting rifle chambered for 5.56 rounds."
	icon_state = "varmint"
	item_state = "varmintrifle"
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	fire_delay = 5
	extra_damage = 30
	extra_penetration = 5
	mag_type = /obj/item/ammo_box/magazine/r10
	
/obj/item/gun/ballistic/rifle/fallout/varmint/ratslayer
	name = "ratslayer"
	desc = "A uniquely modified varmint rifle with greatly improved rifling, a scope, and supressor attached."
	icon_state = "ratslayer"
	item_state = "varmintrifle"
	extra_damage = 35
	extra_penetration = 10
	zoomable = TRUE
	zoom_amt = 10
	zoom_out_amt = 13
	suppressed = 1
	
/obj/item/gun/ballistic/rifle/fallout/hunting/scoped/amr
	name = "anti-material rifle"
	desc = "An extremely heavy duty .50 caliber sniper rifle. Have you seen what this can do to a Deathclaw?"
	icon_state = "amr"
	mag_type = /obj/item/ammo_box/magazine/amr
	fire_sound = 'fallout/sound/f13weapons/hunting_rifle.ogg'
	fire_delay = 6
	extra_damage = 60
	
//Magazines
/obj/item/ammo_box/magazine/r10
	name = "10 round magazine (5.56mm)"
	icon = 'fallout/icons/objects/ammo.dmi'
	icon_state = "r10"
	ammo_type = /obj/item/ammo_casing/fallout/a556
	caliber = "a556"
	max_ammo = 10
	multiple_sprites = 2
	
/obj/item/ammo_box/magazine/r308
	name = "5 round magazine (.308)"
	icon = 'fallout/icons/objects/ammo.dmi'
	icon_state = "r10"
	ammo_type = /obj/item/ammo_casing/fallout/a308
	caliber = "a308"
	max_ammo = 5
	multiple_sprites = 2
	
/obj/item/ammo_box/magazine/amr
	name = "AMR magazine (.50)"
	icon = 'fallout/icons/objects/ammo.dmi'
	icon_state = "r10"
	ammo_type = /obj/item/ammo_casing/fallout/a50MG
	caliber = "a50MG"
	max_ammo = 6
	multiple_sprites = 2
