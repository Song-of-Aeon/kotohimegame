global.stages[DAY.SUN][0] = {
	generation: munction(function() { with o_roommanager {
		rooms[0][0] = global.room[DAY.SUN][0][DIFFICULTY.EMPTY][ROOMTYPE.GENERAL][0];
		rooms[0][0].x = 165-16;
		rooms[0][0].y = 240+32;
		var length = 4;
		i = 0;
		for(i=0; i<length; i++) {
			if i < 3 {
				roomtype = ROOMTYPE.TIME;
			} else {
				roomtype = ROOMTYPE.SHOP;
			}
			rooms[i+1][0] = roomgen(roomtype);
			rooms[i+1][0].x = 165-16;
			rooms[i+1][0].y = -(i*32)+240;
			rooms[i+1][0].j = 0;
			rooms[i+1][0].k = i+1;
		}
		rooms[length+1][0] = global.room[DAY.SUN][0][DIFFICULTY.EMPTY][ROOMTYPE.GENERAL][0];
		rooms[length+1][0].x = 165-16;
		rooms[length+1][0].y = -(i*32)+240;
	}}),
	roomgen: munction(function(type) { with o_roommanager {
		var buit = global.room[DAY.SUN][0][DIFFICULTY.EMPTY][type][clamp(i, 0, array_length(global.room[DAY.SUN][0][DIFFICULTY.EMPTY][type])-1)];
		var shits = new cell(type, buit.step, buit.difficulty, buit.weight, buit.pool, buit.create, buit.draw, buit.clear, buit.shopkeep, buit.name);
		return shits;
	}}),
	pathgen: munction(function() {
		for(i = 0; i < array_length(rooms)-1; i++){
			rooms[i][0].warptarget.connections = [rooms[i+1][0]];
		}
	}),
	bgdraw: munction(function() {
		with o_3dmanager {
			var camera = camera_get_active();
			global.vmat = camera_get_view_mat(camera)
			global.projmat = camera_get_proj_mat(camera)
			y++;
			var c_darkpurple = $360D33
			//var c_darkpurple = $0
			draw_clear_alpha(c_blue,1);
			//draw_sprite(s_pace,0,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]));
			mousey = -20
			//gpu_pop_state()
			gpu_set_alphatestenable(true);
			//gpu_set_alphatestref()
			gpu_set_ztestenable(true);
			gpu_set_zwriteenable(true);
			//gpu_set_fog(true,c_darkpurple,0,0);


			camera_set_view_mat(camera,matrix_build_lookat(global.camerax,global.cameray,global.cameraz,global.camerax +cos(mousex/100),global.cameray +sin(mousex/100),global.cameraz+sin(mousey/100),0,0,-1));

			camera_set_proj_mat(camera, matrix_build_projection_perspective_fov(60, 310/360, 0.01, 5000));
			camera_apply(camera);

			//shader_reset();
			shader_set(z_discard)
			for(var i = 0; i < ds_list_size(models);i++){
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
			gpu_set_ztestenable(false)
			gpu_set_zwriteenable(false);
			gpu_set_fog(false,c_white,0,20);
			draw_surface(global.surfaces.bg,camera_get_view_x(view_camera[0]) ,camera_get_view_y(view_camera[0]));
			//gpu_set_colorwriteenable(true,true,true,true);
		}
	}),
	name: "TUTORIAL",
	banner: s_stage1bn,
}