function c_loadoptions() {
	instance_destroy(o_option);
	ISAAC.familiars = [];
	var optionset = [];
	var indices = [];
	var indexmax = [];
	var myinv = c_getInventory(false);
	var i;
	for (i=0; i<ds_list_size(myinv); i++) {
		if c_getitembyid(myinv[|i]).options != 0 {
			array_push(optionset, c_getitembyid(myinv[|i]).options);
			array_push(indices, 0);
			array_push(indexmax, 0);
		}
	}
	if array_length(optionset) >= 1 {
		for (i=0; i<array_length(optionset)+ISAAC.options-1; i++) {
			array_push(ISAAC.familiars, optionset[i%array_length(optionset)]);
			indexmax[i%array_length(optionset)]++;
		}
		
		var j;
		for (j=0; j<array_length(ISAAC.familiars); j++) {
			indices[j%array_length(optionset)]++;
			option_create(ISAAC.familiars[j].sprite, ISAAC.familiars[j].shot, ISAAC.familiars[j].steps, indices[j%array_length(optionset)], indexmax[j%array_length(optionset)]);
			
		}
	}
	c_dohook(ISAAC.hooks.onoptionsload);
}