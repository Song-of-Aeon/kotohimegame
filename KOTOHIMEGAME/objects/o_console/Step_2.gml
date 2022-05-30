/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_escape)){
	c_gameresume();
	instance_destroy(o_console); //destroy all consoles
	c_getitembyid(ITEMS._CONSOLE).enabled = false;
	return;
}
else if(keyboard_check_pressed(vk_enter)){
	var command = keyboard_string;
	log(keyboard_string);
	array_push(global.previousCommands,keyboard_string);
	keyboard_string = "";
	var commandArray = string_split(command," ");
	var argsArray = [];
	array_copy(argsArray,0,commandArray,1,array_length(commandArray));
	var found = false;
	for(var i = 0; i < ds_list_size(global.consoleCommands);i++){
		if(commandArray[0] == global.consoleCommands[|i].name){
			//c_gameresume()
			try{
				log(global.consoleCommands[|i].func(argsArray))
			}
			catch(e){
				var a = new consoleEntry(e,c_red);	
				show_debug_message(e)
			}
			regenerateItemUI()
			global.MenuCursor.disabled = true;
			global.MenuCursor.target = noone;
			//c_pause();
			found = true;
			break;
		}
	}
	if(found == false){
		log("command " + commandArray[0] + " not found");	
	}
}
else if(keyboard_check_pressed(vk_up)){
	if(prevIndex < array_length(global.previousCommands)){
		keyboard_string = global.previousCommands[array_length(global.previousCommands)-prevIndex - 1];
		if(prevIndex+1 < array_length(global.previousCommands)){
			prevIndex++;	
		}
	}
}
else if(keyboard_check_pressed(vk_down)){
	if(prevIndex == 0){
	keyboard_string = "";
	}
	else if(prevIndex < array_length(global.previousCommands)){
		keyboard_string = global.previousCommands[array_length(global.previousCommands)-prevIndex ];
		if(prevIndex-1 < array_length(global.previousCommands)){
			prevIndex--;	
		}
	}
}





var insts = [];
var ignoreList = [
o_console,
o_persistent,
o_pause,
o_uicontroller]
for(var i = 0; i < instance_count;i++){
	array_push(insts,instance_find(all,i));
}
for(var i = 0; i < array_length(insts);i++){
	var inst = insts[i];
	var onIgnore = false;
	for(var j = 0; j < array_length(ignoreList);j++){
			
			if(inst != noone && inst.object_index == ignoreList[j])
				onIgnore = true;
	}
	if(!onIgnore)
		instance_deactivate_object(inst);	
}