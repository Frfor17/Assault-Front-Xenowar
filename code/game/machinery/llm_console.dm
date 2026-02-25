/obj/machinery/llm_console
	name = "LLM Console"
	desc = "that shit lets you ask some stuff to Deepseek"
	icon = 'icons/obj/machines/fabricators/robotics_fabricator.dmi'
	icon_state = "fab"

/obj/machinery/llm_console/attack_hand(mob/user)
	. = ..()
	to_chat(world, "HEHEHHEHE, HEHEHE")
