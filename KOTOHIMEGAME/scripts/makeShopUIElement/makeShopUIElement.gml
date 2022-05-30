function makeShopUIElement(_x,_y,itemID,itempos, depth = 0){
	var element = makeGenericElement(_x,_y,32,32,c_getitembyid(itemID).sprite,0,depth);
	if depth != 0 {
		element.options.selectable = false;
	}
	element.depth = depth;
	element.draw = method(element,function(){ //DEFAULT UI DRAWING CODE
		surface_set_target(global.surfaces.HUD)
		static uiAlpha = 0;
		if(uiAlpha > 0) uiAlpha -=0.01;
		draw_outline_progress(x,y,50,50,255,255,255,uiAlpha,360,2,method(undefined,function(){
			draw_sprite_ext(sprite,0,20,20, 1, 1, 0, make_color_hsv(0, 0, 255-depth*100), 1);
		}))
		surface_reset_target();
		if(global.MenuCursor.target == self){
			var theitem = c_getitembyid(itemID);
			global.title = theitem.name;
			if theitem.activetype = ACTIVES.SHOT {
				global.description = "power: ";
				var i;
				for (i=0; i<theitem.powerdata; i++) {
					global.description = global.description + "*";
				}
				global.description = global.description + "\nrange: ";
				for (i=0; i<theitem.rangedata; i++) {
					global.description = global.description + "*";
				}
				global.description = global.description + "\ndifficulty: ";
				for (i=0; i<theitem.difficultydata; i++) {
					global.description = global.description + "*";
				}
			} else if theitem.activetype = ACTIVES.BOMB {
				global.description = "power: ";
				var i;
				for (i=0; i<theitem.powerdata; i++) {
					global.description = global.description + "*";
				}
				global.description = global.description + "\ncapacity: ";
				for (i=0; i<theitem.capacitydata; i++) {
					global.description = global.description + "*";
				}
				global.description = global.description + "\nutility: ";
				for (i=0; i<theitem.utilitydata; i++) {
					global.description = global.description + "*";
				}
			} else if theitem.options != 0 {
				global.description = "power: ";
				var i;
				for (i=0; i<theitem.powerdata; i++) {
					global.description = global.description + "*";
				}
				global.description = global.description + "\nindependence: ";
				for (i=0; i<theitem.independencedata; i++) {
					global.description = global.description + "*";
				}
			} else {
				global.description = theitem.description// + "LOL"// + "\n" + "cost: " + string(theitem.quality);
			}
			global.tooltip = theitem.tooltip;
		}
		/*if(instance_exists(o_pause)){
			//options.selectable = false;	
		}
		else{
			//options.selectable = true;
		}*/
	});
	element.itempos = itempos;
	element.itemID = itemID;
	element.onSelect = method(element,function(){
		if c_buyitem(itempos) {
			textbox_create(global.currentroom.shopkeep.buytext, global.textshop, false);
		} else {
			textbox_create(global.currentroom.shopkeep.cantbuytext, global.textshop, false);
		}
		regenerateItemUI()
		generateShopUI()
		global.MenuCursor.move(DIRECTIONS.ANY)//any direction
		
	});
}