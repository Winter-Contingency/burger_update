/obj/item/magazine/halo/cal30
	name = "\improper 7.62 Caliber LMG magzine"
	desc = "IT'S NOT A CLIP. IT'S A MAGAZINE."
	desc_extended = "Contains ammunition for a ranged weapon. Make sure you're trying to use the right caliber."
	icon = 'icons/obj/item/magazine/30cal.dmi'
	icon_state = "30"
	bullet_count_max = 100

	weapon_whitelist = list(
		/obj/item/weapon/ranged/bullet/magazine/rifle/halo/cal30 = TRUE,
	)

	ammo = /obj/item/bullet_cartridge/rifle_308/nato
	ammo_surplus = /obj/item/bullet_cartridge/rifle_308/nato/surplus

	bullet_length_min = 46
	bullet_length_best = 51
	bullet_length_max = 52

	bullet_diameter_min = 7.6
	bullet_diameter_best = 7.62
	bullet_diameter_max = 7.7

	size = SIZE_3

	icon_states = 1

	value = 20