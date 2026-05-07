// Минимальные jobs для корабля Voshod
// Определение карты voshod с jobs
/datum/map/voshod
	allowed_jobs = list(
		/datum/job/captain,
		/datum/job/assistant
	)

	default_assistant_title = "Crewman"  // Название для ассистентов на этом корабле

// Капитан для Voshod
/datum/job/captain
	title = "Stavka Divizion Commander"
	supervisors = "the Shtab of Minister of Defence"
	minimal_player_age = 7
	economic_power = 12
	minimum_character_age = list(SPECIES_HUMAN = 30)
	ideal_character_age = 40
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

/datum/job/captain/get_description_blurb()
	return "You are the Shtab Divizion Commander. You are the top dog. You are an experienced professional officer in control of an entire ship, and ultimately responsible for all that happens onboard. Your job is to make sure [GLOB.using_map.full_name] fulfils its mission. Delegate to your Executive Officer, your department heads, and your Senior Enlisted Advisor to effectively manage the ship, and listen to and trust their expertise."

// Ассистент (Crewman) для Voshod
/datum/job/assistant
	title = "Crewman"  // Переопределяем название для этой карты
	supervisors = "the Captain and department heads"
	total_positions = 5  // Максимальное количество
	spawn_positions = 5  // Количество спавнов
	economic_power = 4
	announced = FALSE
