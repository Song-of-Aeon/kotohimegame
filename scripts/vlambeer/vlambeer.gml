// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function c_screenshake(_amplitude,_length){
	if(_amplitude == infinity){
		_amplitude = 1000
	}
	with(instance_create(0,0,o_screenshake)){
		length = _length;
		amplitude = _amplitude;
		
	}
}
function c_hitpause(mstime){
	var initialtime = get_timer();
	while(true){
		if(initialtime+(mstime*1000) < get_timer()){
			return;
		}
	}
}
///flash(surface, duration, colour);
function c_flash(_surface/*:surface*/, _duration/*:number*/, _color=c_white/*:any*/){
	var dude = (instance_create(0,0,o_flash))
	dude.surface = _surface;
	dude.duration = _duration;
	dude.color = _color
	//log("flashed"+string(gc));
}
 