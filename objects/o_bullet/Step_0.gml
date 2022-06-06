if !simple behaviors();
dir += tspd;
spd += acc;
direction = dir;
speed = spd*global.delta;
x += hspd*global.delta;
y += vspd*global.delta;
image_alpha = min(image_alpha+.04, alpha);
fxxscale = image_xscale*((alpha-image_alpha)*4+1);
fxyscale = image_yscale*((alpha-image_alpha)*4+1);
//var time = get_timer();
if !(x==clamp(x, -50, 340) && y==clamp(y, -50, 390)) {
	instance_destroy();
}
//image_angle = point_direction(xprevious, yprevious, x, y)-90;
//log(get_timer()-time);

//image_alpha = clamp(image_alpha+((abs(hspd)+abs(vspd))/2+speed+.05)/10, 0, alpha);