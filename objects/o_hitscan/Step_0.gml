
currentbehavior = 0;
for (currentbehavior=0; currentbehavior<array_length(behaviors); currentbehavior++) {
	var scr = behaviors[currentbehavior];
	scr();
}
dir += tspd;
spd += acc;
direction = dir;
dir2hv(dir, spd);

if delay {
	delay--;
	/*hv2dir(hspd, vspd);
	hspd = 0;
	vspd = 0;*/
	//endtime -= (abs(hspd)+abs(vspd))/2;
	//image_yscale-=1/sprite_get_height(sprite_index);
} else {
	
	duration--;
	if duration <= 0 {
		instance_destroy();
	}
}
image_alpha = alpha;