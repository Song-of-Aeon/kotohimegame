function c_finditem(itemid) {
	var dude = c_getidbyitem(itemid);
	var pas = false;
	switch dude.usage {
		case "PASSIVE":
			pas = true;
		case "MECHANIC":
			var guy = c_getInventory(!pas);
			var i;
			for (i=0; i<ds_list_size(guy); i++) {
				
			}
	}
}