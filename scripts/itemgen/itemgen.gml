function itemgen(item, id) {
	var guys = variable_struct_get_names(global.defdata);
	var i;
	for (i=0; i<array_length(guys); i++) {
		if !variable_struct_exists(item, guys[i]) {
			variable_struct_set(item, guys[i], variable_struct_get(global.defdata, guys[i]));
		}
	}
	if(!variable_struct_exists(item,"seed")){
		item[$"seed"] = new RNG(global.seed);	
	}
	if item.usage = ITTYPE.MECHANIC {
		item.pools = [];
	}
	global.x_itemmanager.BindItem(item, id)
}

