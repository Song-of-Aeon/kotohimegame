function c_dohook(hook, parameter, parameter2) {
	var stop = false;
	//log(c_get_hook_name(hook));
	//log(hook);
	
	for (var j=0; j<ds_list_size(hook); j++) {
		try{
			var result = 0;
			if(!is_array(parameter))
				result = hook[|j](parameter, parameter2);
			else
				result = script_execute_ext(hook[|j],parameter);
				
			if result == false {
				var stop = true;
			}
			if (result == "stop"){
				return;
			}
		}
		catch(e){
			try{
				log("exception occurred while executing hook" + c_get_hook_name(hook)); 
				log(e);	
			}
			catch(r){
				log("you deleted isaac");
				log(r);
				log(e);
			}
		}
	}
	return stop;
}
function c_doenemyhook(hook, parameter=id, parameter2=0) {
	var stop = false;
	//log(c_get_hook_name(hook));
	//log(hook);
	//log("doing hook " + hook, inventory);
	for (var j=0; j<ds_list_size(inventory); j++) {
		try{
			var result = 0;
			if variable_struct_exists(inventory[|j], hook) {
				result = inventory[|j][$hook](parameter, parameter2);
			} else continue;
			if result == false {
				var stop = true;
			}
			if (result == "stop"){
				return;
			}
		}
		catch(e){
			try{
				log("exception occurred while executing ENEMY hook" + c_get_hook_name(hook)); 
				log(e);	
			}
			catch(r){
				log("you ?????");
				log(r);
				log(e);
			}
		}
	}
	return stop;
}