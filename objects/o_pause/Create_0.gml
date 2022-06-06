draw_enable_drawevent(true); //turn off frameskip while in menu
instance_activate_object(o_uicontroller)
pausesurf = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));
surface_set_target(pausesurf);
shader_set(z_paused);
draw_surface(application_surface,0,0);

shader_reset();
surface_reset_target();
//surface_copy(pausesurf,0,0,application_surface);
pausebuff = buffer_create(1,buffer_grow,1); //save it in buffer because videoram is wiped on minimize
buffer_get_surface(pausebuff,pausesurf,0);
if(instance_exists(o_uicontroller)){
	foreach(o_uicontroller.UIElements,function(element){
		element.options.disabled = true;
	});
}
global.MenuCursor.target = noone;
global.MenuCursor.disabled = false;
if(global.death){
	generateDeathMenu(300,200);
}
else if(c_getitembyid(ITEMS._CONSOLE).enabled){
	instance_create(0,0,o_console);
	global.MenuCursor.disabled = true;
}
else{
	generatePauseMenu(300,200);	
}
