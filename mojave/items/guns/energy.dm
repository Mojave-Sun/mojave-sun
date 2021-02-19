	//Mojave Sun

/obj/item/gun/energy/ms13
	name = "generic ms13 gun"
	desc = "complain when seeing this"
	icon = 'mojave/icons/objects/guns/guns_inventory.dmi'
	lefthand_file = 'mojave/icons/mob/inhands/weapons/guns_inhand_left.dmi'
	righthand_file = 'mojave/icons/mob/inhands/weapons/guns_inhand_right.dmi'

/obj/item/gun/energy/ms13/laser/aer9
	name = "AER9 Laser Rifle"
	desc = "A sturdy and advanced military grade pre-war service laser rifle"
	icon_state = "laser"
	inhand_icon_state = "laser-rifle9"
	ammo_type = list(/obj/item/ammo_casing/energy/ms13/laser/lasgun)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_HUGE

/obj/item/gun/energy/ms13/laser/pistol
	name = "AEP7 laser pistol"
	desc = "A basic energy-based laser gun that fires concentrated beams of light which pass through glass and thin metal."
	icon = 'mojave/icons/objects/guns/guns_inventory.dmi'
	icon_state = "AEP7"
	inhand_icon_state = "laser-pistol"
	lefthand_file = 'mojave/icons/mob/inhands/weapons/guns_inhand_left.dmi'
	righthand_file = 'mojave/icons/mob/inhands/weapons/guns_inhand_right.dmi'
	w_class = WEIGHT_CLASS_NORMAL
	fire_delay = 0
	ammo_type = list(/obj/item/ammo_casing/energy/ms13/laser/pistol)
	cell_type = /obj/item/stock_parts/cell/ammo/ec

/obj/item/gun/energy/ms13/laser/scatter
	name = "Tri-beam Laser Rifle"
	desc = "A modified AER9 equipped with a refraction kit that spreads its bolts."
	icon = 'mojave/icons/objects/guns/guns_inventory.dmi'
	inhand_icon_state = "laser-rifle9"
	lefthand_file = 'mojave/icons/mob/inhands/weapons/guns_inhand_left.dmi'
	righthand_file = 'mojave/icons/mob/inhands/weapons/guns_inhand_right.dmi'
	ammo_type = list(/obj/item/ammo_casing/energy/ms13/laser/scatter)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_HUGE

/obj/item/gun/energy/ms13/laser/plasma
	name ="A3-20 Plasma Rifle"
	icon = 'mojave/icons/objects/guns/guns_inventory.dmi'
	inhand_icon_state = "plasma"
	icon_state = "plasma"
	lefthand_file = 'mojave/icons/mob/inhands/weapons/guns_inhand_left.dmi'
	righthand_file = 'mojave/icons/mob/inhands/weapons/guns_inhand_right.dmi'
	desc = "A top of line miniaturized plasma caster built by REPCONN in the wake of the Z43-521P failure. It is supperior to all previous rifles to enter service in the USCC."
	ammo_type = list(/obj/item/ammo_casing/energy/ms13/plasma)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_HUGE

/obj/item/gun/energy/ms13/laser/plasma/scatter
	name = "A3e-20b Multiplas Rifle"
	icon = 'mojave/icons/objects/guns/guns_inventory.dmi'
	inhand_icon_state = "multiplas"
	icon_state = "multiplas"
	lefthand_file = 'mojave/icons/mob/inhands/weapons/guns_inhand_left.dmi'
	righthand_file = 'mojave/icons/mob/inhands/weapons/guns_inhand_right.dmi'
	desc = "A modified A3-20 plasma caster built by REPCONN equipped with a multicasting kit that creates multiple weaker clots."
	ammo_type = list(/obj/item/ammo_casing/energy/ms13/plasma/scatter)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc

