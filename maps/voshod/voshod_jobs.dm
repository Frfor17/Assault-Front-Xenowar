// Минимальные jobs для корабля Voshod
// Определение карты voshod с jobs
/datum/map/voshod
	allowed_jobs = list(
		/datum/job/voshod_captain,
		/datum/job/assistant
	)

	default_assistant_title = "Crewman"  // Название для ассистентов на этом корабле

// Капитан для Voshod
/datum/job/voshod_captain
	title = "Voshod Captain"
	supervisors = "High Command"
	minimal_player_age = 7
	economic_power = 12
	minimum_character_age = list(SPECIES_HUMAN = 30)
	ideal_character_age = 40
	outfit_type = /singleton/hierarchy/outfit/job/voshod/captain
	allowed_branches = list(
		/datum/mil_branch/military
	)
	allowed_ranks = list(
		/datum/mil_rank/mil/o5
	)
	skill_points = 30

	min_skill = list(
		SKILL_BUREAUCRACY = SKILL_BASIC,
		SKILL_PILOT = SKILL_TRAINED
	)

	max_skill = list(
		SKILL_PILOT = SKILL_MAX,
		SKILL_WEAPONS = SKILL_MAX
	)

	software_on_spawn = list(
		/datum/computer_file/program/comm,
		/datum/computer_file/program/card_mod,
		/datum/computer_file/program/camera_monitor
	)

/datum/job/voshod_captain/get_description_blurb()
	return "You are the Captain of the Voshod military vessel. You are in command of the ship and responsible for the crew and mission."

// Ассистент (Crewman) для Voshod
/datum/job/assistant
	title = "Crewman"  // Переопределяем название для этой карты
	supervisors = "the Captain and department heads"
	total_positions = 5  // Максимальное количество
	spawn_positions = 5  // Количество спавнов
	economic_power = 4
	announced = FALSE
