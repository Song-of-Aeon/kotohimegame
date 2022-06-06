c;
if spinning {
	spin = lerp(spin, 0, 0.02);
	if spin <= 2 {
		spin = 0;
		spinning = false;
	}
} else {
	if count >= 300 && zoom < 1.6 {
		zoom += .025;
	} else if zoom >= 1.6 && player < 50 {
		player++;
	}
}
if ncm(500) {
	c_doortransition(BASEMENT);
	
	c_generatestage();
	room_set_persistent(BASEMENT, false)
}