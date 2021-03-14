//MS13
/area/ms13
	name = "wasteland"
	icon = 'mojave/icons/turf/areas.dmi'
	icon_state = "wasteland"
	requires_power = TRUE
	poweralm = FALSE
	power_environ = FALSE
	power_equip = FALSE
	power_light = FALSE
	outdoors = TRUE
	has_gravity = STANDARD_GRAVITY
	dynamic_lighting = DYNAMIC_LIGHTING_FORCED
	ambientsounds = list('mojave/sound/ms13ambience/general/wasteland.ogg')
	flags_1 = NONE //>desert >>has destroyed robo dirt on it

/area/ms13/admeme
	icon_state = "secret"
	requires_power = FALSE

/area/ms13/underground
	roofType = /turf/open/floor/plating/ground/mountain

/area/ms13/underground/bos
	name = "BoS"
	flags_1 = NONE
	requires_power = TRUE
	icon_state = "nuke_storage"

/area/ms13/underground/mountain
	name = "mountain"
	icon_state = "cave"
	requires_power = TRUE

/area/ms13/tcoms
	name = "tcom"
	icon_state = "tcomsatcham"
	requires_power = FALSE

/area/ms13/desert
	name = "Desert"
	icon_state = "desert"
	requires_power = FALSE
	poweralm = FALSE
	power_environ = FALSE
	power_equip = FALSE
	outdoors = TRUE
	flags_1 = NONE //>desert >>has destroyed robo dirt on it

/area/ms13/sunny_dale
	name = "Sunny Dale"
	icon_state = "sunny_dale"
	requires_power = FALSE
	poweralm = TRUE
	power_environ = TRUE
	power_equip = TRUE
	power_light = TRUE
	ambientsounds = list('mojave/sound/ms13ambience/general/building.ogg')

/area/ms13/ncr_main
	name = "NCR Mainbase"
	icon_state = "ncr_main"
	requires_power = FALSE

/area/ms13/raider_mall
	name = "Raider Mall"
	icon_state = "raider_mall"
	requires_power = TRUE

/area/ms13/mountain_bunker
	name = "Mountain Bunker"
	icon_state = "mountain_bunker"
	requires_power = TRUE

/area/ms13/prison
	name = "prison"
	icon_state = "sunny_dale"
	requires_power = TRUE

/area/ms13/klamat
	name = "Klamat"
	icon_state = "klamat"
	requires_power = TRUE
	roofType = /turf/open/floor/plating/ground/mountain

/area/ms13/klamat/mine
	name = "Klamat mine"
	icon_state = "klamat_mine"
	requires_power = TRUE

/area/ms13/deepmine
	name = "Klamat deep mine"
	icon_state = "klamat_mine"
	requires_power = TRUE

/area/ms13/farmhouse
	name = "Farmhouse"
	icon_state = "farmhouse"
	requires_power = TRUE

/area/ms13/farmhousesouth
	name = "FarmhouseS"
	icon_state = "farmhouse"
	requires_power = TRUE

/area/ms13/legioncamp
	name = "Legion Camp"
	icon_state = "legioncamp"

/area/ms13/powerplant
	name = "Power Plant"
	icon_state = "powerplant"
	requires_power = TRUE
	ambientsounds = ENGINEERING

/area/ms13/underground/enclave_base
	name = "Enclave Base"
	icon_state = "enclave_base"

/area/ms13/den
	name = "Den"
	icon_state = "den"

/area/ms13/underground/overseer_office
	name = "Overseer's Office"
	icon_state = "overseer_office"
	requires_power = TRUE

/area/ms13/underground/vault_atrium_upper
	name = "Vault Atrium Upper"
	icon_state = "vault_atrium_upper"
	requires_power = TRUE

/area/ms13/underground/vault_atrium_Lower
	name = "Vault Atrium Lower"
	icon_state = "vault_atrium_upper"
	requires_power = TRUE

/area/shuttle/vault_elevator
	name = "Vault Elevator"

/area/shuttle/enclavefort_elevator
	name = "Enclave Fort Elevator"

/area/shuttle/bos_elevator
	name = "BOS Elevator"

/area/shuttle/bunker_elevator
	name = "Bunker Elevator"

/area/shuttle/northbunker_elevator
	name = "North Bunker Elevator"

/area/shuttle/mining_elevator
	name = "Mining Elevator"

/area/ms13/underground/cave/vault
	name = "Vault Mine"
	icon_state = "caves"
	outdoors = TRUE

/area/ms13/underground/cave
	name = "Cave"
	icon_state = "cave"
	outdoors = TRUE

/area/ms13/underground/sewer
	name = "Sewers"
	icon_state = "sewer"
	outdoors = FALSE

/area/ms13/underground/underground_town
	name = "Lower Town"
	icon_state = "underground_town"
	outdoors = FALSE

/area/ms13/underground/tunnel
	name = "Tunnel"
	outdoors = FALSE
	icon_state = "tunnels"

/area/ms13/underground/subway
	name = "Subway"
	outdoors = FALSE
	icon_state = "subway"

/area/ms13/underground/tunnel/maintenance
	name = "Maintenance Passages"
	icon_state = "maintenance"

/area/ms13/underground/megabunker
	name = "Major Pre-war bunker"
	icon_state = "bunker"

/area/ms13/underground/megabunker/upper
	name = "Pre-War bunker entrance"
	icon_state = "bunkerentrance"

/area/ms13/supermarket
	name = "Supermarket"
	icon_state = "supermarket"

/area/ms13/supermarket/basement
	name = "Supermarket Basement"
	icon_state = "supermarket_basement"