/obj/item/gun/energy/ms13/laser/plasma/pistol
	name ="MPL-A Plasma Pistol"
	icon = 'mojave/icons/objects/guns/guns_inventory.dmi'
	inhand_icon_state = "plasma-pistol"
	icon_state = "plasma-pistol"
	lefthand_file = 'mojave/icons/mob/inhands/weapons/guns_inhand_left.dmi'
	righthand_file = 'mojave/icons/mob/inhands/weapons/guns_inhand_right.dmi'
	desc = "A pistol-sized miniaturized plasma caster built by REPCONN. It fires heavy low penetration plasma clots."
	ammo_type = list(/obj/item/ammo_casing/energy/ms13/plasma/pistol)
	w_class = WEIGHT_CLASS_NORMAL
	cell_type = /obj/item/stock_parts/cell/ammo/mfc

//projectiles

/obj/projectile/beam/ms13
	speed = 0.2 //Vanilla tg is 0.8

/obj/projectile/beam/ms13/laser/lasgun
	name = "laser beam"
	damage = 34
	armour_penetration = -9

/obj/projectile/beam/ms13/laser/pistol
	name = "laser beam"
	damage = 25

/obj/projectile/beam/ms13/laser/tribeam
	name = "tribeam laser"
	damage = 15

/obj/projectile/bullet/ms13/plasma
	name = "plasma clot"
	damage = 60

/obj/projectile/bullet/ms13/plasma/pistol
	damage = 60
	armour_penetration = -18

/obj/projectile/bullet/ms13/plasma/scatter
	damage = 22

//Casings
//plasma

/obj/item/ammo_casing/energy/ms13
	click_cooldown_override = 1 //0.1 second fire delay; better balance your fire rates now

/obj/item/ammo_casing/energy/ms13/plasma
	projectile_type = /obj/projectile/bullet/ms13/plasma
	select_name = "plasma burst"
	fire_sound = 'sound/weapons/plasma_cutter.ogg'
	delay = 5
	e_cost = 100

/obj/item/ammo_casing/energy/ms13/plasma/scatter
	projectile_type = /obj/projectile/bullet/ms13/plasma/scatter
	pellets = 3
	variance = 14
	select_name = "scatter"

/obj/item/ammo_casing/energy/ms13/plasma/pistol
	projectile_type = /obj/projectile/bullet/ms13/plasma/pistol
	e_cost = 50

//laser
/obj/item/ammo_casing/energy/ms13/laser/scatter
	projectile_type = /obj/projectile/beam/ms13/laser/tribeam
	pellets = 3
	variance = 14
	select_name = "scatter"
	e_cost = 50

/obj/item/ammo_casing/energy/ms13/laser/pistol
	projectile_type = /obj/projectile/beam/ms13/laser/pistol
	e_cost = 10

/obj/item/ammo_casing/energy/ms13/laser/lasgun
	projectile_type = /obj/projectile/beam/ms13/laser/lasgun
	e_cost = 50

// energy weapon ammotypes

/obj/item/stock_parts/cell/ammo
	name = "ammo cell"
	desc = "You shouldn't be holding this."
	w_class = WEIGHT_CLASS_TINY

/obj/item/stock_parts/cell/ammo/New()
	..()
	return

/obj/item/stock_parts/cell/ammo/update_icon()
	return

/obj/item/stock_parts/cell/ammo/mfc
	name = "microfusion cell"
	desc = "A microfusion cell, typically used as ammunition for large energy weapons. YOU CAN RECHARGE THIS STUPID SON OF A BITCH FOR THE LOW RATE OF 0.99 NO SHIPPING AND HANDLING MOTHERFUCKER"
	icon_state = "mfc"
	maxcharge = 1200
	chargerate = 300

/obj/item/stock_parts/cell/ammo/ecp
	name = "electron charge pack"
	desc = "An electron charge pack, typically used as ammunition for rapidly-firing energy weapons."
	icon_state = "icell"
	maxcharge = 2400
	chargerate = 400

/obj/item/stock_parts/cell/ammo/ec
	name = "energy cell"
	desc = "An energy cell, typically used as ammunition for small-arms energy weapons."
	icon_state = "ec"
	maxcharge = 300
	chargerate = 300
