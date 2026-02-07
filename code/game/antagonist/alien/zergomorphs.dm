GLOBAL_TYPED_NEW(zergomorphs, /datum/antagonist/zergomorph)

/datum/antagonist/zergomorph
	id = MODE_ZERGOMORPH
	role_text = "Zergomorph"
	role_text_plural = "Zergomorphs"
	antag_indicator = "hudraider"
	base_to_load = /datum/map_template/ruin/antag_spawn/assault_front
	flags = ANTAG_OVERRIDE_JOB | ANTAG_OVERRIDE_MOB | ANTAG_CLEAR_EQUIPMENT
	hard_cap = 1
	initial_spawn_req = 0
	initial_spawn_target = 0
