nu pattern_ext(function() {
	count++;
	if ncm(120) {
		c_linkcircle(x, y, 4, irandom(360), 14, 10, 20, global.bullets.square, c_fuchsia, function() {
			iterations = o_boss.iterations;
			if !didit {
				spd *= .95;
				if spd <= .5 {
					didit = true;
					color = c_red;
					spd = 2;
					//dir = lerp(dir%180+180, point_me()+irandom(20)-10, .5);
				}
			} else {
				count++;
				tspd = sin(global.count/60)/2;
			}
		iterations++;
		});
	}
	if ncm(30) {
		c_link(x, y, 5, irandom(360), 10, 20, global.bullets.small, c_fuchsia, function() {
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
	}
}, 600, 70, "aunn", SPELL.NON, DIFFICULTY.HARD, "aunnnon2");

nu pattern_ext(function() {
	count++;
	if ncm(120) {
		c_linkcircle(x, y, 3, irandom(360), 10, 10, 14, global.bullets.square, c_fuchsia, function() {
			iterations = o_boss.iterations;
			if !didit {
				spd *= .95;
				if spd <= .5 {
					didit = true;
					color = c_red;
					spd = 2;
					//dir = lerp(dir%180+180, point_me()+irandom(20)-10, .5);
				}
			} else {
				count++;
				tspd = sin(global.count/80)/2;
			}
		iterations++;
		});
	}
	if ncm(30) {
		c_link(x, y, 5, irandom(360), 8, 18, global.bullets.small, c_fuchsia, function() {
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
	}
}, 600, 70, "aunn", SPELL.NON, DIFFICULTY.EASY, "aunnnon2easy");