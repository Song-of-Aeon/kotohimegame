script_execute(state);

global.currentroom = rooms[currentroom][currentx];
if drawstate != st_mapdraw {
	mapfall = lerp(mapfall, 180, .1);
}
