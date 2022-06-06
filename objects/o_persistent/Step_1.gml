/// @description Insert description here
// You can write your code in this editor
if(os_get_config() == "BreadManFrameSkip"){
		global.delta = delta_time/16666*global.timescale;
}
else{
		global.delta = global.timescale;
}


tickCount+= global.timescale
global.ticks = floor(tickCount);
tickCount%=1;