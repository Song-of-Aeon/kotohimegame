function c_sellitem(itempos, active=false) {
	STATS.itemssold++;
	if active {
		global.credit += ISAAC.myactive[itempos].quality;
		ISAAC.myactive[itempos] = c_getitembyid(ITEMS.NULL);
	} else {
		global.credit += c_getitembyid(c_getInventory(false)[|itempos]).quality;
		with ISAAC c_removeitempos(itempos, false);
	}
	c_loadoptions();
}
function c_buyitem(itempos) {
	//returns true if successful
	var theitem = c_getitembyid(o_shopmanager.inventory[itempos].item);
	if theitem.quality > global.credit || ds_list_size(ISAAC.myitems) >= ISAAC.inventorysize return false;
	if theitem.usage = ITTYPE.ACTIVE {
		var i;
		var bitched = false;
		for (i=0; i<array_length(ISAAC.myactive); i++) {
			if ISAAC.myactive[i] = c_getitembyid(ITEMS.NULL) {
				bitched = true;
			}
		}
		if !bitched exit;
		STATS.itemsbought++;
	}
	global.credit -= theitem.quality;
	array_delete(o_shopmanager.inventory, itempos, 1);
	c_loadoptions();
	log("ADDING ITEM " + string(theitem));
	return c_additem(c_getidbyitem(theitem));
	
}
function c_sellstats(type, allofthem=false) {
	if ISAAC.pickups[type] >= 1 {
		STATS.statssold++;
		ISAAC.pickups[type] -= 100;
		global.credit++;
	}
	c_stateval();
	//global.credit += c_getpickupbyid(type).quality;
}

#macro execute_string function