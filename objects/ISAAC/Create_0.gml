c_input();
//textstyles();
//layer_shader(layer,z_enredden);
//depth = -1;


global.me = id;
global.count = 0;


//gc_enable(false);
/*
shitter = global.surfaces.preDraw;
skruh = method(global.surfaces,function(){
	log("printing this before predraw!");
	ISAAC.shitter();
});
global.surfaces.preDraw = skruh;

shitter2 = global.surfaces.preDraw;
skruh = method(global.surfaces,function(){
	ISAAC.shitter2();
	log("printing this after predraw!");
});
global.surfaces.preDraw = skruh;*/
surfaces_init();
state = c_null;
hspd = 0;
vspd = 0;
familiars = [];
count = 0;
focus = false;
hput = 0;
vput = 0;
pocced = .3;
pocpoint = 0;
focusfx = 0;

/*statcaps = {
	shotpower:4,
	options:4,
	bulletsize:3,//
	bulletspeed:3,//
	agility:4,
	focusspeed:2,//
	radius:4,
	collectionpoint:4,
}
statmins = {
	shotpower:1,
	options:1,
	bulletsize:1,
	bulletspeed:1,
	agility:1,
	focusspeed:1,
	radius:1,
	collectionpoint:1,
}
*/
defaultstats = {
	//normal stats
	shotpower:1,
	options:1,
	bulletsize:1,
	bulletspeed:1,
	agility:1,
	focusspeed:1,
	radius:1,
	collectionpoint:1,
	
	//bonus stats
	defense:1,
	hitboxsize:2.5,
	critrate:0, 
	critdmg:3,
	deathbombwindow: 100,
	inventorysize: 12,
}

//normal stats
shotpower=1;
options=1;
bulletsize=1;
bulletspeed=1;
agility=1;
focusspeed=1;


//bonus stats
defense=1;
hitboxsize=1;
critrate=1;
critdmg=1;
deathbombwindow=1;


pickups = array_create(PICKUPS.SIZE);


var makeEmptyHook = function(){
	var bruh = ds_list_create();
	bruh[|0] = NUMBER5;
	return bruh;
}
hooks = {
	onstep: makeEmptyHook(), //implemented
	onhit: makeEmptyHook(), //implemented
	onshoot: makeEmptyHook(), //implemented
	ondeathbomb: makeEmptyHook(),
	onroomclear: makeEmptyHook(), //implemented
	onfloorclear: makeEmptyHook(),
	onenemydeath: makeEmptyHook(), //implemented
	onenemyhit: makeEmptyHook(), //implemented
	ondie: makeEmptyHook(), //implemented
	onstats: makeEmptyHook(), //implemented
	onpickup: makeEmptyHook(), //implemented
	ondrop: makeEmptyHook(), //implemented
	onc: makeEmptyHook(), //implemented
	onbomb: makeEmptyHook(), //implemented
	ondraw: makeEmptyHook(), //implemented
	ongraze: makeEmptyHook(),
	asactive: makeEmptyHook(),
	onuidraw: makeEmptyHook(),
	onhuddraw: makeEmptyHook(),
	onstatthreshold: makeEmptyHook(),
	onshopgen: makeEmptyHook(),
	onoptionsload: makeEmptyHook(),
}
myactive[0] = c_getitembyid(ITEMS.NULL);
myactive[1] = c_getitembyid(ITEMS.NULL);
myactive[2] = c_getitembyid(ITEMS.NULL);
myitems = ds_list_create();
ds_list_clear(myitems);
c_resetstats();

maxhp = 20;
hp = 20;
life = 2;
bombs = 3;
defaultbombs = 3;
inv = 0;
invtime = 60;
dietime = 0;
shootcount = 0;

i = 0;
seed = new RNG(global.seed);

set_font_style(FONT.UI);
draw_set_color(c_white);


cloudcount = 0;
//gpu_set_ztestenable(true);
c_playerinit();

log("PLAYER INITTED");