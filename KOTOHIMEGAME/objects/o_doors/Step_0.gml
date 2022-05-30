count++;
if count = 11 && !slammed {
	global.surfaces.restart_surfaces();
	room_goto(target);
	goingevent();
	//instance_create(0, 0, ISAAC);
	slammed = true;
	count = 0;
	global.count = 0;
	c_screenshake(10,10);
	/*function create_dust_particle(x,y){
		function draw(){
			/*if(surface_get_target() != global.surfaces.screen2){
				surface_set_target(global.surfaces.screen2);
			}*/
			/*draw_set_color(make_color_rgb(138, 70, 56));
			draw_set_alpha(0.2);
			draw_circle(x,y,2,false)
		}
		var a = undefined;
		var part = new Particle(x,y,draw,a,a,a,a,a,global.surfaces.screen2);
	}
	var eks = surface_get_width(global.surfaces.screen2)/2;
	var why = surface_get_height(global.surfaces.screen2);
	repeat(40){
		create_dust_particle(eks,random_range(0,why));
	}*/
} else if count = 41 {
	instance_destroy();
}
