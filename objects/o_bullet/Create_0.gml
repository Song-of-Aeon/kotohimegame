dir = 0;

image_angle = dir - 90;
spd = 0;
tspd = 0; //turnspeed
hspd = 0;
vspd = 0;
acc = 0;
count = 0;
behaviors = NUMBER5;
draws = c_bulletdraw;
conditions = array_create(5);
type = global.bullets.small;
grazed = false;
image_alpha = .4;
alpha = 0;
didit = false;
created = false;
//show_debug_overlay(true);
//depth = 10;
simple = false;
fxxscale = image_xscale*((alpha-image_alpha)*4+1);
fxyscale = image_yscale*((alpha-image_alpha)*4+1);
iterations = 0;
STATS.bulletsspawned++;
seed = new RNG(o_roommanager.roomRNG);
intangible = false;
despawn = c_null;

addvspd = 0;
escapedistance = 50;