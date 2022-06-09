// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function generateDeathMenu(_x,_y){
	global.MenuCursor.draw = method(undefined, function() {
		surface_set_target(global.surfaces.HUD);
		draw_set_color(c_white);
		//draw_rectangle(x,y,x+width,y+height,true);
		draw_sprite_ext(s_itemselector,0,x,y,(width+6)/32,(height+6)/32,0,c_white,1);
		surface_reset_target();
	});
		global.MenuCursor.target = makeDeathUIElement(_x,_y,"Restart",function(){global.death = false room_restart() global.MenuCursor.disabled = true});
		//makeDeathUIElement(_x,_y+50,"Fart",function(){show_message("fart")});
		makeDeathUIElement(_x,_y+50,"Quit",function(){
			room = TITLE;
			global.MenuCursor.disabled = true;
			global.MenuCursor.target = noone;
			global.death = false;
		});
}
