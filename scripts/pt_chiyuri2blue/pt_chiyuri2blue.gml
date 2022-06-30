nu pattern_ext(function() {
	c
	x = -99;
	static utitem = c_getitembyid(ITEMS.UNDERTALE);
	static bordleft = utitem.bordleft;
	static bordup = utitem.bordup;
	static borddown = utitem.borddown;
	static bordright = utitem.bordright;
	
	if ncm(40) {
		var lad = irandom((bordright-bordleft)-6)+6;
		//c_bang(bordleft+lad, borddown, irandom(45)+67, 10, 30, 60, hsn.flat);
	}
	if ncm(120) {
		c_shootcircle(WIDTH/2, 100, 1, irandom(359), 40, bul.bluesquare);
	}
	
}, 10, 8, "chiyuri", SPELL.NON, DIFFICULTY.HARD, "ut2blue", u, u, function() {c_getitembyid(ITEMS.UNDERTALE).menugen()});