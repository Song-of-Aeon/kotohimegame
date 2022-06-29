c
if ncm(20) {
	audio_play_sound(se_encounter, 0, false);
}
if count == 79 {
	audio_play_sound(se_batstart, 0, false);
	c_additem(ITEMS.UNDERTALE);
	instance_destroy();
}