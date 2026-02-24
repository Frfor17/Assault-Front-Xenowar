/mob/living/bot/cargobot
	name = "Cargobot"
	desc = "A small robot, which is pulling stuff around, maybe its can help you to pull some stuff!"
	icon = 'icons/mob/bot/cargobot.dmi'
	icon_state = "cargobot0"

/mob/living/bot/cargobot/New()
	..()
	say("Готов к работе!")

/mob/living/simple_animal/hostile/commanded/rex/hear_say(message, verb = "says", datum/language/language = null, alt_name = "", italics = 0, mob/speaker = null, sound/speech_sound, sound_vol)
	say(message)
	var/clean_message = message
	if(findtext(lowertext(clean_message), "ф"))
		say("б")
