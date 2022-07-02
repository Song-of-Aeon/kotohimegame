nu pattern_ext(function() {
	c
	x = -99;
	static utitem = c_getitembyid(ITEMS.UNDERTALE);
	static bordleft = utitem.bordleft;
	static bordup = utitem.bordup;
	static borddown = utitem.borddown;
	static bordright = utitem.bordright;
	
	if ncm(7) {
		c_shoot(bordleft+(bordright-bordleft)/2+abs(sin(gc/40)*((bordright-bordleft)/2)), bordup, .7, 270, bul.square2, u, function() {
			spd += .015;
		});
		c_shoot(bordleft+(bordright-bordleft)/2-abs(cos(gc/40)*((bordright-bordleft)/2)), bordup, .7, 270, bul.square2, u, function() {
			spd += .015;
		});
	}
	
	
}, 10, 8, "chiyuri", SPELL.NON, DIFFICULTY.HARD, "NOT SINE", u, u, function() {c_getitembyid(ITEMS.UNDERTALE).menugen()});