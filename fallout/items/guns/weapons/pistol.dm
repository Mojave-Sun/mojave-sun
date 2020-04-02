//Guns
/obj/item/gun/ballistic/automatic/fallout/pistol/n99
	name = "N99 pistol"
	desc = "A pre-war large-framed, gas-operated advanced 10mm pistol."
	icon_state = "n99"
	mag_type = /obj/item/ammo_box/magazine/m10mm_adv
	fire_sound = 'fallout/sound/f13weapons/10mm_fire_02.ogg'
	w_class = WEIGHT_CLASS_NORMAL
	fire_delay = 2
	extra_damage = 20
	extra_penetration = 10

/obj/item/gun/ballistic/automatic/fallout/pistol/ninemil
	name = "9mm pistol"
	desc = "A mass produced pre-war Browning Hi-power 9mm pistol."
	icon_state = "ninemil"
	mag_type = /obj/item/ammo_box/magazine/m9mm
	w_class = WEIGHT_CLASS_NORMAL
	fire_delay = 2
	extra_damage = 20
	extra_penetration = 5
	
/obj/item/gun/ballistic/automatic/fallout/pistol/pipe_pistol
	name = "pipe pistol"
	desc = "A crude and makeshift pistol chambered in .38, works in a pinch."
	icon_state = "ninemil"
	mag_type = /obj/item/ammo_box/magazine/pipe38
	w_class = WEIGHT_CLASS_NORMAL
	fire_delay = 5
	extra_damage = 20

/obj/item/gun/ballistic/automatic/fallout/pistol/m1911
	name = "\improper M1911"
	desc = "A classic .45 handgun with a small magazine capacity."
	icon_state = "m1911"
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/m45
	can_suppress = FALSE
	fire_delay = 3
	extra_damage = 30
	extra_penetration = 5

/obj/item/gun/ballistic/automatic/fallout/pistol/deagle
	name = "desert eagle"
	desc = "A robust .50 AE handgun."
	icon_state = "deagle"
	force = 14
	mag_type = /obj/item/ammo_box/magazine/m50
	can_suppress = FALSE
	w_class = WEIGHT_CLASS_NORMAL
	extra_damage = 50

/obj/item/gun/ballistic/automatic/pistol/deagle/update_icon()
	..()
	if(magazine)
		cut_overlays()
		add_overlay("deagle_magazine")
	else
		cut_overlays()
	icon_state = "[initial(icon_state)][chambered ? "" : "-e"]"

//Magazines
/obj/item/ammo_box/magazine/m45
	name = "handgun magazine (.45)"
	icon_state = "45-8"
	ammo_type = /obj/item/ammo_casing/fallout/c45
	caliber = ".45"
	max_ammo = 8

/obj/item/ammo_box/magazine/m45/update_icon()
	..()
	if (ammo_count() >= 8)
		icon_state = "45-8"
	else
		icon_state = "45-[ammo_count()]"

/obj/item/ammo_box/magazine/m50
	name = "handgun magazine (.50ae)"
	icon_state = "50ae"
	ammo_type = /obj/item/ammo_casing/fallout/a50AE
	caliber = ".50"
	max_ammo = 7
	multiple_sprites = 1

/obj/item/ammo_box/magazine/m50/empty
	stored_ammo = 0

/obj/item/ammo_box/magazine/m10mm_adv
	name = "Advanced 10mm Pistol Magazine (10mm)"
	icon = 'fallout/icons/objects/ammo.dmi'
	icon_state = "10mmadv"
	ammo_type = /obj/item/ammo_casing/fallout/c10mm
	caliber = "10mm"
	max_ammo = 12
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m9mm
	name = "9mm Pistol Magazine (9mm)"
	icon = 'fallout/icons/objects/ammo.dmi'
	icon_state = "9mmp"
	ammo_type = /obj/item/ammo_casing/fallout/c9mm
	caliber = "9mm"
	max_ammo = 13
	multiple_sprites = 2

/obj/item/ammo_box/magazine/pipe38
	name = "Pipe magazine (.38)"
	icon = 'fallout/icons/objects/ammo.dmi'
	icon_state = "9mmp"
	ammo_type = /obj/item/ammo_casing/fallout/c38
	caliber = "38"
	max_ammo = 12
	multiple_sprites = 2
