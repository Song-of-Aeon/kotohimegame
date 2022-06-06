/*nu pattern_ext(function() {
	c
	if ncm(10) {
		c_shoot(10, 10, 1, point_me(), bul.point);
		
	}
});*/

nu pattern_ext(function() {
	count++;
	if ncm(23) {
		var i;
		//log(2);
		for (i=0; i<2; i++) {
			myb = c_shootabs(x, y, 2*ineg(i), -1, global.bullets.point, c_red, method(undefined, function() {
				count++;
				if ncm(20) {
					myb2 = c_shootabs(x, y, random(2), 0, global.bullets.point, c_purple, method(undefined, function() {
						count++;
						if ncm(30) {
							vspd = -1;
							hspd = lerp(-hspd, 1*ineg(-hspd), .2);
						}
						if vspd < 0 {
							color = c_yellow;
						}
						vspd = min(vspd, 2.5);
						vspd += .1;
					}));
					myb2.count += random(15);
				}
			}));
			myb.count = o_boss.iterations;
		}
		iterations++;
		if ISAAC.y <= 100 && ncm(60) {
			c_shootcircle(x, y, 4, point_me(), 20, bul.big, c_white);
		}
	}
}, 600, 70, "aunn", SPELL.CARD, DIFFICULTY.HARD, "Brave Even While Weathered", u, c_aunnspelldraw);

nu pattern_ext(function() {
	count++;
	if ncm(40) {
		var i;
		//log(2);
		for (i=0; i<2; i++) {
			myb = c_shootabs(x, y, 2*ineg(i), -1, global.bullets.point, c_red, method(undefined, function() {
				count++;
				if ncm(24) {
					myb2 = c_shootabs(x, y, random(2), 0, global.bullets.point, c_purple, method(undefined, function() {
						count++;
						if ncm(40) {
							vspd = -1;
							hspd = lerp(-hspd, 1*ineg(-hspd), .2);
						}
						if vspd < 0 {
							color = c_yellow;
						}
						vspd = min(vspd, 2.5);
						vspd += .06;
					}));
					myb2.count += random(15);
				}
			}));
			myb.count = o_boss.iterations;
		}
		iterations++;
		if ISAAC.y <= 100 && ncm(120) {
			c_shootcircle(x, y, 4, point_me(), 20, global.bullets.big, c_white);
		}
	}
}, 600, 70, "aunn", SPELL.CARD, DIFFICULTY.EASY, "Brave Even While Weathered");
//formerly: bouncy rain the aunn attack