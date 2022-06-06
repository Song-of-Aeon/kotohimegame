global.stages[DAY.THURS][0] = {
	generation: munction(function() { 
		setUp3d();
		with o_roommanager {
		var yspawn = 270;
		rooms[0][0] = global.room[DAY.THURS][0][DIFFICULTY.HARD][ROOMTYPE.GENERAL][0];
		rooms[0][0].x = 165-16;
		rooms[0][0].y = yspawn+32;
		
		var madeshop = 0;
		var madetreasure = false;
		var shops = 3;
		var length = 7;
		var maxwidth = 4;
		var blackmarketed = false;
		warps = 0;
		warpset = [];
		var i;
		var j;
		var iterations = 0;
		while madeshop < shops || warps < 2 || (!blackmarketed && stupidfalse) {
			iterations++;
			madeshop = 0;
			warps = 0;
			madetreasure = false;
			blackmarketed = false;
			log("attempting gen");
			for(i=0; i<length; i++) {
				//var width = irandom(maxwidth-1)+2;
				var width = maxwidth-i%2+2;
				for(j=0; j<width; j++) {
					if i=3 {
						roomtype = ROOMTYPE.MINIBOSS;
						//log(string(rooms[i+1][j]));
					} else {
						if stageRNG.next(8) = 4 && madeshop < shops && i > 3 {
							roomtype = ROOMTYPE.SHOP;
						} else if stageRNG.next(length-1-i) {
							roomtype = ROOMTYPE.TIME;
						} else {
							roomtype = ROOMTYPE.CIRCLE;
						}
						if stageRNG.next(12) = 4 && warps < 2 && i > 1 {
							roomtype = ROOMTYPE.WARP;
						}
					}
					if (!j || j = width-1) {
						roomtype = ROOMTYPE.NULL;
						if !stageRNG.next(5) && !blackmarketed && (i%2) && stupidfalse {
							roomtype = ROOMTYPE.BLACK;
							blackmarketed = true;
						}
					}
										//log("roomgen " + string(roomtype) + " attempt");

					rooms[i+1][j] = roomgen(roomtype);
					//log("roomgen " + string(roomtype) + " complete");
					switch roomtype {
						case ROOMTYPE.SHOP:
							madeshop++;
							break;
						case ROOMTYPE.WARP:
						array_push(warpset, rooms[i+1][j]);
							warps++;
							//log(i, j);
							break;
					}
					rooms[i+1][j].x = (j-width/2)*32+165;
					rooms[i+1][j].y = -(i*32)+yspawn;
					rooms[i+1][j].j = j;
					rooms[i+1][j].k = i+1;
				}
			}
			log("finishing gen");
		}
		
		warpset[0].warptarget = warpset[1];
		warpset[1].warptarget = warpset[0];
		rooms[length+1][0] = roomgen(ROOMTYPE.BOSS); //bossroom
		rooms[length+1][0].x = 165-16 //bossroom
		rooms[length+1][0].y = -(i*32)+yspawn; //bossroom
		rooms[length+1][0].j = 0; //bossroom
		rooms[length+1][0].k = i+1; //bossroom
		log("completed gen!");
		log("room generation took " + string(iterations) + " tries to get right");
	}}),
	roomgen: munction(function(type) { with o_roommanager {
		
		switch type {
			case ROOMTYPE.WARP:
				var shits = new cell(ROOMTYPE.WARP);
				warpset[warps] = shits;
				break;
			case ROOMTYPE.NULL:
				var shits = new cell(ROOMTYPE.NULL);
				break;
			default:
				//log(type);
				var buit = global.room[DAY.THURS][0][global.difficulty][type][stageRNG.next(array_length(global.room[DAY.THURS][0][global.difficulty][type])-1)];
				var shits = new cell(type, buit.step, buit.difficulty, buit.weight, buit.pool, buit.create, buit.draw, buit.clear, buit.shopkeep, buit.name);
				break;
		}
		return shits;
	}}),
	pathgen: munction(function() {
		for(i = 0; i < array_length(rooms)-1; i++){
			for(j = 0; j < array_length(rooms[i]); j++){
				if rooms[i][j].warptarget.type = ROOMTYPE.NULL {
					continue;
				}
				var thislength = array_length(rooms[i]);
				var thatlength = array_length(rooms[i+1]);
				var smartresult = thislength > thatlength ? j : j-1;
				if i && i < array_length(rooms)-2 {
					rooms[i][j].warptarget.connections = [];
					if !(i%2) {
						smartresult++;			
						rooms[i][j].warptarget.connections = [rooms[i+1][smartresult], rooms[i+1][smartresult+1]];
					} else if i%2 {
						if smartresult-1 >= 0 {
							array_push(rooms[i][j].warptarget.connections, rooms[i+1][smartresult-1]);
						} else {
							rooms[i][j].warptarget.connections = [rooms[i+1][smartresult]];
						}
						if smartresult+1 <= array_length(rooms[i+1]) {
							array_push(rooms[i][j].warptarget.connections, rooms[i+1][smartresult]);
						}
					}
				} else if !i {
					rooms[i][j].warptarget.connections = [];
					var k;
					for (k=0; k<array_length(rooms[i+1]); k++) {
						array_push(rooms[i][j].warptarget.connections, rooms[1][k]);
					}
				} else {
					rooms[i][j].warptarget.connections = [rooms[i+1][0]];
				
				}
				var k;
				//if rooms[i][j].warptarget.connections[k].type != ROOMTYPE.NULL {
					for (k=0; k<array_length(rooms[i][j].warptarget.connections); k++) {
						//log(string(rooms[i][j].warptarget.type) + "to" +string(rooms[i][j].warptarget.connections[k].type));
						if rooms[i][j].warptarget.connections[k].type = ROOMTYPE.NULL {
							array_delete(rooms[i][j].warptarget.connections, k, 1);
							k--;
						}
					}
				//}
				//log(rooms[i][j].warptarget.connections[0].y);
			}
			/*if !!true {}
			new bullet();/*/
		}
	}),
	bgdraw: munction(function() {
		with o_3dmanager {
			surface_set_target(global.surfaces.bg);
			//draw_clear_alpha(0,0);
			surface_reset_target();
			
			var camera = camera_get_active();
			global.vmat = camera_get_view_mat(camera);
			global.projmat = camera_get_proj_mat(camera);
			//y++;
			var c_darkpurple = $360D33
			draw_set_alpha(1)
			//var c_darkpurple = $0;
			var aeons_color = make_color_rgb(53,21,27)
			draw_clear_alpha(aeons_color,1);
			//draw_sprite_stretched(s_kybox,0,0,0,room_width,room_height);
			//mousey = -20
			//gpu_pop_state()
			surface_set_target(global.surfaces.threedee);
			draw_clear_alpha(aeons_color,1);

			gpu_set_alphatestenable(true);
			//gpu_set_alphatestref()
			gpu_set_cullmode(cull_clockwise)
			gpu_set_ztestenable(true);
			gpu_set_zwriteenable(true);
			gpu_set_fog(true,aeons_color,0,2000);
	

			camera_set_view_mat(camera,matrix_build_lookat(global.camerax,global.cameray,global.cameraz,global.camerax +cos(mousex/100),global.cameray +sin(mousex/100),global.cameraz+sin(mousey/100),0,0,-1));

			camera_set_proj_mat(camera, matrix_build_projection_perspective_fov(60, 310/360, 20, 5000));
			camera_apply(camera);

			shader_reset();
			draw_set_lighting(true);
			draw_light_define_direction(1, 0, 1, 0, c_white);
			draw_light_enable(1, true);
			draw_light_define_ambient($999999);
			//shader_set(z_differentnormal)
			gpu_set_texrepeat(true);
			var loopdist = 10*26.48697280883789*25; //need better way...
			for(var i = 0; i < ds_list_size(models);i++){
				if(models[|i].x - 3000 > global.camerax){ //if they are too far away,
					continue;
				}
				if(models[|i].x+300 < global.camerax){ //if they are behind us
					models[|i].x+= loopdist;
				}
				models[|i].draw();	
				
			}
			shader_reset();
			//shader_reset();
			matrix_set(matrix_world,matrix_build_identity())
			gpu_set_texfilter(false);
			//draw_sprite(s_thewalls,0,0,0);

			camera_reset()
			//gpu_set_alphatestenable(true)
		
			gpu_set_alphatestenable(false);
			
			gpu_set_ztestenable(false);
			gpu_set_zwriteenable(false);
			gpu_set_colorwriteenable([1,1,1,0]);
			surface_reset_target();
			gpu_set_fog(false,c_white,0,0)
			gpu_set_cullmode(cull_noculling)
			draw_set_color(c_white)
			
			//gpu_set_tex_filter(true)
			draw_surface_stretched(global.surfaces.threedee,0,0,room_width,room_height);
			draw_surface(global.surfaces.bg,camera_get_view_x(view_camera[0]) ,camera_get_view_y(view_camera[0]));
			surface_set_target(global.surfaces.bg);
			draw_clear_alpha(0,0);
			surface_reset_target();
			//gpu_set_tex_filter(false)
			gpu_set_colorwriteenable([1,1,1,1]);
			
			
			//gpu_set_colorwriteenable(true,true,true,true);
		}
	}),
	name: "THURSDAY STAGE ONE",
	banner: s_stage1bn,
}


