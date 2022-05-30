nu pattern_ext(function() { //wiggle walls
	count++;
	if ncm(125) {
		c_shootcircle(x-100, y, 4, count, 12, global.bullets.point, c_red, method(undefined, function() {
			count++;
			if ncm(2) {
				c_shoot(x, y, 1, dir, global.bullets.small, c_yellow, method(undefined, function() {
					count++;
					tspd = cos(count/20)*3;
				}))
			}
			if count >= 20 instance_destroy();
		}))
		c_shootcircle(x+100, y, 4, count, 12, global.bullets.point, c_red, method(undefined, function() {
			count++;
			if ncm(2) {
				c_shoot(x, y, 1, dir, global.bullets.small, c_yellow, method(undefined, function() {
					count++;
					tspd = cos(count/20)*3;
				}))
			}
			if count >= 20 instance_destroy();
		}))
	}
	if ncm(20) {
		c_shootcircle(x, y, 3, count, 20, global.bullets.point, c_purple);
	}
		
		
	//tspd = cos(conditions[currentbehavior]/20)*3;
}, 600, 70, "aunn", SPELL.CARD, DIFFICULTY.HARD, "Spinning Top \"Broken Chains\"");

nu pattern_ext(function() { //wiggle walls
	count++;
	if ncm(200) {
		c_shootcircle(x-100, y, 3, count, 12, global.bullets.point, c_red, method(undefined, function() {
			count++;
			if ncm(4) {
				c_shoot(x, y, 1, dir, global.bullets.small, c_yellow, method(undefined, function() {
					count++;
					tspd = cos(count/20)*3;
				}))
			}
			if count >= 28 instance_destroy();
		}))
		c_shootcircle(x+100, y, 3, count, 12, global.bullets.point, c_red, method(undefined, function() {
			count++;
			if ncm(4) {
				c_shoot(x, y, 1, dir, global.bullets.small, c_yellow, method(undefined, function() {
					count++;
					tspd = cos(count/20)*3;
				}))
			}
			if count >= 28 instance_destroy();
		}))
	}
	if ncm(34) {
		c_shootcircle(x, y, 2, count, 20, global.bullets.point, c_purple);
	}
		
		
	//tspd = cos(conditions[currentbehavior]/20)*3;
}, 600, 70, "aunn", SPELL.CARD, DIFFICULTY.EASY, "Spinning Top \"Broken Chains\"");
//formerly wiggle walls the aunn attack