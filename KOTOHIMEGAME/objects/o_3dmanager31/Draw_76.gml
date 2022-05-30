/// @description Insert description here
// You can write your code in this editor
surface_set_target(global.surfaces.bg);
//draw_clear(c_gray);
surface_reset_target();

view_enabled = true;
view_visible[1] = true;
view_surface_id[1] = global.surfaces.bg;


cam = camera_create();
projMat =  matrix_build_projection_perspective_fov(-60, -view_get_wport(0)/view_get_hport(0), 32, 3000);
camera_set_proj_mat(cam, projMat);
view_set_camera(1,cam);


look_x = 0;
look_y = 0;
acc = 0;