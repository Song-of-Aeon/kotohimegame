function deep_copy(struct, antiwhiletrue=[]) {
	var shits = {};
	var stuff = variable_struct_get_names(struct);
	var i;
	for (i=0; i<array_length(stuff); i++) {
		if is_struct(struct[$stuff[i]]) {
			if !array_contains(antiwhiletrue, struct[$stuff[i]]) {
				array_push(antiwhiletrue, struct[$stuff[i]]);
				shits[$stuff[i]] = deep_copy(struct[$stuff[i]], antiwhiletrue);
				
			} else {
				shits[$stuff[i]] = struct[$stuff[i]];
			}
		} else {
			shits[$stuff[i]] = struct[$stuff[i]];
		}
	}
	
	return shits;
}

function deep_copy_instance(instance) {
	var farts = instance_create(instance.x, instance.y, instance.object_index);
	var stuff = variable_struct_get_names(instance);
	var i;
	for (i=0; i<array_length(stuff); i++) {
		if is_struct(variable_instance_get(instance, stuff[i])) {
			variable_instance_set(farts, stuff[i], deep_copy(variable_instance_get(instance, stuff[i])));
		} else {
			variable_instance_set(farts, stuff[i], variable_instance_get(instance, stuff[i]));
		}
	}
	
	return farts;
}

function deep_copy_into(struct, targetstruct, antiwhiletrue=[]) {
	var stuff = variable_struct_get_names(struct);
	
	var i;
	log(11);
	for (i=0; i<array_length(stuff); i++) {
		log(string(22) + string(i));
		if is_struct(struct[$stuff[i]]) {
			if !array_contains(antiwhiletrue, struct[$stuff[i]]) {
				log(string(99) + stuff[i]);
				array_push(antiwhiletrue, struct[$stuff[i]]);
				targetstruct[$stuff[i]] = deep_copy(struct[$stuff[i]], antiwhiletrue);
				
			} else {
				log("WASNT" + stuff[i]);
				targetstruct[$stuff[i]] = struct[$stuff[i]];
			}
		} else {
			log(string(33) + stuff[i]);

			targetstruct[$stuff[i]] = struct[$stuff[i]];
		}
	}
			log(string(44) + string(i));
	log(irandom(999));
}

function deep_copy_instance_into(instance, targetinstance) {
	var stuff = variable_struct_get_names(instance);
	var i;
	for (i=0; i<array_length(stuff); i++) {
		if is_struct(variable_instance_get(instance, stuff[i])) {
			variable_instance_set(targetinstance, stuff[i], deep_copy(variable_instance_get(instance, stuff[i])));
		} else {
			variable_instance_set(targetinstance, stuff[i], variable_instance_get(instance, stuff[i]));
		}
	}
}