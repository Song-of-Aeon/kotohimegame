/// @description Insert description here
// You can write your code in this editor
surface_set_target(application_surface)
shader_set(z_paused)
draw_surface_stretched(pausesurf,0,0,310,360);
//draw_rectangle(0,0,200,200,false);
shader_reset();
surface_reset_target();