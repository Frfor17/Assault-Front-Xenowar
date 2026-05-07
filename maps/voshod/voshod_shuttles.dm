//Desant

/datum/shuttle/autodock/ferry/desant
	name = "Desant"
	warmup_time = 10
	dock_target = "desant_shuttle_airlock"
	waypoint_station = "nav_desant_start"
	waypoint_offsite = "nav_desant_out"
	logging_home_tag = "nav_desant_start"
	// logging_access = access_desant_helm
	ceiling_type = /turf/simulated/floor/shuttle_ceiling

/obj/shuttle_landmark/desant/start
	name = "First Deck"
	landmark_tag = "nav_desant_start"
	docking_controller = "desant_shuttle_dock_airlock"

/obj/shuttle_landmark/desant/out
	name = "Space near the ship"
	landmark_tag = "nav_desant_out"
