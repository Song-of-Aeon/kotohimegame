nu pattern_ext(function() {
	c
	if ncm(10) {
		var lookat = point_me()-30;
		var guy = distabs(lookat+count/4, 90);
		c_shoot(x+guy.x, y+guy.y, .1, lookat+30, bul.small, u, function() {c spd = lerp(spd, 3, .02)});
	}
	if nam(count+5, 10) {
		var lookat = point_me()-30;
		var guy = distabs(lookat+count/4+180, 90);
		c_shoot(x+guy.x, y+guy.y, .1, lookat+30, bul.small, u, function() {c spd = lerp(spd, 3, .02)});
	}
	if ncm(10) {
		var lookat = point_me()-30;
		var guy = distabs(lookat-count/4, 90);
		c_shoot(x+guy.x, y+guy.y, 3, lookat+30, bul.small, u, function() {c spd = lerp(spd, .5, .02)});
	}
	if nam(count+5, 10) {
		var lookat = point_me()-30;
		var guy = distabs(lookat-count/4+180, 90);
		c_shoot(x+guy.x, y+guy.y, 3, lookat+30, bul.small, u, function() {c spd = lerp(spd, .5, .02)});
	}
	
	if ncm(180) {c_ircle(x, y, 60, function() {
		var i;
		for (i=0; i<8; i++) {
			c_shoot(x, y, 6-i/2, point_me()+180, bul.square, u, function() {c spd = lerp(spd, 1, .02) dir += seed.next(100)/20-2.5 if is_oob() && spd > 1.5 dir += 180});
			c_shoot(x, y, 6-i/2, point_me()+180-10, bul.square, u, function() {c spd = lerp(spd, 1, .02) dir += seed.next(100)/20-2.5 if is_oob() && spd > 1.5 dir += 180});
			c_shoot(x, y, 6-i/2, point_me()+180-20, bul.square, u, function() {c spd = lerp(spd, 1, .02) dir += seed.next(100)/20-2.5 if is_oob() && spd > 1.5 dir += 180});
			c_shoot(x, y, 6-i/2, point_me()+180+10, bul.square, u, function() {c spd = lerp(spd, 1, .02) dir += seed.next(100)/20-2.5 if is_oob() && spd > 1.5 dir += 180});
			c_shoot(x, y, 6-i/2, point_me()+180+20, bul.square, u, function() {c spd = lerp(spd, 1, .02) dir += seed.next(100)/20-2.5 if is_oob() && spd > 1.5 dir += 180});
		}
	})}
}, 600, 70, "aunn", SPELL.NON, DIFFICULTY.HARD, "aunning");

nu pattern_ext(function() {
	
}, 600, 70, "aunn", SPELL.NON, DIFFICULTY.EASY, "aunnnon1easy");


/*
c
if ncm(30) {
	var lookat = point_me()-30;
	var guy = distabs(lookat+count, 90);
	c_shoot(x+guy.x, y+guy.y, .3, lookat+30, bul.small, u, function() {c spd = lerp(spd, 3, .05)});
}
if nam(count+15, 30) {
	var lookat = point_me()-30;
	var guy = distabs(lookat+count+180, 90);
	c_shoot(x+guy.x, y+guy.y, 2, lookat+30, bul.small);
}
*/