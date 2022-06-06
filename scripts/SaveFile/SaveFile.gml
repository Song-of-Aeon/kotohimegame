// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
save = function(){
	
}
load = function(){
	
}

global.savemanager = {
	settingsList : ds_map_create(),
}

global.SaveUtils = {
	InitSaveConfig : function(){
		var file = file_text_open_write("config.json");
		var configText = json_stringify(global.SaveData);
		file_text_write_string(file,configText);
		file_text_close(file);
	}	
}
global.SaveData = {};
if(file_exists("config.json")){
	var file = file_text_open_read("config.json");
	var configText = file_text_read_string(file);
	global.SaveData = json_parse(configText);
	global.scale = global.SaveData.scale;
	global.music = global.SaveData.music;
	global.volume = global.SaveData.volume;
	global.language = global.SaveData.language;
	if(!variable_struct_exists(global.SaveData,"achievements")){
		global.SaveData.achievements = array_create(ACHIEVEMENTS.SIZE);
	}
	else{
		if(array_length(global.SaveData.achievements) != ACHIEVEMENTS.SIZE){
			 array_resize(global.SaveData.achievements, ACHIEVEMENTS.SIZE);
		}
	}
	file_text_close(file);
}
else{
	global.volume = 100;
	global.music = 25;
	global.language = 1;
	global.scale = 2;	
	global.SaveData.scale = global.scale
	global.SaveData.music = global.music
	global.SaveData.volume = global.music;
	global.SaveData.language = global.language;
	global.SaveUtils.InitSaveConfig();
	global.SaveData.achievements = array_create(ACHIEVEMENTS.SIZE);
}

