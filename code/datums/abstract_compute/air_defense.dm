/datum/pvo_test
	var/result = 0

/datum/pvo_test/proc/do_calc()
	result = 1 + 1
	world.log << "PVO datum: 1+1 = [result]"
	to_chat(world, "PVO datum: 1+1 = [result]")
