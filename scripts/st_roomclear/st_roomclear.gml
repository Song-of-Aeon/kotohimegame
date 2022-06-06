function st_roomclear() {
	/*if(ISAAC.y < ISAAC.pocpoint) && !go && ISAAC.state = st_standard {
		ISAAC.state = st_lock;
		go = true;
		isaacSpeed = 0;
		with o_pickup pulled = true;
	}*/
	/*repeat(2) {
		var monster = irandom(global.gh);
		var demon = -10;
		var guy = new Particle(demon, monster, function() {
			draw_set_color(c_yellow);
			draw_set_alpha(.8);
			draw_circle(x, y, size, false);
			size -= .3;
			if !size die();
		}, bm_add, u, point_direction(demon, monster, global.gw/2, global.gh/2), random(1)+2);
		guy.size = 5.4;
	}
	repeat(2) {
		var monster = -10;
		var demon = irandom(global.gw);
		var guy = new Particle(demon, monster, function() {
			draw_set_color(c_yellow);
			draw_set_alpha(.8);
			draw_circle(x, y, size, false);
			size -= .3;
			if !size die();
		}, bm_add, u, point_direction(demon, monster, global.gw/2, global.gh/2), random(1)+2);
		guy.size = 5.4;
	}
	repeat(2) {
		var monster = irandom(global.gh);
		var demon = global.gw+10;
		var guy = new Particle(demon, monster, function() {
			draw_set_color(c_yellow);
			draw_set_alpha(.8);
			draw_circle(x, y, size, false);
			size -= .3;
			if !size die();
		}, bm_add, u, point_direction(demon, monster, global.gw/2, global.gh/2), random(1)+2);
		guy.size = 5.4;
	}
	repeat(2) {
		var monster = global.gh+10;
		var demon = irandom(global.gw);
		var guy = new Particle(demon, monster, function() {
			draw_set_color(c_yellow);
			draw_set_alpha(.8);
			draw_circle(x, y, size, false);
			size -= .3;
			if !size die();
		}, bm_add, u, point_direction(demon, monster, global.gw/2, global.gh/2), random(1)+2);
		guy.size = 5.4;
	}*/
	
	if(go){
		c_input();
		/*if select {
			if instance_exists(o_screenshake) with o_screenshake {amplitude /= 2};
			isaacSpeed *= 2;
		}*/
		if back {
			queuedroom = [];
		}
		//c_screenshake(5,60);
		instance_create(30+random_range(-30,30),random_range(0,300),o_woosh);
		instance_create(280+random_range(-30,30),random_range(0,300),o_woosh);
		//ISAAC.y+=isaacSpeed;
		if instance_exists(o_shopkeep) {
			o_shopkeep.disable = true;
		}
		//isaacSpeed+=0.1;
		
		
		//if (ISAAC.y >= 260) {
			if mappos.y <= array_length(rooms)-1 {
			//if false {
				if !(array_length(queuedroom)-1) {
					ISAAC.state = NUMBER5;
					state = st_map;
					drawstate = st_mapdraw;
					mappos.x = 0;
					c_loadmaplines();
					
				} else {
					c_moveroom(queuedroom[0]);
					array_delete(queuedroom, 0, 1);
				}
				go = false;
			} else {
				global.currentstage++;
				with o_roommanager c_generatestage();
				count = 0;
				ISAAC.state = NUMBER5;
				state = st_worldmap;
				drawstate = st_worldmapdraw;
				
				//ISAAC.y = 400;
				go = false;
			}
		//}
	}
}
function st_drawclear() {
	if go && (array_length(queuedroom)-1) {
		surface_set_target(global.surfaces.HUD);
		draw_line_width(400, 210, 400, min(130+ISAAC.y/3.25, 210), 4);
		draw_text(410, 200, "next...");
		surface_reset_target();
	} else if !go {
		//draw_sprite(s_arrow, 0, 155, 60+abs(sin(global.count/50)*40));
	}
}

function create_particle_orange(x,y){
		function draw(){
			//gpu_set_blendmode_ext(bm_dest_colour, bm_zero);
			draw_set_color(c_orange);
			//draw_set_alpha(0.2)
			draw_circle(x,y,size,false)
			size-=0.1;
			if(size < 0) die();
			//update();
		}
		var part = new Particle(x,y,draw,bm_normal,noone,90,0,-2,application_surface);
		part.size = 5;
	}
	