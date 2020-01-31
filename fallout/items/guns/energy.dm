	//Fallout

/obj/item/gun/energy/laser/aer9
	name = "AER9 Laser Rifle"
	desc = "A sturdy and advanced military grade pre-war service laser rifle"
	icon = 'fallout/icons/objects/obj/guns/energy.dmi'
	icon_state = "laser"
	item_state = "laser-rifle9"
	lefthand_file = 'fallout/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'fallout/icons/mob/inhands/weapons/guns_righthand.dmi'
	ammo_type = list(/obj/item/ammo_casing/energy/laser/lasgun)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_HUGE

/obj/item/gun/energy/laser/pistol
	name = "AEP7 laser pistol"
	desc = "A basic energy-based laser gun that fires concentrated beams of light which pass through glass and thin metal."
	icon = 'fallout/icons/objects/obj/guns/energy.dmi'
	icon_state = "AEP7"
	item_state = "laser-pistol"
	lefthand_file = 'fallout/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'fallout/icons/mob/inhands/weapons/guns_righthand.dmi'
	w_class = WEIGHT_CLASS_NORMAL
	fire_delay = 0
	ammo_type = list(/obj/item/ammo_casing/energy/laser/pistol)
	cell_type = /obj/item/stock_parts/cell/ammo/ec

/obj/item/gun/energy/laser/scatter
	name = "Tri-beam Laser Rifle"
	desc = "A modified AER9 equipped with a refraction kit that spreads its bolts."
	icon = 'fallout/icons/objects/obj/guns/energy.dmi'
	item_state = "laser-rifle9"
	lefthand_file = 'fallout/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'fallout/icons/mob/inhands/weapons/guns_righthand.dmi'
	ammo_type = list(/obj/item/ammo_casing/energy/laser/scatter)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_HUGE

/obj/item/gun/energy/laser/plasma
	name ="A3-20 Plasma Rifle"
	icon = 'fallout/icons/objects/obj/guns/energy.dmi'
	item_state = "plasma"
	icon_state = "plasma"
	lefthand_file = 'fallout/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'fallout/icons/mob/inhands/weapons/guns_righthand.dmi'
	desc = "A top of line miniaturized plasma caster built by REPCONN in the wake of the Z43-521P failure. It is supperior to all previous rifles to enter service in the USCC."
	ammo_type = list(/obj/item/ammo_casing/energy/plasma)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_HUGE

/obj/item/gun/energy/laser/plasma/scatter
	name = "A3e-20b Multiplas Rifle"
	icon = 'fallout/icons/objects/obj/guns/energy.dmi'
	item_state = "multiplas"
	icon_state = "multiplas"
	lefthand_file = 'fallout/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'fallout/icons/mob/inhands/weapons/guns_righthand.dmi'
	desc = "A modified A3-20 plasma caster built by REPCONN equipped with a multicasting kit that creates multiple weaker clots."
	ammo_type = list(/obj/item/ammo_casing/energy/plasma/scatter)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc

/obj/item/gun/energy/laser/plasma/pistol
	name ="MPL-A Plasma Pistol"
	icon = 'fallout/icons/objects/obj/guns/energy.dmi'
	item_state = "plasma-pistol"
	icon_state = "plasma-pistol"
	lefthand_file = 'fallout/icons/mob/inhands/weapons/guns_lefthand.dmi'
	righthand_file = 'fallout/icons/mob/inhands/weapons/guns_righthand.dmi'
	desc = "A pistol-sized miniaturized plasma caster built by REPCONN. It fires heavy low penetration plasma clots."
	ammo_type = list(/obj/item/ammo_casing/energy/plasma/pistol)
	w_class = WEIGHT_CLASS_NORMAL
	cell_type = /obj/item/stock_parts/cell/ammo/mfc

//projectiles
/obj/projectile/beam/laser/lasgun
	name = "laser beam"
	damage = 34
	armour_penetration = -9

/obj/projectile/beam/laser/pistol
	name = "laser beam"
	damage = 25

/obj/projectile/beam/laser/tribeam
	name = "tribeam laser"
	damage = 15

/obj/projectile/plasma
	name = "plasma clot"
	damage = 60

/obj/projectile/plasma/pistol
	damage = 60
	armour_penetration = -18

/obj/projectile/plasma/scatter
	damage = 22

//Casings
//plasma
/obj/item/ammo_casing/energy/plasma
	projectile_type = /obj/projectile/plasma
	select_name = "plasma burst"
	fire_sound = 'sound/weapons/plasma_cutter.ogg'
	delay = 5
	e_cost = 100

/obj/item/ammo_casing/energy/plasma/scatter
	projectile_type = /obj/projectile/plasma/scatter
	pellets = 3
	variance = 14
	select_name = "scatter"

/obj/item/ammo_casing/energy/plasma/pistol
	projectile_type = /obj/projectile/plasma/pistol
	e_cost = 50

//laser
/obj/item/ammo_casing/energy/laser/scatter
	projectile_type = /obj/projectile/beam/laser/tribeam
	pellets = 3
	variance = 14
	select_name = "scatter"
	e_cost = 50

/obj/item/ammo_casing/energy/laser/pistol
	projectile_type = /obj/projectile/beam/laser/pistol
	e_cost = 10

/obj/item/ammo_casing/energy/laser/lasgun
	projectile_type = /obj/projectile/beam/laser/lasgun
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
