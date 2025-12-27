// its minimal template for gamemade
/datum/game_mode/assault_front_warfare
	name = "Assault Front Warfare"
	round_description = "Some war"
	extended_round_description = "Some war at somwhere"
	config_tag = "xenowar"
	required_players = 0
	required_enemies = 0

	var/list/capture_points = list()
	var/human_control = 0
	var/xeno_control = 0

	setup()
	setup_ship()      // Твой корабль (переименуй Torch в SEV Vanguard)
	spawn_hive_planet()
	spawn_hive_ship() // Мясной корабль!
	spawn_capture_points()
