//Desant

/datum/shuttle/autodock/overmap/desant
	name = "Desant"
	warmup_time = 10
	range = 2
	fuel_consumption = 3
	shuttle_area = list(/area/shuttle/desant)
	dock_target = "desant_shuttle_airlock"
	// waypoint_station = "nav_hangar_desant"
	// waypoint_offsite = "nav_desant_out"
	logging_home_tag = "nav_hangar_desant"
	current_location = "nav_hangar_desant"
	landmark_transition = "nav_transit_desant"
	// logging_access = access_desant_helm
	ceiling_type = /turf/simulated/floor/shuttle_ceiling

/area/shuttle/desant
	name = "\improper Desant"
	icon_state = "shuttlered"
	base_turf = /turf/simulated/floor/plating
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_HIDE_FROM_HOLOMAP
	base_turf_special_handling = TRUE

/datum/shuttle/autodock/overmap/desant/New(_name, obj/shuttle_landmark/initial_location)
	shuttle_area = list(/area/shuttle/desant)
	// для неск областей suptypesof() как у Харона, для одной - как туту, или как у Гуппи
	..()

/obj/shuttle_landmark/desant/hangar
	name = "Desant Hangar"
	landmark_tag = "nav_hangar_desant"
	docking_controller = "desant_shuttle_dock_airlock"

/obj/shuttle_landmark/desant/out
	name = "Space near the ship"
	landmark_tag = "nav_desant_out"

/obj/shuttle_landmark/desant/transit
	name = "In transit"
	landmark_tag = "nav_transit_desant"
