pos = {
	x: 0,
	y: 0
}
inventory = [ITEMS.PARASOL, ITEMS.ROCKS, ITEMS.ROCKS];
ISAAC.state = NUMBER5;
global.credit = 0;
//state = st_menuselecting;
state = c_null;
enum SHOPMODE {
	MINE,
	YOURS,
	ACTIVES,
}
currentmode = 0;
shopkeep = global.currentroom.shopkeep;
global.MenuCursor.target = noone;
