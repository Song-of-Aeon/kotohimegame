// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function textchoice_make(choices=[new choice(), new choice()]){
	//set_font_style("ui", LANGUAGE.ENGLISH);
	/*background.draw = method(undefined,function(){
		draw_set_color(c_black);
		draw_set_alpha(.5);
		draw_rectangle(x,y,x+options.width,y+options.height,false);
		draw_set_alpha(1);
		draw_set_color(c_white);
	});*/
	global.MenuCursor.draw = method(undefined, function() {
		surface_set_target(global.surfaces.HUD);
		draw_set_color(c_white);
		//draw_rectangle(x,y,x+width,y+height,true);
		draw_sprite_ext(s_itemselector,0,x,y,(width+6)/32,(height+6)/32,0,c_white,1);
		surface_reset_target();
	});
	//y += 80;
	var choicecount = array_length(choices);
	var i, dude;
	for (i=1; i<choicecount+1; i++) {
		dude = makeGenericElement(640/2, i*(360/(choicecount+1)), string_width(choices[i-1].name), 60, s_9slice_cursor); //640 360 BAD BAD BAD
		dude.choicename = choices[i-1].name;
		dude.draw = method(dude, function(){
			draw_set_halign(fa_center);
			draw_text(x, y, choicename);
		});
		//mymans = choices[i-1].func;
		//dude.onSelect = function_append(mymans, function() {global.MenuCursor.disabled = true;});
		dude.onSelect = choices[i-1].func;
	}
	global.MenuCursor.target = o_uicontroller.UIElements[0];
	global.MenuCursor.disabled = false;
}