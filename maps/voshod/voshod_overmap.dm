/obj/overmap/visitable/ship/voshod
	name = "5K-VI Voshod"
	desc = "Military vessel"
	fore_dir = WEST
	vessel_mass = 50000
	burn_delay = 2 SECONDS
	sector_flags = OVERMAP_SECTOR_KNOWN|OVERMAP_SECTOR_IN_SPACE|OVERMAP_SECTOR_BASE
	// ВАЖНО: Добавьте эту строку для ограничения шаттлов
	initial_restricted_waypoints = list(
		"Desant" = list("nav_hangar_desant")  // Шаттл Desant может появляться только в ангаре
	)
	known_ships = list(
		/obj/overmap/visitable/ship/landable/desant
	)

	initial_generic_waypoints = list(
		"nav_desant_out"
	)

/obj/machinery/computer/ship/helm/voshod
	name = "Voshod Helm Control"
	desc = "Primary Navigation Console for the Voshod ship"

/obj/overmap/visitable/ship/landable/desant
	name = "Desant"
	desc = "Desant shuttle for VDV Operations!"
	shuttle = "Desant"
	vessel_size = SHIP_SIZE_TINY
	known_ships = list(
		/obj/overmap/visitable/ship/voshod
	)

/obj/machinery/computer/shuttle_control/explore/Desant
	name = "shuttle control console"
	shuttle_tag = "Desant"
