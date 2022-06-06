function distabs(dir, distance) {
	var dist = {
		x: 0,
		y: 0
	}
	/*var bitch = instance_create(x1, y1, o_null);
	bitch.speed = distance;
	bitch.direction = dir;
	with bitch {
		dir2hv(direction, speed);
		x += hspd;
		y += vspd;
	}
	dist.x = bitch.x;
	dist.y = bitch.y;
	instance_destroy(bitch);*/
	dir2hv(dir, distance);
	dist.x = hspd;
	dist.y = vspd;
	//log(distance, hspd, vspd);
	hspd = 0;
	vspd = 0;
	
	
	return dist;
}