/// @description Insert description here
// You can write your code in this editor

try{
	surface_set_target(global.surfaces.HUD);
	for(var i = 0; i < array_length(UIElements);i++){
		UIElements[i].draw();
	}
}
catch(e){
	log(e);
}
finally{
	surface_reset_target();
}

if(!global.MenuCursor.disabled){
	global.MenuCursor.draw();
}
//draw_sprite(s_mistake,0,0,0);

