global.stages[DAY.THURS][1] = {
	generation: munction(function() { 
		setUp3d2();
		with o_roommanager {
		var yspawn = 270;
		rooms[0][0] = global.room[DAY.THURS][1][DIFFICULTY.HARD][ROOMTYPE.GENERAL][0];
		rooms[0][0].x = 165-16;
		rooms[0][0].y = yspawn+32;
		
		var madeshop = 0;
		var madetreasure = false;
		var shops = 1;
		var length = 7;
		var maxwidth = 5;
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
		rooms[length+1][0].k = i+1;
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
				var buit = global.room[DAY.THURS][1][global.difficulty][type][stageRNG.next(array_length(global.room[DAY.THURS][1][global.difficulty][type])-1)];
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
			draw_set_color(c_black);
			draw_set_alpha(0.5)
			draw_rectangle(0,0,1000,1000,false);
			surface_reset_target();
			draw_clear_alpha(c_black,1);
			draw_set_alpha(1);
			surface_set_target(global.surfaces.threedee);
			draw_set_lighting(false)
			var camera = camera_get_active();
			global.vmat = camera_get_view_mat(camera)
			global.projmat = camera_get_proj_mat(camera)
			y++;
			//var c_darkpurple = $0
			draw_clear_alpha(c_blue,1);
			draw_sprite_stretched(s_kybox,0,0,0,surface_get_width(global.surfaces.threedee)+1,surface_get_height(global.surfaces.threedee)+1);
			//mousey = -20
			//gpu_pop_state()

			gpu_set_alphatestenable(true);
			//gpu_set_alphatestref()
			gpu_set_ztestenable(true);
			gpu_set_zwriteenable(true);
			//gpu_set_fog(true,c_darkpurple,0,0);
	

			camera_set_view_mat(camera,matrix_build_lookat(global.camerax,global.cameray,global.cameraz,global.camerax +cos(mousex/100),global.cameray +sin(mousex/100),global.cameraz+sin(mousey/100),0,0,-1));

			camera_set_proj_mat(camera, matrix_build_projection_perspective_fov(60, 310/360, 20, 5000));
			camera_apply(camera);

			//shader_reset();
			shader_set(z_discard)
			for(var i = 0; i < ds_list_size(models);i++){
				models[|i].draw();	
				if(models[|i].x < global.camerax){
					models[|i].x += 400*80;	
				}
			}
			shader_reset();
			//shader_reset();
			matrix_set(matrix_world,matrix_build_identity())
			gpu_set_texfilter(false);
			//draw_sprite(s_thewalls,0,0,0);

			camera_reset()
			//gpu_set_alphatestenable(true)

			gpu_set_alphatestenable(false);
			gpu_set_ztestenable(false)
			gpu_set_zwriteenable(false);
			gpu_set_fog(false,c_white,0,20);
			gpu_set_colorwriteenable([1,1,1,0])
			surface_reset_target()
			draw_surface(global.surfaces.bg,camera_get_view_x(view_camera[0]) ,camera_get_view_y(view_camera[0]));
			draw_surface_stretched(global.surfaces.threedee,0,0,room_width,room_height);
			gpu_set_colorwriteenable([1,1,1,1])
			
			//gpu_set_colorwriteenable(true,true,true,true);
		}
	}),
	name: "THURSDAY STAGE 2",
	banner: s_stage2bn,
}


function setUp3d2(){
	o_3dmanager.mousey = -1.3 //tjhis is awful
	o_3dmanager.models = ds_list_create();
	var vertf = vertex_format_create_simple(true,true,true,false);
	var shrine_tex = sprite_add("shrine thing tex.png",false,false,false,0,0);
	var eks = 0;

	repeat(80) {
	
		a = new Model("shrine thing.dat",shrine_tex,vertf,eks*400,0,0,10,0,0,180);
		a.draw = munction(function(){
			shader_set(z_differentnormal)
			matrix_set(matrix_world,matrix_build(x,y,z,xrot,yrot,zrot,scale,scale,scale ))
		
			vertex_submit(vertexBuffer,pr_trianglelist,tex);
			shader_reset();
		});
		a = new Model("shrine thing.dat",shrine_tex,vertf,eks*400,0,0,10,180,0,180);
		a.draw = munction(function(){
			shader_set(z_differentnormal)
			matrix_set(matrix_world,matrix_build(x,y,z,xrot,yrot,zrot,scale,-scale,scale ))
		
			vertex_submit(vertexBuffer,pr_trianglelist,tex);
			shader_reset();
		});
		eks++;
	//nu Model("lake-tile-1.dat",s_trees,undefined,0,0,0,100,0,0,0,undefined);
	}

	var spr = sprite_add("white.png",0,false,false,0,0)
	a = new Model("water.dat",spr,vertf,0,0,-1,100000000);
	
}
