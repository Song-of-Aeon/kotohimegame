nu pattern_ext(function() {
	count++;
	if ncm(80) {
		var i;
		//log(2);
		for (i=0; i<1; i++) {
			myb = c_shootcircle(x, y, 2, count/5, 8, global.bullets.point, c_red, method(undefined, function() {
				count++;
				if ncm(40) {
					c_shootabs(x, y, 0, 0, global.bullets.point, c_yellow, method(undefined, function() {
						count++;
						vspd = sin(count/90)*3;
						spd = vspd/3;
						dir = point_me();
					}));
				}
			}));
			/*var j;
			for (j=0; j< array_length(myb); j++) {
				myb[j].count = o_boss.iterations;
			}*/
			with_array(myb, method(undefined, function() {count = irandom(20)}));
		}
		iterations++;
	}
}, 600, 70, "aunn", SPELL.CARD, DIFFICULTY.HARD, "Dog Sign \"Irrefutable Loyalty\"");

nu pattern_ext(function() {
	count++;
	if ncm(80) {
		var i;
		//log(2);
		for (i=0; i<1; i++) {
			myb = c_shootcircle(x, y, 1.4, count/5, 6, global.bullets.point, c_red, method(undefined, function() {
				count++;
				if ncm(80) {
					c_shootabs(x, y, 0, 0, global.bullets.point, c_yellow, method(undefined, function() {
						count++;
						vspd = sin(count/90)*3;
						spd = vspd/3;
						dir = point_me();
					}));
				}
			}));
			/*var j;
			for (j=0; j< array_length(myb); j++) {
				myb[j].count = o_boss.iterations;
			}*/
			with_array(myb, method(undefined, function() {count = irandom(20)}));
		}
		iterations++;
	}
}, 600, 70, "aunn", SPELL.CARD, DIFFICULTY.EASY, "Dog Sign \"Irrefutable Loyalty\"");
//formerly chasing falling the aunn attack