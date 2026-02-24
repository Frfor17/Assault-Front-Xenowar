/mob/living/bot/cargobot
	name = "Cargobot"
	desc = "A small robot, which is pulling stuff around, maybe its can help you to pull some stuff!"
	icon = 'icons/mob/bot/cargobot.dmi'
	icon_state = "cargobot0"

/mob/living/bot/cargobot/New()
	..()
	say("Готов к работе!")

/mob/living/bot/cargobot/hear_say(message, verb = "says", datum/language/language = null, alt_name = "",italics = 0, mob/speaker = null, sound/speech_sound, sound_vol)
	world.log << "=== CARGOBOT HEAR_SAY DEBUG ==="
	world.log << "1. ФУНКЦИЯ ВЫЗВАНА!"
	world.log << "message: [message]"
	world.log << "speaker: [speaker]"
	world.log << "client: [client]"
	world.log << "================================"
	// Игнорим client проверку!
	if(!speaker)
		world.log << "2. speaker = null -> EXIT"
		return
	world.log << "3. speaker OK: [speaker.name]"


	// Получаем ЧИСТЫЙ ТЕКСТ
	var/clean_message = message
	world.log << "4. clean_message: '[clean_message]'"
	if(findtext(lowertext(clean_message), "привет"))
		say("Привет!")
