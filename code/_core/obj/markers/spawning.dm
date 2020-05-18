/obj/marker/spawning/
	name = "spawning marker"
	icon = 'icons/obj/markers/spawning.dmi'
	initialize_type = INITIALIZE_EARLY

/obj/marker/spawning/Initialize()
	do_spawn(src.loc)
	. = ..()
	qdel(src)
	return .

/obj/marker/spawning/proc/do_spawn(var/turf/T)
	return TRUE

/obj/marker/spawning/window/
	name = "full window"
	icon_state = "window_grille"

/obj/marker/spawning/window/proc/setup_airlock()

	var/touching_space = src.get_best_touching_space()
	if(!touching_space)
		return FALSE

	var/obj/structure/interactive/door/alarm/D = new(src.loc)
	//GENERATEING AND INITIALIZE HANDLED AT ROUND START.

	//This forces it to be one of 4 directions.
	if(touching_space & NORTH)
		D.set_dir(NORTH)
	else if(touching_space & SOUTH)
		D.set_dir(SOUTH)
	else if(touching_space & EAST)
		D.set_dir(EAST)
	else if(touching_space & WEST)
		D.set_dir(WEST)

	return D


/obj/marker/spawning/window/do_spawn(var/turf/T)
	new/obj/structure/interactive/construction/grille(T)
	new/obj/structure/smooth/window(T)
	setup_airlock()

/obj/marker/spawning/window/rcd/do_spawn(var/turf/T)
	var/obj/structure/interactive/construction/grille/G = new(T)
	var/obj/structure/smooth/window/W = new(T)
	INITIALIZE(G)
	INITIALIZE(W)
	GENERATE(G)
	GENERATE(W)
	queue_update_smooth_edges(W)

/obj/marker/spawning/window/reinforced/
	icon_state = "window_grille_reinforced"

/obj/marker/spawning/window/reinforced/do_spawn(var/turf/T)
	new/obj/structure/interactive/construction/grille(T)
	new/obj/structure/smooth/window/reinforced(T)
	setup_airlock()

/obj/marker/spawning/window/extra/
	icon_state = "window_grille_extra"

/obj/marker/spawning/window/extra/do_spawn(var/turf/T)
	new/obj/structure/interactive/construction/grille/plasteel(T)
	new/obj/structure/smooth/window/reinforced/plasma(T)
	setup_airlock()