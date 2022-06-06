function c_drawshop() {
	surface_set_target(application_surface);
	surface_reset_target();
	
	//surface_set_target(global.surfaces.HUD);
	/*
	var i;
	var theitem;
	try {
		switch currentmode {
			case SHOPMODE.YOURS:
				theitem = c_getitembyid(inventory[pos.x+pos.y*4]);
				break;
			case SHOPMODE.MINE:
				theitem = c_getitembyid(c_getInventory(false)[|pos.x+pos.y*4]);
				//theitem = c_getitembyid(makeNumberedItems(c_ignoremechanics(ISAAC.myitems))[|pos.x+pos.y*4].item);
				break;
			case SHOPMODE.ACTIVES:
				theitem = ISAAC.myactive[pos.x];
				//SHIT DUDE
				break;
			case SHOPMODE.STATS:
				
			default:
				theitem = c_getitembyid(ITEMS.NULL);
				break;
				
		}
	}
	catch(e){
		theitem = c_getitembyid(ITEMS.NULL);
	}
	//draw_text(100,110,"cost: " + string(theitem.quality));
	//draw_text_ext(100, 130, theitem.name + "\n\n" + theitem.description,10,640-500);
	/*if currentmode != SHOPMODE.STATS {
		global.title = theitem.name;
		global.description = theitem.description + "LOL3"// + "\n" + "cost: " + string(theitem.quality);
		global.tooltip = theitem.tooltip;
	}*/
	
	//draw_text(100, 200, "SELL:");
	//draw_text(100, 120, "credit: " + string(global.credit));
	/*for (i=0; i<array_length(numberedInventory); i++) {
		draw_sprite(c_getitembyid(numberedInventory[i].item).sprite, 0, 110+floor(i/4)*40, 216+i%4*40);
		if(numberedInventory[i].amount > 1){
			draw_text(110-floor(i/4)*40,216+i%4*40,numberedInventory[i].amount);
		}
	}
	if pos.x {
		surface_set_target(global.surfaces.HUD);
		draw_sprite(s_itemselector, 0, 130-floor(pos.y/4)*40, 216+pos.y%4*40);
		surface_reset_target();
	} else {
		draw_sprite(s_itemselector, 0, 110+floor(pos.y/6)*40, 216+pos.y%6*40);
	}*/
	
	
	
	/*var i;
	for (i=0; i<array_length(inventory); i++) {
		draw_sprite(c_getitembyid(inventory[i]).sprite, 0, 116+(i%4)*40, 69+floor(i/4)*40);
	}*/
	
	
	
	//log(currentmode)
	/*
	
	switch currentmode {
		case SHOPMODE.MINE:
			surface_set_target(global.surfaces.HUD);
			//draw_sprite(s_itemselector, 0, 27+pos.x*40, 69+pos.y*40);
			surface_reset_target();
			break;
		case SHOPMODE.YOURS:
			//draw_sprite(s_itemselector, 0, 116+pos.x*40, 69+pos.y*40);
			break;
		case SHOPMODE.ACTIVES:
			surface_set_target(global.surfaces.HUD);
			//draw_sprite(s_itemselector, 0, 26+pos.x*54, 334);
			surface_reset_target();
			break;
		case SHOPMODE.STATS:
		surface_set_target(global.surfaces.HUD);
			switch pos.y {
				case 0:
					//draw_sprite(s_itemselector, 0, 10+517+6, 10+62+6);
					global.title = c_getpickupbyid(PICKUPS.SHOTPOWER).name;
					global.description = c_getpickupbyid(PICKUPS.SHOTPOWER).description;
					break;
				case 1:
					//draw_sprite(s_itemselector, 0, 10+517+8, 28+62+8);
					global.title = c_getpickupbyid(PICKUPS.OPTIONS).name;
					global.description = c_getpickupbyid(PICKUPS.OPTIONS).description;
					break;
				case 2:
					//draw_sprite(s_itemselector, 0, 10+517+6, 46+62+6);
					global.title = c_getpickupbyid(PICKUPS.AGILITY).name;
					global.description = c_getpickupbyid(PICKUPS.AGILITY).description;
					break;
				case 3:
					//draw_sprite(s_itemselector, 0, 10+517+8, 64+62+8);
					global.title = c_getpickupbyid(PICKUPS.RADIUS).name;
					global.description = c_getpickupbyid(PICKUPS.RADIUS).description;
					break;
				case 4:
					//draw_sprite(s_itemselector, 0, 10+517+8, 82+62+8);
					global.title = c_getpickupbyid(PICKUPS.POC).name;
					global.description = c_getpickupbyid(PICKUPS.POC).description;
					break;	
			}
			surface_reset_target();
			break;
		
	}
}*/
}