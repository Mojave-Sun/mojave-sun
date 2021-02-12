//Children of base TG stack medical items should go here

/obj/item/stack/medical/suture/ms13
    name = "doctor's bag"
    singular_name = "use" //This is so that examine text says "X uses left in the stack" instead of "X doctor's bags left in the stack"
    desc = "A bag filled with medical tools and supplies for patching and stabilizing brute damage and bleeding."
    w_class = WEIGHT_CLASS_SMALL
    full_w_class = WEIGHT_CLASS_SMALL
    max_amount = 12
    amount = 12
    self_delay = 35
    other_delay = 20
    gender = NEUTER //So examine text says "This is a doctor's bag" instead of "These are some doctor's bag"

/obj/item/stack/medical/suture/ms13/half
    amount = 6

/obj/item/stack/medical/suture/ms13/prewar
    name = "pre-war doctor's bag"
    singular_name = "use"
    desc = "A doctor's bag from before the war in surprisingly good condition. Very effective at patching brute damage and bleeding."
    heal_brute = 15
    stop_bleeding = 0.75

/obj/item/stack/medical/ointment/ms13
    name = "burn cream"
    desc = "A bottle of cream meant to be applied to burn wounds. Sanitizes and aids in the healing process of burn related injuries."
    singular_name = "burn cream"
    amount = 10
    max_amount = 10
    repeating = TRUE
    self_delay = 30
    other_delay = 15
    heal_burn = 4
    flesh_regeneration = 2
    sanitization = 0.35

/obj/item/stack/medical/mesh/ms13
    name = "burn mesh"
    desc = "Mesh meant to be applied to burn wounds. Greatly aids in the healing process and sanitization of burn related injuries."
    amount = 12
    max_amount = 12
    self_delay = 35
    other_delay = 20
    heal_burn = 10

/obj/item/stack/medical/mesh/ms13/prewar
    name = "pre-war burn mesh"
    desc = "Sterile, advanced mesh from before the war meant to be applied to burn wounds. Incredibly effective at sanitizing and mending burn related injuries."
    heal_burn = 15
    sanitization = 1.25
    flesh_regeneration = 4

/obj/item/stack/medical/gauze/ms13
    name = "gauze"
    desc = "A roll of cloth intended for soaking up blood from bleeding wounds, or mildly supporting a broken bone."
    singular_name = "rolls of gauze"
    self_delay = 35
    other_delay = 20
    max_amount = 16
    amount = 16
    absorption_rate = 0.2
    absorption_capacity = 4
    splint_factor = 0.5

/obj/item/stack/medical/gauze/ms13/half
    amount = 8

/obj/item/stack/medical/gauze/ms13/prewar
    name = "pre-war gauze"
    desc = "A sterile and elastic roll of gauze from before the war. Very good at soaking up blood from wounds and can be used as a splint for a broken bone."
    absorption_rate = 0.3
    absorption_capacity = 6
    splint_factor = 0.4 //Lower = better
