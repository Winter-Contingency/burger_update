/obj/item/weapon/ranged/bullet/magazine/rifle/halo/covenant/fuel_rod
	name = "\improper Type-33 Light Anti-Armor Weapon"
	desc = "Just run from it."
	desc_extended = "The Type-33 Light Anti-Armor Weapon, more commonly known as the Fuel Rod Gun or Fuel Rod Cannon, is a Covenant shoulder-fired mortar/radiation weapon."
	icon = 'icons/obj/item/weapons/ranged/misc/halo/fuelrod.dmi'
	icon_state = "inventory"
	value = 6000

	company_type = "Covenant"

	tier_type = "rocket launcher"

	tier = 3
	bypass_balance_check = TRUE

	automatic = FALSE

	bullet_count_max = 2

	shoot_sounds = list(
	'sound/weapons/halo/covenant/flak_fire_h3_1.wav',
	'sound/weapons/halo/covenant/flak_fire_h3_2.wav',
	'sound/weapons/halo/covenant/flak_fire_h3_3.wav')


	can_wield = TRUE

	size = SIZE_5
	weight = 16

	zoom_mul = 2

	bullet_length_min = 750
	bullet_length_best = 800
	bullet_length_max = 850

	bullet_diameter_min = 65
	bullet_diameter_best = 70
	bullet_diameter_max = 75

	inaccuracy_modifier = 0.25
	movement_inaccuracy_modifier = 1
	movement_spread_base = 1

	uses_until_condition_fall = 0
	dan_mode = FALSE
	rarity = RARITY_RARE

/obj/item/weapon/ranged/bullet/magazine/rocket/halo/m41/update_icon()

	icon_state = initial(icon_state)

	if(!chambered_bullet)
		icon_state = "[icon_state]_unloaded"

	if(!stored_magazine)
		icon_state = "[icon_state]_open"

	return ..()

/obj/item/weapon/ranged/bullet/revolver/rocket/halo/m41/get_base_spread()
	return 0.02

/obj/item/weapon/ranged/bullet/revolver/rocket/halo/m41/get_static_spread()
	return 0.005

/obj/item/weapon/ranged/bullet/revolver/rocket/halo/m41/get_skill_spread(var/mob/living/L)
	return max(0,0.03 - (0.12 * L.get_skill_power(SKILL_RANGED)))

/obj/item/weapon/ranged/bullet/revolver/rocket/halo/m41/use_condition(var/amount_to_use=1)
	adjust_quality(-10)
	return TRUE