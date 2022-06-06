function makeItemUIElement(_x,_y,itemID,itempos,active = false,depth = false){ 
	var realitemid = itemID;
	if(is_struct(itemID)) realitemid = c_getidbyitem(itemID);
	var element = makeGenericElement(_x,_y,32,32,c_getitembyid(realitemid).sprite,0,depth)
	element.itemID = realitemid;
	element.draw = method(element,function(){ //DEFAULT UI DRAWING CODE
		surface_set_target(global.surfaces.HUD)
		var itemref = c_getitembyid(itemID);
		drawItemIcon(itemref)
		surface_reset_target()
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
	});
	element.itempos = itempos;

	element.isActive = active;
	element.onSelect = method(element,function(){
		c_sellitem(itempos,isActive)
		regenerateItemUI()
		generateShopUI()
		global.MenuCursor.move(4)//any direction
		textbox_create(global.currentroom.shopkeep.selltext, global.textshop, false);
	});
	return element;
}

function drawItemIcon(itemref){
	//if the item has a custom draw hook, execute that instead
	if(variable_struct_exists(itemref,"onuidraw")){
		try {
			itemref.onuidraw((x+sprite_get_width(sprite)/2)-20,(y+sprite_get_height(sprite)/2)-20);
		}
		catch(e) {
			log(e);	
		}	
	}
	//otherwise, use the default stuff
	else if itemref.usage = ITTYPE.PASSIVE {
		draw_outline_better(c_getitembyid(itemID).sprite,0,255,255,255,1,2,x+sprite_get_width(sprite)/2,y+sprite_get_height(sprite)/2);
	} else if itemref.name != "" {
		gpu_set_blendmode(bm_add);
		switch itemref.activetype {
			case ACTIVES.SHOT:
				draw_set_color(c_red);
				break;
			case ACTIVES.BOMB:
				draw_set_color(c_green);
				break;
			case ACTIVES.FLASHBOMB:
				draw_set_color(c_blue);
				break;
			case ACTIVES.FREE:
				draw_set_color(c_yellow);
				break;
			case ACTIVES.CONSUME:
				draw_set_color(c_cyan);
				break
		}
		//draw_set_color(c_white);
		if itemref.chargemax = 0 {
			draw_set_alpha(.1);
				
			draw_circle(x+(sprite_get_width(itemref.sprite)/2), y+(sprite_get_height(itemref.sprite)/2), 27, false);
			draw_set_alpha(1);
		} else {
			if itemref.charge/itemref.chargereq >= 1 {
				draw_set_alpha(.5);
			} else {
				draw_set_alpha(.1);
			}
			draw_circle_curve(x+(sprite_get_width(itemref.sprite)/2), y+(sprite_get_height(itemref.sprite)/2), 27, 180, 90, -clamp(itemref.charge/itemref.chargemax, 0, 1)*360, 1, false); //temporary until there is an actual sprite backt here
			//draw_circle(x+(sprite_get_width(itemref.sprite)/2),y+(sprite_get_height(itemref.sprite)/2),50,false)
				
			draw_set_alpha(1);
			draw_set_color(c_white);
			draw_percent(x,y,itemref.sprite,0,itemref.charge/itemref.chargemax);
			if (itemref.chargemax <= 12) && itemref.charge = clamp(itemref.charge, 1, itemref.chargemax-1) {
				for(var i = 0; i<=itemref.charge; i++) {
					var basex = x+(sprite_get_width(itemref.sprite)/2);
					var basey = y+(sprite_get_height(itemref.sprite)/2);
					var ang = (i/itemref.chargemax)*360;
					ang-=90;
					draw_line(basex,basey,basex+(dcos(ang)*27),basey+dsin(ang)*27);
				}
			} else if itemref.chargemax > 12 && itemref.charge = clamp(itemref.charge, 1, itemref.chargemax-1) {
				var basex = x+(sprite_get_width(itemref.sprite)/2);
				var basey = y+(sprite_get_height(itemref.sprite)/2);
				var ang = (itemref.charge/itemref.chargemax)*360;
				ang-=90;
				draw_line(basex,basey,basex+(dcos(ang)*27),basey+dsin(ang)*27);
			}
		}
		gpu_set_blendmode(bm_normal);
		draw_sprite_stretched(itemref.sprite,0,x,y,sprite_get_width(itemref.sprite),sprite_get_height(itemref.sprite));
	} 
}