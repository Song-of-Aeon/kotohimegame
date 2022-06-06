/// @description Insert description here
// You can write your code in this editor


with(global.surfaces){
	skip++
	if((skip % skipmod) == skip){
		draw_enable_drawevent(false);
	}
	else{
		skip = skip%skipmod
		draw_enable_drawevent(true);
	} 
}
