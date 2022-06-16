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
			c_shoot(bordright, lad+bordup+irandom(5), .5+i*.3, 180, bul.bluesquare, u, function() {
				if ISAAC.x+ISAAC.hput != ISAAC.xprevious || ISAAC.y+ISAAC.vput != ISAAC.yprevious {
					friendly = false;
				} else {
					friendly = true;
				}
			});
		}
	}
}, 10, 8, "chiyuri", SPELL.NON, DIFFICULTY.HARD, "ut1blue");

nu bullet("bluesquare", s_bluesquare, 1, true, false, false, 1);
nu bullet("square2", s_bulletsquare, 1, true, false, false, 1);