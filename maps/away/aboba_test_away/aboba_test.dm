#include "warfare_map_areas.dm"


/obj/overmap/visitable/sector/aboba_test
	name = "Planet of War"
	desc = "Planet, where war will be"
	icon_state = "event"
	place_near_main = 1

	initial_generic_waypoints = list(
		"aboba_test_1",
	)

/datum/map_template/ruin/away_site/aboba_test
	name = "aboba_test"
	id = "awaysite_aboba_test"
	description = "aboba test"
	suffixes = list("aboba_test_away/warfare_map_attempt1.dmm")
	spawn_cost = 0
	template_flags = TEMPLATE_FLAG_SPAWN_GUARANTEED

/obj/shuttle_landmark/aboba_1_landmakr
	name = "War landing zone"
	landmark_tag = "aboba_test_1"
	base_area = /area/warfare_map/combat_landing_zone
	base_turf = /turf/simulated/floor/plating
