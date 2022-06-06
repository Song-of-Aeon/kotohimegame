function st_map() {
	c_input();
	//ISAAC.y += isaacSpeed;
	
	//isaacSpeed *= .8;
	queuedroom[0] = rooms[currentroom][currentx];
	var paths = queuedroom[array_length(queuedroom)-1].connections;
	
	hput = rightp-leftp;
	mappos.x += hput;
	//cheating
	vput = downp-upp;
	//mappos.y -= vput;
	//end cheating
	mappos.x = clamp(mappos.x, 0, array_length(paths)-1);
	
	for(i = currentroom; i<array_length(rooms)-1; i++){
		for(j = 0; j<array_length(rooms[i]); j++) {
			rooms[i][j].accessible = false;
		}
	}
	for(j = 0; j < array_length(rooms[currentroom][currentx].connections); j++) {
		if rooms[currentroom][currentx].connections[j] = "UNCONNECTED" break;
		rooms[currentroom][currentx].connections[j].accessible = true;
		paths[mappos.x].accessible = 3;
	}
	
	
	//mappos.y = clamp(mappos.y, 0, -1);
	instance_create(30+random_range(-30,30),random_range(0,300),o_woosh);
	instance_create(280+random_range(-30,30),random_range(0,300),o_woosh);
	/*if hput != 0 || vput != 0 || back || select || special {
		c_loadmaplines();
	}*/
	
	if special && paths[mappos.x].type != ROOMTYPE.BOSS && mapfall >= 370 {
		array_push(queuedroom, paths[mappos.x]);
		log("pushed");
		mappos.y++;
	}
	if back && array_length(queuedroom)-1 && mapfall >= 370 {
		array_pop(queuedroom);
		mappos.y--;
	}
	
	if select && mapfall >= 370 {
		mapfall = -global.gh;
		array_push(queuedroom, paths[mappos.x]);
		if !array_length(queuedroom) {
			c_moveroom(paths[mappos.x]);
		} else {
			array_delete(queuedroom, 0, 1);
			//log(queuedroom[0].type);
			c_moveroom(queuedroom[0]);
			//log(queuedroom[0].type);

		}
	}
	//log(queuedroom);
	//spin 
	mapfall = lerp(mapfall, 386, .06);
}
function st_mapdraw() {
	var shits = (mapfall+(360*360))%360;
	//calculate where the sprite of mapfall resides to pass to shader later
	var eks = (-dcos(shits-90)*329/2) + (WIDTH-80);
	var why = (dsin(shits-90)*329/2) + (HEIGHT+40);
	var theSize = 329/2;
	//draw_circle(eks,why,329/2,false); //test it
	shader_set(z_lens);
	var uniPos = shader_get_uniform(z_lens,"position");
	
	shader_set_uniform_f(uniPos,eks,why,theSize);
	
	draw_surface(global.surfaces.map, 0, 40);
	shader_reset();
	
	
	//log(mappos.x);
	
	//c_drawmap();
	
	//surface_reset_target();
}

function fartfinder() {
	/*var l=i;
	while l*/
}

function c_loadmaplines() {
	exit;
	for(i = currentroom; i<array_length(rooms)-1; i++){
		for(j = 0; j<array_length(rooms[i]); j++) {
			rooms[i][j].accessible = false;
		}
	}
	for(j = 0; j < array_length(rooms[currentroom][currentx].connections); j++) {
		rooms[currentroom][currentx].connections[j].accessible = true;
	}
	paths[mappos.x].accessible = 3;
	var i;
	var j;
	var k;
	var ilen = array_length(rooms)-1;
	var jlen;
	var klen;
	for(i=0; i < ilen; i++){
		jlen = array_length(rooms[i])-1;
		for(j=0; j < jlen; j++) {
			klen = array_length(rooms[i][j].connections);
			for (k=0; k<klen; k++) {
				myguy = rooms[i][j];
				myfriend = rooms[i][j].connections[k];
				if myguy.type = ROOMTYPE.NULL {break}

				if myguy.accessible > myfriend.accessible {
					myfriend.accessible = clamp(myguy.accessible, 0, 2);
				}
				if array_contains(queuedroom, myfriend) {
					myguy.accessible = 3;
				}
				/*if myfriend.accessible < 3 || myguy.accessible < 3 {
					draw_set_color(make_color_hsv(255-(i-currentroom)*10, 200, 255));
				} else {
					draw_set_color(c_yellow);
				}
				draw_set_alpha(-i*.1+myguy.accessible*.5);
				if (myfriend.type != ROOMTYPE.BLACK || myfriend.accessible = 3) && (myguy.warptarget.type != ROOMTYPE.BLACK || myguy.warptarget.accessible = 3) {
					draw_line_width(
						myguy.warptarget.x,
						myguy.warptarget.y,
						myfriend.x,
						myfriend.y, 2
					);
				}*/
			}			
		}
	}
}