function setUp3d(){
		o_3dmanager.models = ds_list_create();
		var vertf = vertex_format_create_simple(true,true,true,false);
		var shrine_tex = sprite_add("shrine thing tex.png",false,false,false,0,0);
		var eks = 0
		var spr = sprite_add("dirt.png",0,false,false,0,0);
		var water = sprite_add("white.png",0,false,false,0,0) //lol
		eks = 0;
		//loopdist = 10*26.48697280883789*25
		repeat(10){
			var a = new Model("lake-tile-1.dat",spr,undefined,eks,0,0,25,0,0,0,undefined);
			eks+= 26.48697280883789*25;
		}
		eks = 0
		repeat(10){
				var a = new Model("lake-water-1.dat",water,vertf,eks,0,-1,25);
				a.draw = munction(function(){
					shader_set(z_thursday1_water);
					matrix_set(matrix_world,matrix_build(x,y,z,xrot,yrot,zrot,scale,scale,scale ))
					vertex_submit(vertexBuffer,pr_trianglelist,tex);
					shader_reset();
				});
				eks+= 26.48697280883789*25;
		}
		eks = 0;
		//nu Model("tree-1.dat",spr,undefined,0,0,0,1,0,0,0,undefined);
		var treeTex = sprite_add("treetex.jpg",0,false,false,0,0);
		repeat(10*5){
			for(var i = 0; i < 2; i++){
				nu Model("tree-1.dat",treeTex,undefined,eks,-150-(50*i),0-35,50,0,0,0+random(360),undefined);
				nu Model("tree-1.dat",treeTex,undefined,eks,150+(50*i),0-35,50,0,0,180+random(360),undefined);
				
			}
			eks += 26.48697280883789*5;
		}
		
		
		eks = 0;
		repeat(10){
			nu Model("tile-roof-1.dat",s_grass,undefined,eks,0,180,25,0,180,0,undefined);
			eks+= 26.48697280883789*25;
		}
		
}