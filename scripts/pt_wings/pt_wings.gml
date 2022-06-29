nu pattern_ext(function() {
	c;
	if count = 1 {
			ISAAC.x=145
			ISAAC.y=240
	}
	
	
	
	
	x = lerp(x, ease_inoutsine(count, 200)*230+30, .1);
    y = lerp(y, 60, .05);

//	if count > 60

	if ncm(10){
		var i;
		for(i=0; i<23; i++) {
			c_shoot(x, y, 3, (count/42)*6+i*72, bul.point, c_red);
		}
	}
	
}, 60, 70, "mokou", SPELL.CARD, DIFFICULTY.HARD, "...And We Shall Grow Wings");



