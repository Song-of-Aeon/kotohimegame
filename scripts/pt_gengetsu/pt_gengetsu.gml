nu pattern_ext(function() {
	if nam(++count, 4) c_shootcircle(x+seed.next(100)-50, y+seed.next(100)-50, 4, seed.next(360), 36, choose(bul.circle, bul.circle, bul.bigcircle), c_blue);
	//above is the whole pattern, but lemme split it up for you
	//below is equivalent to the code above
	c
	if ncm(4) { //every four frames
		c_shootcircle( //shoot a circle of bullets,
			x+seed.next(100)-50, //within 50 x pixels of the boss,
			y+seed.next(100)-50, //within 50 y pixels of the boss,
			4, //at speed 4 px/frame,
			seed.next(360), //starting from a random direction,
			36, //that is composed of 36 bullets,
			choose(bul.circle, bul.circle, bul.bigcircle), //of one of these bullet types,
			c_blue //that is blue.
		);
	}
}, 600, 70, "touhou", SPELL.CARD, DIFFICULTY.HARD, "Midnight Alarm");

//nu bullet("bigcircle", s_bulletbigcircle, 1, true, false, true, 1);