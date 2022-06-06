nu pattern_ext(function() {
	count++;
	if ncm(120) {
		c_linkcircle(x, y, 5, irandom(360), 20, 10, 10, global.bullets.small, c_fuchsia, function() {
			iterations = o_boss.iterations;
			if !didit {
				spd *= .95;
				if spd <= .5 {
					didit = true;
					color = c_yellow;
					spd = 1;
					//tspd = .1*itneg();
					dir = lerp(dir%180+180, point_me()+irandom(20)-10, .5);
				}
			}
		});
		iterations++;
	}
}, 600, 70, "aunn", SPELL.NON, DIFFICULTY.HARD, "aunnnon1");

nu pattern_ext(function() {
	count++;
	if ncm(160) {
		c_linkcircle(x, y, 5, irandom(360), 14, 13, 8, global.bullets.small, c_fuchsia, function() {
			iterations = o_boss.iterations;
			if !didit {
				spd *= .95;
				if spd <= .5 {
					didit = true;
					color = c_yellow;
					spd = 1;
					//tspd = .1*itneg();
					dir = lerp(dir%180+180, point_me()+irandom(20)-10, .5);
				}
			}
		});
		iterations++;
	}
}, 600, 70, "aunn", SPELL.NON, DIFFICULTY.EASY, "aunnnon1easy");