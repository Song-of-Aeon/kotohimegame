nu pattern_ext(function() {
	c
	
	x = lerp(x, ease_inoutsine(count, 200)*230+30, .1);
    y = lerp(y, 60, .05);
	
	
	if ncm(10){
		c_shootcircle(x+seed.next(100)-50, y+seed.next(100)-70, 0.5, seed.next(360), 32, bul.bluamulet, c_blue, function() {spd+=0.02});
	}
	
	if ncm(120) {
		var bullshit = [
			[0, 1, 0, 0, 0, 0, 0, 1, 0],
			[1, 0, 0, 0, 0, 0, 1, 0, 1],
			[0, 1, 0, 0, 0, 0, 0, 1, 0],
			[1, 0, 1, 0, 0, 0, 1, 0, 1],
			[0, 1, 1, 0, 1, 0, 1, 1, 0],
			[0, 1, 0, 1, 1, 1, 0, 1, 0],
			[0, 0, 1, 0, 1, 0, 1, 0, 0],
			[0, 0, 0, 1, 1, 1, 0, 0, 0],
			[0, 0, 0, 0, 1, 0, 0, 0, 0],
			[0, 0, 0, 0, 1, 0, 0, 0, 0],
			[0, 0, 0, 0, 1, 0, 0, 0, 0],
		]
		c_shootdesign(x, y, 1, 270, bullshit, 12, bul.smolerboolit, c_red, function() {spd+=0.05
		
	});
	}
	
}, 400, 100, "touhou", SPELL.CARD, DIFFICULTY.HARD, "Loved Ones Passing Us By")