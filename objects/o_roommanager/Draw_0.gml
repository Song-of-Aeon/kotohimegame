#region mapdraw
draw_sprite_ext(s_lens, 0, WIDTH-80, HEIGHT+40, 1, 1, mapfall, c_white, 1);
surface_set_target(global.surfaces.map);

draw_clear_alpha(c_white, 0);

//draw_rectangle(-100, -100, surface_get_width(application_surface)+100, surface_get_height(application_surface)+100, false);
draw_set_color(c_white);
draw_set_alpha(1);
if !array_length(queuedroom) {
	var paths = rooms[currentroom][currentx].connections;
} else {
	var paths = queuedroom[array_length(queuedroom)-1].connections;
	var trueplace = queuedroom[array_length(queuedroom)-1];
}

mappos.x = clamp(mappos.x, 0, array_length(paths)-1);
//
var i;
var j;
var k;
var ilen = array_length(rooms)-1;
var jlen;
var klen;
var alph = 1;
draw_set_alpha(1);
for(i=0; i < ilen; i++){
	jlen = array_length(rooms[i])-1;
	for(j=0; j < jlen; j++) {
		myguy = rooms[i][j];
		//log(j);
		if myguy.type == ROOMTYPE.NULL {continue}
		klen = array_length(rooms[i][j].connections);
		for (k=0; k<klen; k++) {
			myfriend = rooms[i][j].connections[k];

			if myguy.accessible > myfriend.accessible {
				myfriend.accessible = clamp(myguy.accessible, 0, 2);
			}
			/*if  {
				myguy.accessible = 3;
			}*/
			if array_contains(queuedroom, myguy) && (array_contains(queuedroom, myfriend) || myfriend = paths[mappos.x]) {
				draw_set_color(c_yellow);
				alph = 1;
			} else {
				draw_set_color(make_color_hsv(255-(i-currentroom)*10, 200, 255));
				alph = (-i*.1+myguy.accessible*.5);
			}
			
			switch myfriend.pickuptype {
				case PICKUPS.SHOTPOWER:
					var colord = c_red;
					break;
				case PICKUPS.OPTIONS:
					var colord = c_blue;
					break;
				case PICKUPS.AGILITY:
					var colord = c_green;
					break;
				case PICKUPS.POC:
					var colord = c_orange;
					break;
				case PICKUPS.RADIUS:
					var colord = c_cyan;
					break;
				default:
					var colord = c_white;
					break;
			}
			var dirstar = point_direction(myguy.warptarget.x, myguy.warptarget.y, myfriend.x, myfriend.y);
			var diststar = point_distance(myguy.warptarget.x, myguy.warptarget.y, myfriend.x, myfriend.y);
			draw_sprite_ext(s_constellationlink, 0, myguy.warptarget.x, myguy.warptarget.y, 1, diststar/100, dirstar-90, c_white, alph);
			/*if (myfriend.type != ROOMTYPE.BLACK || myfriend.accessible = 3) && (myguy.warptarget.type != ROOMTYPE.BLACK || myguy.warptarget.accessible = 3) {
				draw_line_color(
					myguy.warptarget.x,
					myguy.warptarget.y,
					myfriend.x,
					myfriend.y, c_white, colord
				);
			}*/
			//draw_circle(myfriend.x-1, myfriend.y-1, 12, true); //why. why. why is it 31. what is wrong. //UPDATE: I FIGURED IT OUT
		}
		/*if rooms[i][j].cleared {
				draw_sprite_ext(s_mapicon, rooms[i][j].type, rooms[i][j].x, rooms[i][j].y, 1, 1, 0, colord, 1);
			} else if rooms[i][j].accessible {
				draw_sprite_ext(s_mapicon, rooms[i][j].type, rooms[i][j].x, rooms[i][j].y, 1, 1, 0, colord, 1);
			} else {*/
				/*if myguy = trueplace {
					
				}*/
				//draw_sprite_ext(s_mapicon, myguy.type, myguy.x, myguy.y, 1, 1, 0, c_white, 1);
				
			//}
	}
}



draw_set_alpha(1);
var i;
var guy = array_length(queuedroom)-1;
for (i=0; false; i++) {
	if queuedroom[guy].connections[i] = "UNCONNECTED" break;
	draw_set_color(make_color_hsv(255, 200, 255));
	if i!=mappos.x {
		draw_set_alpha(.4);
	}
	//draw_line_width(xdraw+currentx*30-array_length(rooms[mappos.y-1])*15, ydraw-(mappos.y-1)*30, xdraw+rooms[currentroom][currentx].connections[i].x*30-array_length(rooms[mappos.y])*15, ydraw-mappos.y*30, 2);
	//draw_line_width(queuedroom[guy].x, queuedroom[guy].y, queuedroom[guy].connections[guy].x, queuedroom[guy].connections[i].y, 2);
	draw_set_alpha(1);
}
if paths[mappos.x] != "UNCONNECTED" {
	draw_set_color(c_white);
	//draw_sprite(s_mapselector, 0, paths[mappos.x].x, paths[mappos.x].y);
	var lmao = c_white;
	switch paths[mappos.x].pickuptype {
		case PICKUPS.SHOTPOWER:
			lmao = c_red;
			break;
		case PICKUPS.OPTIONS:
			lmao = c_blue;
			break;
		case PICKUPS.AGILITY:
			lmao = c_green;
			break;
		case PICKUPS.RADIUS:
			lmao = c_cyan;
			break;
		case PICKUPS.POC:
			lmao = c_orange;
			break;
	}
	draw_sprite_ext(s_mapicon, paths[mappos.x].type, paths[mappos.x].x, paths[mappos.x].y, 1+(global.count%40)/14, 1+(global.count%40)/14, 0, lmao, 1-(global.count%40)/40);
	draw_rectangle(paths[mappos.x].x-6, paths[mappos.x].y-6, paths[mappos.x].x+6, paths[mappos.x].y+6, true);
	if state = st_map {
		camera.x = lerp(camera.x, paths[mappos.x].x, .1);
		camera.y = lerp(camera.y, paths[mappos.x].y, .1);
	} else {
		camera.x = lerp(camera.x, rooms[currentroom][currentx].x, .1);
		camera.y = lerp(camera.y, rooms[currentroom][currentx].y, .1);
	}
}
	

c_drawmap();
surface_reset_target();
draw_sprite_ext(s_lens, 1, WIDTH-80, HEIGHT+40, 1, 1, mapfall, c_white, 1);
#endregion //its not a function its perpetual //until i make it a function
rooms[currentroom][currentx].draw();
script_execute(drawstate);
surface_set_target(global.surfaces.HUD);

surface_reset_target();