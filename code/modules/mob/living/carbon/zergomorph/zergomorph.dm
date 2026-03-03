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

// abilities
/mob/living/carbon/zergomorph/verb/Plant_Weed()
	set name = "Plant Grass"
	set category = "Zerg Abilities"
	set desc = "Spawn grass on turf"

	var/turf/T = get_turf(src)
	T.ChangeTurf(/turf/simulated/floor/zergomorph_weed)
	to_chat(src, "<span class='notice'>Planted Weed!</span>")

/mob/living/carbon/zergomorph/venom/verb/Heal_Swarm()
	set name = "Heal Swarm"
	set category = "Zerg Abilities"
	set desc = "Let some swarm to heal your swarm friends"

	for(var/mob/living/carbon/zergomorph/Z in view(3,src))
		Z.revive_health()
	to_chat(src, "<span class='notice'>You healed the swarm!</span>")

/mob/living/carbon/zergomorph/mine/verb/Bio_Explosion()
	set name = "Bio Explosion"
	set category = "Zerg Abilities"
	set desc = "Detonate yourself with dangerous bio explosion"
	explosion(src.loc, 0, 2, 4)
	qdel(src)

// turfs, for example, weed and stuff like that
/turf/simulated/floor/zergomorph_weed
	name = "Strange Meat Weed"
	desc = "Damn what teh fuck is that meat-like strange floor or what the fuck is that? Some kind of weed?"
	icon = 'icons/mob/tyranids_port.dmi'
	icon_state = "weednode"
