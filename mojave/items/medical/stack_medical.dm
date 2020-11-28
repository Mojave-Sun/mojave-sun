//Children of base TG stack medical items should go here

/obj/item/stack/medical/suture/ms13
    name = "doctor's bag"
    singular_name = "use" //This is so that examine text says "X uses left in the stack" instead of "X doctor's bags left in the stack"
    desc = "A bag filled with medical tools and supplies for patching and stabilizing wounds from conventional sources."
    w_class = WEIGHT_CLASS_SMALL
    full_w_class = WEIGHT_CLASS_SMALL
    self_delay = 35
    other_delay = 20
    gender = NEUTER //So examine text says "This is a doctor's bag" instead of "These are some doctor's bag"

/obj/item/stack/medical/suture/medicated/ms13
    name = "pre-war doctor's bag"
    singular_name = "use"
    desc = "A doctor's bag from before the war in surprisingly good condition. Very effective at patching wounds from conventional sources."
    w_class = WEIGHT_CLASS_SMALL
    full_w_class = WEIGHT_CLASS_SMALL
    self_delay = 35
    other_delay = 20
    gender = NEUTER
