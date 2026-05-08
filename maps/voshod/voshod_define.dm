/datum/map/voshod
	name = "\improper Voshod"
	full_name = "\improper 5K-VI Voshod"
	path = "voshod"
	// config_path = "config/voshod_config.txt"

	station_name = "5K-VI Voshod"
	// ДОБАВЬТЕ ЭТО В voshod_define.dm:
	station_levels = list(1)      // Z-уровень вашего корабля
	admin_levels = list(2)        // Админ уровень
	contact_levels = list(1)      // Уровни для связи
	player_levels = list(1)       // Уровни доступные игрокам
	accessible_z_levels = list("1"=1,"2"=3,"3"=1,"4"=1,"5"=1,"6"=1,"9"=30)
	overmap_size = 35
	overmap_event_areas = 34

	use_overmap = 1               // САМОЕ ВАЖНОЕ! Без этого корабль не на овермапе
	overmap_size = 20
	overmap_event_areas = 10

	// Также добавьте:
	allowed_spawns = list("Cryogenic Storage", "Cyborg Storage")
	default_spawn = "Cryogenic Storage"
