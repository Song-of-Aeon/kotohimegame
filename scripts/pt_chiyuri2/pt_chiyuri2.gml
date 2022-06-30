nu pattern_ext(function() {
	c
	x = -99;
	static utitem = c_getitembyid(ITEMS.UNDERTALE);
	static bordleft = utitem.bordleft;
	static bordup = utitem.bordup;
	static borddown = utitem.borddown;
	static bordright = utitem.bordright;
	
	if ncm(10) {
		var lad = irandom((bordright-bordleft)-6)+6;
		//c_bang(bordleft+lad, borddown, irandom(45)+67, 10, 30, 60, hsn.flat);
	}
	
}, 10, 8, "chiyuri", SPELL.NON, DIFFICULTY.HARD, "ut2", u, u, function() {c_getitembyid(ITEMS.UNDERTALE).menugen()});



nu pattern_ext(function() {
	c
	x = -99;
	static utitem = c_getitembyid(ITEMS.UNDERTALE);
	static bordleft = utitem.bordleft;
	static bordup = utitem.bordup;
	static borddown = utitem.borddown;
	static bordright = utitem.bordright;
	
	
	
}, 10, 8, "chiyuri", SPELL.NON, DIFFICULTY.HARD, "ut1", u, u, function() {c_getitembyid(ITEMS.UNDERTALE).menugen()});