/obj/screen/zergomorph/spit_acid
	name = "Spit Acid"
	icon = 'icons/mob/screen_spells.dmi'
	icon_state = "firebolt"
	screen_loc = "WEST+2, NORTH"

/obj/screen/zergomorph/acid_spray/Click()
	var/mob/living/carbon/human/H = usr
	var/obj/item/projectile/beam/midlaser/P = new /obj/item/projectile/beam/midlaser(get_turf(H))
	P.launch(get_step(H, H.dir))
	playsound(H, 'sound/weapons/slash.ogg', 50)
