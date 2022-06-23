nu pattern_ext(function() {
	c
	x = -99;
	static utitem = c_getitembyid(ITEMS.UNDERTALE);
	static bordleft = utitem.bordleft;
	static bordup = utitem.bordup;
	static borddown = utitem.borddown;
	static bordright = utitem.bordright;
	if ncm(45) {
		var i;
		var lad = irandom((borddown-bordup)-6)+6;
		for (i=0; i<4; i++) {
			c_shoot(bordleft, lad+bordup+irandom(5), .3+i*.2, 0, bul.bluesquare, u, function() {
				if ISAAC.x+ISAAC.hput != ISAAC.xprevious || ISAAC.y+ISAAC.vput != ISAAC.yprevious {
					friendly = false;
				} else {
					friendly = true;
				}
			});
		}
	}
	if nam(count+27, 45) {
		var i;
		var lad = irandom((borddown-bordup)-6)+6;
		for (i=0; i<4; i++) {
			c_shoot(bordright, lad+bordup+irandom(5), .3+i*.2, 180, bul.square2);
		}
	}
}, 10, 1, "chiyuri", SPELL.NON, DIFFICULTY.HARD, "ut1blue", u, u, function() {c_getitembyid(ITEMS.UNDERTALE).menugen()});

nu bullet("bluesquare", s_bluesquare, 4, true, false, false, 1);
nu bullet("square2", s_bulletsquare, 4, true, false, false, 1);