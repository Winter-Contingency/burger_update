/obj/item/enchanting_chalk
	name = "enchanting chalk"
	desc = "It's just like preschool!"
	desc_extended = "Draw enchanting runes with this magical chalk. Has a limited amount of uses."
	icon = 'icons/obj/item/drawing_chalk.dmi'
	icon_state = "inventory"

	value = 700

	var/uses_left = 7


/obj/item/enchanting_chalk/update_icon()

	icon_state = "[initial(icon_state)]_[uses_left]"

	return ..()

/obj/item/enchanting_chalk/get_value()
	. = ..()

	. *= uses_left/initial(uses_left)

	. = CEILING(.,1)

	return .

/obj/item/enchanting_chalk/click_on_object(var/mob/caller as mob,var/atom/object,location,control,params)

	if(isturf(object))
		INTERACT_CHECK


		if(caller.loc != object)
			caller.to_chat(span("warning","You must draw the rune at your feet!"))
			return FALSE

		var/turf/T = object
		for(var/k in DIRECTIONS_ALL)
			var/turf/T2 = get_step(T,k)
			if(is_wall(T2) || T2.is_occupied())
				caller.to_chat(span("warning","There isn't enough room here to draw an enchantment circle!"))
				return FALSE
		var/obj/structure/interactive/enchantment_circle/EC = new(T)
		INITIALIZE(EC)
		GENERATE(EC)
		FINALIZE(EC)
		caller.visible_message(span("notice","\The [caller.name] touches \the [T.name] with \the [src.name], magically creating \a [EC.name]."))
		uses_left--
		if(uses_left <= 0)
			qdel(src)
		else
			update_sprite()

	return ..()

