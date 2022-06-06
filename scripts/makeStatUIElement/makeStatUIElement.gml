function makeStatUIElement(_x,_y,stat){
	var element = makeGenericElement(_x, _y, 36, 36, s_null, stat);
	element.statType = stat;
	element.draw = method(undefined,function(){
		//var xpos = 495-8;
		//var ypos = 185-32;
		draw_set_color(c_white);
		draw_set_halign(fa_center);
		var fuckery = false;
		if(!instance_exists(ISAAC)) fuckery = true
		if(fuckery) instance_activate_object(ISAAC)
		//draw_text(x+8, y+32, "   " + string_extend_digits(string((ISAAC.pickups[statType]+100)/100), 0, 2));
		var color;
		var reading;
		//var readcount;
		switch statType {
			case PICKUPS.SHOTPOWER:
				color = c_red;
				reading = ISAAC.statcaps.shotpower;
				//readcount = ISAAC.pickups
				break;
			case PICKUPS.OPTIONS:
				color = c_blue;
				reading = ISAAC.statcaps.options;
				break;
			case PICKUPS.AGILITY:
				color = c_green;
				reading = ISAAC.statcaps.agility;
				break;
			case PICKUPS.POC:
				color = c_orange;
				reading = ISAAC.statcaps.collectionpoint;
				break;
			case PICKUPS.RADIUS:
				color = c_cyan;
				reading = ISAAC.statcaps.radius;
				break;
			default:
				color = c_grey;
		}
		draw_set_color(color);
		draw_rectangle(x, y+32, x+(32*((ISAAC.pickups[statType]/100)/(reading-1))), y+42, false);
		draw_set_color(c_white)
		var i;
		var dudes = reading-1;
		for (i=1; i<dudes; i++) {
			if i<=ISAAC.pickups[statType]/100 draw_set_color(c_white) else draw_set_color(c_black);
			draw_line(x+32/dudes*i, y+32, x+32/dudes*i, y+37);
		}
		draw_set_color(c_white);
		draw_rectangle(x, y+32, x+32, y+42, true);
		
		draw_set_halign(fa_left);
		if(fuckery) instance_deactivate_object(ISAAC);
		/*surface_set_target(global.surfaces.HUD);
		var sprite = s_statico;
		draw_outline(sprite,statType,0.5,0.5,0.5,0.5,1,method(undefined,function(){
			draw_sprite(s_statico,statType,x,y);
		}));
		//draw_outline_better(sprite,statType,0.5,0.5,0.5,1,2,x+sprite_get_width(sprite)/2,y+sprite_get_height(sprite)/2);	
		surface_reset_target();*/
	});
	element.onSelect = method(undefined,function(){
		//log(statType);
		c_sellstats(statType,false);
	});
}