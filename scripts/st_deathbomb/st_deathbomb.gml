enum absolvant {
	one = 1,
	two = 2,
}

///@function st_standard();
function st_deathbomb() {
	dietime++;
	var lmao = false;
	if (myactive[0].activetype = ACTIVES.BOMB || myactive[0].deathbombable) && myactive[0].charge >= myactive[0].chargereq && shoot {
		lmao = true;
		myactive[0].asactive(id, shoot, shooth);
	}
	if (myactive[1].activetype = ACTIVES.BOMB || myactive[1].deathbombable) && myactive[1].charge >= myactive[1].chargereq && bomb {
		lmao = true;
		myactive[1].asactive(id, bomb, bombh)
	}
	if (myactive[2].activetype = ACTIVES.BOMB || myactive[2].deathbombable) && myactive[2].charge >= myactive[2].chargereq && special {
		lmao = true;
		myactive[2].asactive(id, special, specialh);
	}
	
	if lmao {
			
		state = st_standard;
		dietime = 0;
		if c_dohook(hooks.ondeathbomb) exit;
		exit;
	}
	if dietime >= deathbombwindow {
		if !c_dohook(hooks.onhit) {
			var osdhufji = max(takingdamage-defense,1);
			STATS.damagetaken += osdhufji;
			audio_play_sound(snd_hurt,0,false);
			hp -= osdhufji //prevent def from healing, min shotpower is 1
			inv = invtime*4;
			c_screenshake(8, inv/2);
		}
		state = st_standard;
		dietime = 0;
	}
}