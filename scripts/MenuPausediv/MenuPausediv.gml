// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function generatePauseMenu(_x,_y){
	global.MenuCursor.draw = method(undefined, function() {
		surface_set_target(global.surfaces.HUD);
		draw_set_color(c_white);
		//draw_rectangle(x,y,x+width,y+height,true);
		draw_sprite_ext(s_itemselector,0,x,y,(width+6)/32,(height+6)/32,0,c_white,1);
		surface_reset_target();
	});
		global.MenuCursor.target = makePauseUIElement(_x,_y,"Resume",c_gameresume);
		//makePauseUIElement(_x,_y+50,"Fart",function(){show_message("fart")});
		makePauseUIElement(_x,_y+50,"Quit",function(){
			room = TITLE;
			global.MenuCursor.disabled = true;
			global.MenuCursor.target = noone;
			STATS.runsabandoned++;
		});
}
function makePauseUIElement(_x,_y,text,onSelect){
	var element = makeGenericElement(_x,_y,100,30,s_mistake);	
	element.onSelect = onSelect;
	element.text = text;
	element.draw = method(element,function(){
		draw_text(x, y, text);
	});
	return element;
}