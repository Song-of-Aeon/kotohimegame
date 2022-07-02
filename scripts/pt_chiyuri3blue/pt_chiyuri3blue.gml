nu pattern_ext(function() {
	c
	x = -99;
	static utitem = c_getitembyid(ITEMS.UNDERTALE);
	static bordleft = utitem.bordleft;
	static bordup = utitem.bordup;
	static borddown = utitem.borddown;
	static bordright = utitem.bordright;
	
	if ncm(9) {
		c_shoot(bordleft+(bordright-bordleft)/2+abs(sin(gc/40)*((bordright-bordleft)/2))+25, bordup, 0, 270, bul.square2, u, function() {
			spd += .035;
		});
		c_shoot(bordleft+(bordright-bordleft)/2-abs(cos(gc/40)*((bordright-bordleft)/2))-25, bordup, 0, 270, bul.square2, u, function() {
			spd += .035;
		});
	}
	if ncm(40) {
		c_shoot(bordleft+(bordright-bordleft)/2, bordup, 1, 270, bul.square2);
	}
	
	
}, 10, 8, "chiyuri", SPELL.NON, DIFFICULTY.HARD, "NOT SINE2", u, u, function() {c_getitembyid(ITEMS.UNDERTALE).menugen()});