function regenerateItemUI(){// dont call this every frame
	exit;
	if(instance_exists(o_uicontroller)){
		o_uicontroller.UIElements = [];
	}
	var hudbg =  makeGenericElement(40,40,0,0,false,undefined,1000);
	hudbg.draw = function(){
		//draw_clear_alpha(c_black,0);
		//surface_set_target(global.surfaces.HUD);
		draw_set_alpha(1);
		draw_sprite(s_ui, 0, 0, 0);
		//surface_reset_target();
	}
	hudbg.options.selectable = false;
	var displayableItems = ds_list_create();
	ds_list_copy(displayableItems, c_getInventory(false)); //automatically gives you the no-mechanic version
	for(var i = 0; i < ds_list_size(displayableItems); i++){
		var drawX = 47+((i)%3)*44-20;
		var drawY = 97+floor((i)/3)*43-20;
		makeItemUIElement(drawX,drawY,displayableItems[|i],i);	
	}
	for(var i = 0; i < array_length(ISAAC.myactive);i++){
		/*if(ISAAC.myactive[i] != c_getitembyid(ITEMS.NULL)){
			makeItemUIElement(i*47+43-20, 319-(i%2)*30-20, ISAAC.myactive[i], i, true);
		}*/
		makeItemUIElement(41-16, 315-16, ISAAC.myactive[0], 0, true);
		makeItemUIElement(87-16, 286-16, ISAAC.myactive[1], 1, true);
		makeItemUIElement(129-16+5, 310-16+5, ISAAC.myactive[2], 2, true);
	}
	var xpos = 495-8;
	var ypos = 185-32;
	makeStatUIElement(xpos, ypos, PICKUPS.SHOTPOWER);
	makeStatUIElement(xpos+50, ypos, PICKUPS.OPTIONS);
	makeStatUIElement(xpos+100, ypos, PICKUPS.AGILITY);
	makeStatUIElement(xpos, ypos+50, PICKUPS.POC);
	makeStatUIElement(xpos+50, ypos+50, PICKUPS.RADIUS);
	//makeStatUIElement(xpos+10,ypos+46,4);
	var hudbg =  makeGenericElement(0,0,0,0,false);
	hudbg.draw = function(){
		//gpu_set_blendmode(bm_normal);
		draw_sprite(s_ui, 1, 0, 0);
		draw_sprite(s_ui, 2, 0, 0);
		//draw_sprite(tex_based,0,0,0);
		c_drawui();
		if !global.replaying {
		//if nah {
			try {
				if o_roommanager.state = st_roomclear {
					draw_set_color(make_color_hsv(37, cos(global.count/10)*100+128, 255));
					draw_rectangle_width(510, 260, 600, 350, cos(global.count/10)*3+3);
					draw_set_color(c_white);
				} else {
					draw_set_color(c_white);
					draw_rectangle_width(510, 260, 600, 350, 1);
				}
				draw_surface_part(global.surfaces.map, o_roommanager.camera.x-45, o_roommanager.camera.y-45, 90, 90, 510, 260);
			}
			catch(e){}
		}
	}
	hudbg.options.selectable = false;

}