nu pattern_ext(function() {
	c
	static utitem = c_getitembyid(ITEMS.UNDERTALE);
	static bordleft = utitem.bordleft;
	static bordup = utitem.bordup;
	static borddown = utitem.borddown;
	static bordright = utitem.bordright;
	if ncm(30) {
		var i;
		var lad = irandom((borddown-bordup)-6)+6;
		for (i=0; i<=6; i++) {
			c_shoot(bordright, lad+bordup+irandom(5), .5+i*.3, 180, bul.square2);
		}
	}
}, 10, 8, "touhou", SPELL.NON, DIFFICULTY.HARD, "ut1");