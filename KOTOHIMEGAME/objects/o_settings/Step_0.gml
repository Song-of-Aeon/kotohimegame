c_input();
instance_deactivate_object(ISAAC);
if select {
	switch(option){
			case 4:
				global.SaveData.scale = global.scale
				global.SaveData.music = global.music
				global.SaveData.volume = global.volume;
				global.SaveData.language = global.language;
				global.SaveUtils.InitSaveConfig();
				room_goto(TITLE);
				audio_play_sound(snd_mnuselect,0,false);
	}
}
if(leftp || rightp){
	switch(option){
		case 0: //scale
			global.scale -=(left-right);
			audio_play_sound(snd_mnuselect,0,false);
			c_changescale();
		break;
		case 1: //music
			global.music -= 10*(left-right);
			audio_play_sound(snd_shoot,0,false);
			audio_set_master_gain(0,global.music/100)
		break;
		case 2://volume
			global.volume -=10*(left-right);
			audio_play_sound(snd_shoot,0,false);
			audio_set_master_gain(0,global.volume/100)
		break;
		case 3://language
			global.language = 1;//lol
		break;
	}
}
global.music = clamp(global.music,0,100);
global.volume = clamp(global.volume,0,100);
global.scale = clamp(global.scale, 1, 3);
if(downp or upp){
	audio_play_sound(snd_mvmnu1,0,false);
}
option+=downp;
option-=upp;
option = option % 5;
if(option < 0){
	option+=5
}