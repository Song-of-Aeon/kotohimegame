// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function c_get_hook_name(hook){
	var names = variable_struct_get_names(ISAAC.hooks)
	for(var i = 0; i < array_length(names);i++){
		if(variable_struct_get(ISAAC.hooks,names[i]) == hook){
			return variable_struct_get_names(ISAAC.hooks)[i];
		}
	}
}