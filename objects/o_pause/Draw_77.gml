/// @description Insert description here
// You can write your code in this editor
if(!surface_exists(pausesurf)){
	log("pausesurf has been destroyed, reloading from buffer");
	pausesurf = surface_create(1,1);
	buffer_set_surface(pausebuff,pausesurf,0);
}
surface_set_target(application_surface);
gpu_set_colorwriteenable(1,1,1,0)
draw_surface(pausesurf,0,0);
gpu_set_colorwriteenable(1,1,1,1)

surface_reset_target();

