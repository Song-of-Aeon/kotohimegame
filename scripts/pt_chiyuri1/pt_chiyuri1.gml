nu pattern_ext(function() {
	c
	static utitem = c_getitembyid(ITEMS.UNDERTALE);
	static bordleft = utitem.bordleft;
	static bordup = utitem.bordup;
	static borddown = utitem.borddown;
	static bordright = utitem.bordright;
	if ncm(30) {
		c_shoot(bordright, irandom(borddown-bordup)+bordup, 1, 180, bul.square);
	}
}, 10, 8, "chiyuri", SPELL.NON, DIFFICULTY.HARD, "ut1");