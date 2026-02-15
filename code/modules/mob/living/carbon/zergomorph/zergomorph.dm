/mob/living/carbon/zergomorph
	name = "Zergomoprh Drone"
	desc = "oh what the fuck is that"
	icon = 'icons/mob/tyranids_port.dmi'
	icon_state = "hormagaunt"
	mob_size = MOB_MEDIUM

	health = 200
	maxHealth = 200
	var/last_acid = 0

/mob/living/carbon/zergomorph/warrior
	name = "Zergomoprh Warrior"
	icon_state = "warrior"

/mob/living/carbon/zergomorph/venom
	name = "Zergomoprh Venom"
	icon_state = "venomthropes"

/mob/living/carbon/zergomorph/mine
	name = "Zergomoprh Mine"
	icon_state = "mine"

/mob/living/carbon/zergomorph/verb/Plant_Weed()
	set name = "Plant Grass"
	set category = "Zerg Abilities"
	set desc = "Spawn grass on turf"

	var/turf/T = get_turf(src)
	T.ChangeTurf(/turf/simulated/floor/zergomorph_weed)
	to_chat(src, "<span class='notice'>Planted Weed!</span>")

/turf/simulated/floor/zergomorph_weed
	name = "Strange Meat Weed"
	desc = "Damn what teh fuck is that meat-like strange floor or what the fuck is that? Some kind of weed?"
	icon = 'icons/mob/tyranids_port.dmi'
	icon_state = "weednode"
