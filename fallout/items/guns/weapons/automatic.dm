//Guns
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
	
/obj/item/gun/ballistic/automatic/fallout/marksman/servicerifle/varmint/pipe
	name = "Pipe Rifle"
	desc = "A makeshift rifle held together with duct tape and rusty bolts. Fires .38 rounds."
	icon_state = "varmint"
	item_state = "varmintrifle"
	fire_delay = 6
	extra_damage = 25
	extra_penetration = 5
	mag_type = /obj/item/ammo_box/magazine/pipe38

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

//Magazines
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

/obj/item/ammo_box/magazine/greasegun
	name = "9mm SMG Magazine (9mm)"
	icon = 'fallout/icons/objects/ammo.dmi'
	icon_state = "grease"
	ammo_type = /obj/item/ammo_casing/fallout/c9mm
	caliber = "9mm"
	max_ammo = 30
	multiple_sprites = 2

/obj/item/ammo_box/magazine/tommygunm45
	name = "drum magazine (.45)"
	icon_state = "drum45"
	ammo_type = /obj/item/ammo_casing/fallout/c45
	caliber = ".45"
	max_ammo = 50

/obj/item/ammo_box/magazine/uzim9mm
	name = "uzi magazine (9mm)"
	icon_state = "uzi9mm-32"
	ammo_type = /obj/item/ammo_casing/fallout/c9mm
	caliber = "9mm"
	max_ammo = 32

/obj/item/ammo_box/magazine/uzim9mm/update_icon()
	..()
	icon_state = "uzi9mm-[round(ammo_count(),4)]"
