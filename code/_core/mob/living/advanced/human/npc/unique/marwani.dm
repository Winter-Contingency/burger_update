/mob/living/advanced/human/npc/unique/marwani
	name = "Ilaeza Marwani"
	desc = "Fucking liggers."
	mob_species = /datum/species/reptile_advanced/

	mob_outfit = /datum/outfit/marwani

	ai = null

	gender = FEMALE

/mob/living/advanced/human/npc/unique/marwani/Initialize()
	..()
	change_organ_visual("skin", desired_color = "#8CA73E")
	change_organ_visual("hair_head", desired_color = "#fff0be", icon_state = "unathi_frills")