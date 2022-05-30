behaviors();
dir += tspd;
spd += acc;
direction = dir;
speed = spd;
dir2hv(dir, spd);
speed = 0;
x += hspd;
y += vspd;

if length && !made && point_distance(x, y, startdata.x, startdata.y) > precision {
	//if variable_struct_exists(startdata, "behaviors") {
	behind = c_link(startdata.x, startdata.y, startdata.spd, startdata.dir, startdata.length-1, startdata.precision, startdata.type, startdata.color, startdata.behavior);
	/*} else {
		behind = c_link(startdata.x, startdata.y, startdata.spd, startdata.dir, startdata.length-1, startdata.precision, startdata.type);
	}*/
	made = true;
}
image_alpha = clamp(image_alpha+((abs(hspd)+abs(vspd))/2+speed)/10, 0, alpha);

if x > 400 || x < -100 || y > 420 || y < -100 {
	instance_destroy();
}