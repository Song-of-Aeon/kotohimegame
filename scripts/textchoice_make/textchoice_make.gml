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
	array_remove(choices, u);
	global.MenuCursor.draw = method(undefined, function() {
		surface_set_target(global.surfaces.HUD);
		draw_set_color(c_white);
		//draw_rectangle(x,y,x+width,y+height,true);
		//draw_sprite_ext(s_itemselector,0,x,y,(width+6)/32,(height+6)/32,0,c_white,1);
		surface_reset_target();
	});
	//y += 80;
	var choicecount = array_length(choices);
	var guys = [];
	var i, dude;
	for (i=1; i<choicecount+1; i++) {
		dude = makeGenericElement(1280/2, i*(720/(choicecount+1)), string_width(choices[i-1].name), 60); //640 360 BAD BAD BAD
		dude.choicename = choices[i-1].name;
		dude.choicedesc = choices[i-1].desc;
		dude.draw = method(dude, function(){
			draw_set_halign(fa_center);
			if global.MenuCursor.target == self {
				set_font_style(FONT.TALK);
				draw_text(x, y, ">" + choicename + "<");
				set_font_style(FONT.GLOSSARY);
				draw_text(x, y+30, choicedesc);
				set_font_style(FONT.TALK);
			} else {
				draw_text(x, y, choicename);
			}
		});
		array_push(guys, dude);
		//mymans = choices[i-1].func;
		//dude.onSelect = function_append(mymans, function() {global.MenuCursor.disabled = true;});
		dude.onSelect = choices[i-1].func;
	}
	global.MenuCursor.target = o_uicontroller.UIElements[0];
	global.MenuCursor.disabled = false;
	return guys;
}