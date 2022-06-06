
function dir2hv(dir=direction, spd=speed) {
	//gml_pragma("forceinline")
	//if dir && spd {
		hspd = (dsin(dir+90)%360)*spd;
		vspd = (dcos(dir+90)%360)*spd;
		dir = 0;
		spd = 0;
	//}
	
}
function hv2dir(hspd, vspd) {
	spd = (abs(hspd)+abs(vspd))/2;
	dir = darctan2(hspd, vspd);
	speed = spd;
	direction = dir;
}