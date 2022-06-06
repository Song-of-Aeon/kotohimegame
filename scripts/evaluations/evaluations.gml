function c_itemeval() {
	with ISAAC {
		var i;
		c_resethooks();
		for (i=0; i<ds_list_size(myitems); i++) {
			var lookingitem = c_getitembyid(myitems[|i]);
			//log(lookingitem.name);
			//log(i);
			names = variable_struct_get_names(ISAAC.hooks);
			for(var j = 0; j < array_length(names); j++) {
				func = variable_struct_get(ISAAC.hooks, names[j]);
				if variable_struct_exists(lookingitem, names[j]) {
					ds_list_add(func,variable_struct_get(lookingitem, names[j]));
				}
			}
		}
		for (i=0; i<array_length(myactive); i++) {
			var lookingitem = (myactive[i]);
			//log(lookingitem.name);
			//log(i);
			names = variable_struct_get_names(ISAAC.hooks);
			for(var j = 0; j < array_length(names); j++) {
				func = variable_struct_get(ISAAC.hooks, names[j]);
				if variable_struct_exists(lookingitem, names[j]) {
					ds_list_add(func,variable_struct_get(lookingitem, names[j]));
				}
			}
		}
	}
}

function c_stateval() {
	with ISAAC {
		c_resetstats();
		c_dohook(ISAAC.hooks.onstats);
		for (i=0; i<array_length(pickups); i++) {
				var mine = pickups[i];
				repeat floor(mine/100) {
					switch i {
						case PICKUPS.SHOTPOWER:
							ISAAC.shotpower++;
							break;
						case PICKUPS.OPTIONS:
							ISAAC.options++;
							break;
						case PICKUPS.AGILITY:
							ISAAC.agility++;
							break;
						case PICKUPS.RADIUS:
							ISAAC.radius++;
							//ISAAC.itemradius++;
							break;
						case PICKUPS.POC:
							ISAAC.collectionpoint++;
							break;
					}
					
				}
		}
		shotpower = clamp(shotpower, statmins.shotpower, statcaps.shotpower);
		options = clamp(options, statmins.options, statcaps.options);
		agility = clamp(agility, statmins.agility, statcaps.agility);
		radius = clamp(radius, statmins.radius, statcaps.radius);
		collectionpoint = clamp(collectionpoint, statmins.collectionpoint, statcaps.collectionpoint);
		

		ISAAC.pickups[PICKUPS.SHOTPOWER] = clamp(ISAAC.pickups[PICKUPS.SHOTPOWER], 0, (statcaps.shotpower*100-100));
		ISAAC.pickups[PICKUPS.OPTIONS] = clamp(ISAAC.pickups[PICKUPS.OPTIONS], 0, (statcaps.options*100-100));
		ISAAC.pickups[PICKUPS.AGILITY] = clamp(ISAAC.pickups[PICKUPS.AGILITY], 0, (statcaps.agility*100-100));
		ISAAC.pickups[PICKUPS.RADIUS] = clamp(ISAAC.pickups[PICKUPS.RADIUS], 0, (statcaps.radius*100-100));
		ISAAC.pickups[PICKUPS.POC] = clamp(ISAAC.pickups[PICKUPS.POC], 0, (statcaps.radius*100-100));
	}
}

function c_resetstats() {
	
	var defaults = variable_struct_get_names(ISAAC.defaultstats);
	for(var i = 0; i < array_length(defaults);i++){
		variable_instance_set(ISAAC,defaults[i],variable_struct_get(ISAAC.defaultstats,defaults[i]));
	}
	ISAAC.statcaps = {
		shotpower: 1,
		options: 4,
		agility: 4,
		radius: 4,
		collectionpoint: 4,
	}
}

function c_resethooks() {
	var i;
	var hoooks = variable_struct_get_names(hooks);
	for (i=0; i<variable_struct_names_count(hooks); i++) {
		ds_list_destroy(variable_struct_get(hooks, hoooks[i]));
		var j = ds_list_create();
		//variable_struct_set(hooks, hoooks[|i], j);
		hooks[$hoooks[i]] = j;
		j[|0] = NUMBER5;
	}
}

function c_statthreshold(type) {
	with ISAAC {
		//log("threshholded");
		
		//c_dohook(hooks.onstatthreshold);
		
		if type = PICKUPS.OPTIONS {
			instance_destroy(o_option);
			/*var j;
			for (j=0; j<array_length(familiars); j++) {
				option_create(familiars[j].sprite, familiars[j].shot, familiars[j].step);
			}*/
			c_loadoptions();
			//log(j);
		}
		if c_dohook(hooks.onstatthreshold,global.me, type) exit;
	}
}