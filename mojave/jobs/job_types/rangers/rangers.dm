/datum/job/ms13/ranger
	selection_color = "#30389c"

/datum/outfit/job/ms13/ranger
	name = "RangerDatums"
	jobtype = /datum/job/ms13/ranger/
	back = /obj/item/storage/backpack/satchel/leather
	shoes = /obj/item/clothing/shoes/ms13/military
	uniform = /obj/item/clothing/under/ms13/ncr/fatigues

/datum/outfit/job/ms13/ranger/pre_equip(mob/living/carbon/human/H)
	..()

	uniform = pick(/obj/item/clothing/under/ms13/ranger,\
		/obj/item/clothing/under/ms13/ranger/casual,\
		/obj/item/clothing/under/ms13/ranger/patrol)

//These are base jobs, we don't want them appearing at all
/datum/job/ms13/ranger/config_check()
	if(type == /datum/job/ms13/ranger)
		return FALSE
	return ..()

/datum/job/ms13/ranger/map_check()
	if(type == /datum/job/ms13/ranger)
		return FALSE
	return ..()
