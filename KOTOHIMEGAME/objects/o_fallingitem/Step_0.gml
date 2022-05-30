vspd += .04;
x += hspd;
y += vspd;
if place_meeting(x, y, ISAAC) {
	with ISAAC {
		audio_play_sound(snd_getitem,0,false);
		c_additem(other.item);
	}
	instance_destroy();
}
sprite_index = c_getitembyid(item).sprite;
if item = ITEMS.NULL {
	instance_destroy();
}