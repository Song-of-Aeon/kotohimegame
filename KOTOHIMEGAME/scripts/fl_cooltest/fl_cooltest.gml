global.stages[DAY.THURS][0] = {
	generation: munction(function() { with o_roommanager {
		rooms[0][0] = cl_testtalk(); //startroom
		rooms[0][0].x = 165-16;
		rooms[0][0].y = 332;
		var madeshop = 0;
		var madetreasure = false;
		var shops = 1;
		var length = 7;
		var maxwidth = 7;
		var i;
		var j;
		while madeshop < shops {
			madeshop = 0;
			madetreasure = false;
			//for(i=0; i<length; i++) {
				//var width = irandom(maxwidth-1)+2;
				var width = maxwidth;
				for(j=0; j<width; j++) {
					
					if stageRNG.next(8) = 4 && madeshop < shops {
						roomtype = ROOMTYPE.SHOP;
					} else if stageRNG.next(width-abs(j)*2) {
						roomtype = ROOMTYPE.TIME;
					} else {
						roomtype = ROOMTYPE.CIRCLE;
					}
					rooms[1][j] = roomgen(roomtype);
					switch roomtype {
						case ROOMTYPE.SHOP:
							madeshop++;
							break;
					}
					rooms[1][j].x = (j-width/2)*32+165;
					rooms[1][j].y = -(32)+300-abs(j-(width-1)/2)*16;
					rooms[1][j].j = j;
					rooms[1][j].k = 1;
				}
			//}
		}
		rooms[2][0] = roomgen(ROOMTYPE.BOSS); //bossroom
		rooms[2][0].x = 165-16;
		rooms[2][0].y = 140;
	}}),
	roomgen: munction(function(type) { with o_roommanager {
		switch type {
			default:
				var buit = global.room[DAY.THURS][0][type][stageRNG.next(array_length(global.room[DAY.THURS][0][type])-1)];
				return new cell(buit.time, type, buit.pickuptype, buit.step, buit.pool, buit.create, buit.draw, buit.clear);
				break;
		}
	}}),
	pathgen: munction(function() {
		for(i = 0; i < array_length(rooms)-1; i++){
			for(j = 0; j < array_length(rooms[i]); j++){
				rooms[i][j].connections = [];
				if !i {
					var k;
					for (k=0; k<array_length(rooms[i+1]); k++) {
						if abs(k-3)<2
							array_push(rooms[i][j].connections, rooms[1][k]);
					}
					//array_push(rooms[i][j].connections, rooms[1][4]);
				} else if !(i-1) {
					if j {
						array_push(rooms[i][j].connections, rooms[1][j-1]);
					}
					if j < array_length(rooms[i])-1 {
						array_push(rooms[i][j].connections, rooms[1][j+1]);
					}
					array_push(rooms[i][j].connections, rooms[2][0]);
				}
			}
			/*if !!true {}
			new bullet();/*/
		}
	}),
	bgdraw: munction(function() {
		with o_3dmanager {
			var camera = camera_get_active();
			global.vmat = camera_get_view_mat(camera)
			global.projmat = camera_get_proj_mat(camera)
			var c_darkpurple = $360D33
			//var c_darkpurple = $0
			draw_clear_alpha(c_darkpurple,1);
			//draw_sprite(s_pace,0,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]));
			mousey = -20

			gpu_set_alphatestenable(true);
			//gpu_set_alphatestref()
			gpu_set_ztestenable(true);
			gpu_set_zwriteenable(true);
			gpu_set_fog(true,c_darkpurple,0,0);


			camera_set_view_mat(camera,matrix_build_lookat(global.camerax,global.cameray,global.cameraz,global.camerax +cos(mousex/100),global.cameray +sin(mousex/100),global.cameraz+sin(mousey/100),0,0,-1));

			camera_set_proj_mat(camera, matrix_build_projection_perspective_fov(60, 310/360, 0.01, 5000));
			camera_apply(camera);

			//shader_reset();
			for(var i = 0; i < ds_list_size(models);i++){
				models[|i].draw();	
			}
			shader_reset();
			gpu_set_texfilter(false);
			//draw_sprite(s_thewalls,0,0,0);

			camera_reset()
			//gpu_set_alphatestenable(true)

			gpu_set_alphatestenable(false);
			gpu_set_ztestenable(false)
			gpu_set_zwriteenable(false);
			gpu_set_fog(false,c_white,0,20);
			draw_surface(global.surfaces.bg,camera_get_view_x(view_camera[0]) ,camera_get_view_y(view_camera[0]));
			//gpu_set_colorwriteenable(true,true,true,true);
		}
	}),
	name: "THURSDAY STAGE ONE",
	banner: s_stage1bn,
}