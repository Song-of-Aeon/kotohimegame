function generateSettingsMenu(){
	var vals = ds_map_keys_to_array(global.savemanager.settingsList);
	for(var i = 0; i < ds_map_size(global.savemanager.settingsList);i++){
		makeSettingsSlider(40,i*50,global.savemanager.settingsList[?vals[i]]);
	}
	var guy = makeGenericElement(40, i*50, 50, 50, s_null)
	guy.draw = function() {draw_text(x, y, "REBIND")};
	guy.onSelect = function() {room_goto(REBINDROOM)};
}
SliderEntry("Scale",1,3,function(val){global.scale = val; surfaces_init(); return val},global.scale);
SliderEntry("Volume",0,100,function(val){global.volume = val;audio_play_sound(snd_shoot,0,false);audio_set_master_gain(0,global.volume/100); return val},global.volume);
SliderEntry("Music maybe?",0,100,function(val){global.music = val; return val},global.music);

//SliderEntry("SFX",0,100,function(val){global.music = val; return val},global.music);
//SliderEntry("Language",0,100,function(val){global.music = val; return val},global.music);
//SliderEntry("HD",0,100,function(val){global.music = val; return val},global.music);
//SliderEntry("Devmode",0,100,function(val){global.music = val; return val},global.music);



