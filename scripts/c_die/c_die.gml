function c_die() {
	hp = 0.1;
	if c_dohook(hooks.ondie) exit;
	bombs = defaultbombs;
	hp = maxhp;
	life--;
	if instance_exists(o_boss) {
		STATS.bosskd[1]++;
	}
	STATS.deaths++;
	if life <= -1 {
		STATS.losses++;
		switch global.currentday {
			case DAY.THURS:
				STATS.diedonthursday[global.currentstage]++;
				break;
			case DAY.FRI:
				STATS.diedonfriday[global.currentstage]++;
				break;
			case DAY.SATUR:
				STATS.diedonsaturday[global.currentstage]++;
				break;
		}
		global.death = true;
		audio_stop_all(); //audio_play_sound(m_title,0,true)
		c_pause();
	} else {
		c_makefx(x, y, 5, 4, 0, s_bigfx);
	}
}