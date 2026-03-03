/obj/machinery/llm_console
	name = "LLM Console"
	desc = "that shit lets you ask some stuff to Deepseek"
	icon = 'icons/obj/machines/fabricators/robotics_fabricator.dmi'
	icon_state = "fab"

/obj/machinery/llm_console/attack_hand(mob/user)
	. = ..()
	to_chat(world, "НАЧИНАЮ ОТПРАВКУ ЗАПРОСА В ЛЛМ")


	to_chat(world, "ОТПРАВЛЯЮ ЗАПРОС")
	var/json = json_encode(list(
	"modelUri" = "gpt://.../yandexgpt-lite",
	"completionOptions" = list(
		"stream" = FALSE,
		"temperature" = 0.6,
		"maxTokens" = "1000"
	),
	"inputs" = "Привет из SS13!"
))
	var/list/headers = list(
		"Authorization" = "Api-Key ...",
		"Content-Type" = "application/json"
	)
	var/response_of_llm = world.Export("...", json, headers)

	to_chat(world, "🔍 resp=[json_encode(response_of_llm)]")


	to_chat(world, "ЗАПРОС ОТПРАВЛЕН")
	to_chat(user, istext(response_of_llm) ? "AI: [json_decode(response_of_llm)["choices"][1]["message"]["content"]]" : "ERROR")
	to_chat(world, "КОНЕЦ ДЕЙСТВИЯ")
