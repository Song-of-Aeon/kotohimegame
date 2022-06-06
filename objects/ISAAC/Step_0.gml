
count++;
c_input();
image_alpha = 1;
visiblex = x;
visibley = y;
if c_dohook(hooks.onstep,id) exit;
script_execute(state);
/*if(esc){
	room = TITLE;
	audio_stop_all();
}*/



