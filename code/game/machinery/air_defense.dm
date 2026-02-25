/obj/machinery/air_defense
	name = "biogenerator"
	desc = "that shit will save you from ballistic missle"
	icon = 'icons/obj/machines/computer.dmi'
	icon_state = "aiupload"

	var/datum/pvo_test/pvo_calc

/obj/machinery/air_defense/New()
	..()
	pvo_calc = new()

/obj/machinery/air_defense/verb/test_pvo()
	set name = "Test PVO"
	set category = "Debug"
	set src in oview(1)

	to_chat(world, "Произвожу расчёт")

	pvo_calc.do_calc()

	to_chat(world, "Рассчёт произведён")
