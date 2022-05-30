function st_shooty() {
	repeat(1+floor(options/60)) {
		if !(shootcount%round(60/options)) {
			if c_dohook(hooks.onshoot) exit;
			c_shoot(x, y, bulletspeed, 90, global.ishoot).damage *= damage;
			audio_play_sound(snd_shoot,0,false);
		}
	}
	//log(shootcount%round(60/options));
}
function st_shoot(c_shoot_, condition=true, andpulse=true) {
	//repeat(1+floor(10)) {
		if condition {
			var returndamage = ISAAC.damage;
			ISAAC.damage -= (ISAAC.shotpower-1)/20;
			with ISAAC {
				if c_dohook(hooks.onshoot) exit;
			}
			c_shoot_();
			audio_play_sound(snd_shoot,0,false);
			if andpulse with o_option {pulse++};
			ISAAC.damage = returndamage;
		}
	//}
}