/obj/item/magazine/halo/m7
	name = "\improper M7 Caseless SMG magazine"
	desc = "IT'S NOT A CLIP. IT'S A MAGAZINE."
	desc_extended = "Contains ammunition for a ranged weapon. Make sure you're trying to use the right caliber."
	icon = 'icons/obj/item/magazine/m7.dmi'
	icon_state = "m7mag"
	bullet_count_max = 30

	weapon_whitelist = list(
		/obj/item/weapon/ranged/bullet/magazine/smg/halo/m7 = TRUE,
	)

	ammo = /obj/item/bullet_cartridge/pistol_10mm
	ammo_surplus = /obj/item/bullet_cartridge/pistol_10mm/surplus

	bullet_length_min = 25
	bullet_length_best = 32
	bullet_length_max = 33

	bullet_diameter_min = 10
	bullet_diameter_best = 10.17
	bullet_diameter_max = 11

	size = SIZE_2

	icon_states = 6

	value = 5