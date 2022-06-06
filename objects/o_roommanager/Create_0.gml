room_set_persistent(BASEMENT, nah);
stageRNG = new RNG(global.seed);
roomRNG = new RNG(stageRNG);
spawnRNG = new RNG(stageRNG);
function update_room_rng(){
	roomRNG.value =stageRNG.value_orig+(currentx*56)+(currentroom*40)
	spawnRNG.value =stageRNG.value_orig+(currentx*56)+(currentroom*40)
}
evaluatePools();
x_shopkeepers();
//c_rooms();
//x_itempools();
//rooms = [[nitorishop], [room451, nitorishop], [room300, chimatashop, room451], [nitorishop, room300], [room451, room300, rinnosukeshop], [diezone]];
currentroom = 0;
currentx = 0;
countwo = 0;
curlcount = 0;
state = st_roomactive;

mappos = {
	x: 0,
	y: 1
}
drawstate = NUMBER5;
madeshop = false;
madeboss = false;
madeitem = false;
stage = 1;
//clearedrooms = array_create(20, array_create(20, array_create(20, false))); //stage, x, y
//c_generatestage(global.stagestyles[?"intro"].generation);
randomize();
c_generatestage();
iterations = 0;
go = false;
//rooms[currentroom][currentx].create();
global.currentroom = rooms[currentroom][currentx];
//global.stagetwod = false;
camera = {
	x: 0,
	y: 0
}
queuedroom = [global.currentroom];
worldrot = 0;
delay = 0;
c_loadmaplines();
mapfall = 180;