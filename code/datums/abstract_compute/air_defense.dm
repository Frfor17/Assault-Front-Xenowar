/datum/pvo_test
	var/result = 0
	var/list/grid = list(
		list(0, 0, 0),
		list(0, 0, 0),
		list(0, 0, 0)
	)



/datum/pvo_test/proc/do_calc()
	var/centered_value = grid[2][2]
	result = 1 + 1
	to_chat(world, "PVO datum: 1+1 = [result]")
	to_chat(world, "Scan sector. Cell Center is equal to [centered_value]")
