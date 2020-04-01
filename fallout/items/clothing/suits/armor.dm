/obj/item/clothing/suit/armor/fallout
	name = "generic fallout armor"
	desc = "You shouldn't be seeing this."
	icon = 'fallout/icons/objects/clothing/suits.dmi'
	allowed = list(/obj/item/pen,/obj/item/paper,/obj/item/stamp,/obj/item/reagent_containers/food/drinks/flask,/obj/item/weapon,/obj/item/storage/box/matches,/obj/item/lighter,/obj/item/clothing/mask/cigarette,/obj/item/storage/fancy/cigarettes,/obj/item/flashlight,/obj/item/gun,/obj/item/ammo_box,/obj/item/ammo_casing)
	body_parts_covered = CHEST|ARMS|LEGS|GROIN
	
/obj/item/clothing/suit/armor/fallout/kit
	name = "armor kit"
	desc = "Armor parts and pieces worn over clothing. Good protection in a pinch."
	icon_state = "armorkit"
	item_state = "armorkit"
	armor = list(melee = 25, bullet = 25, laser = 0, energy = 0, bomb = 10, bio = 0, rad = 0, fire = 0, acid = 0)

/obj/item/clothing/suit/armor/fallout/leatherarmor
	name = "leather armor"
	desc = "A suit of leather armor, worn by wastelanders everywhere."
	icon_state = "leatherarmor"
	item_state = "leatherarmor"
	armor = list(melee = 35, bullet = 25, laser = 10, energy = 10, bomb = 20, bio = 0, rad = 0, fire = 0, acid = 0)
	flags_inv = HIDEJUMPSUIT
	
/obj/item/clothing/suit/armor/fallout/blastmaster
	name = "raider blastmaster armor"
	desc = "Crude raider armor most notable for utilizing a tire as the shoulder pad. Perhaps not the most effective, but it gets the job done."
	icon_state = "slam"
	item_state = "slam"
	armor = list(melee = 30, bullet = 30, laser = 5, energy = 5, bomb = 20, bio = 0, rad = 0, fire = 0, acid = 0)
	flags_inv = HIDEJUMPSUIT