var day_ = DAY.THURS;
var stage_ = 0;
myrooms = [
new cell(ROOMTYPE.TIME, function() {
	c
	if ncm(10) {
		var guy = c_makeshooter(global.gw/2+global.gw/2*-itneg(), ((count-1)%500)/5+40, 8, global.enemies.redfairy, new pattern(function() {
			c
			if count > 50 && count < 220 {
				iterations++;
				hspd = cos(iterations/10)*5*reverse;
				vspd = sin(iterations/10)*5;
				if ncm(100) {
					myguy = rmrng(360);
					c_shootfan(x, y, 1.4, myguy, myguy+20, 3, 3, global.bullets.point);
				}
			}
		}), 4);
		guy.reverse = itneg();
		guy.hspd = 4*itneg();
	}
	if ncm(500) {
		iterations++;
	}
	if iterations >= 4 {
		c_endpattern(500);
	}
}),
new cell(ROOMTYPE.TIME, function() {
	c
	if ncm(10) {
		guy = c_makeshooter(rmrng(global.gw-80)+40, -16, 5, global.enemies.redfairy, new pattern(function(){
			vspd = lerp(vspd, .5, .02);
		}, function() {
			c_shoot(x, y, 4, point_me(), global.bullets.point);
			c_shoot(x, y, 3.9, point_me(), global.bullets.point);
		}), 7);
		guy.hspd = .5*itneg();
		guy.vspd = 3;
		iterations++;
	}
	if iterations >= 40 {
		c_endpattern(200);
	}
}),
new cell(ROOMTYPE.TIME, c_null, u, u, u, function() {
	c_endpattern(1000);
	c_makeshooter(global.gw/2, -10, 500, global.enemies.magicfairy, new pattern(
		function() {
			y = lerp(y, global.gh/2-100, .02);
			c
			if ncm(80) && y>global.gh/2-120 {
				c_ircle(x, y, 80, function() {
					repeat(5) {
						var fary = c_makeshooter(x, y, 10, global.enemies.fairy, new pattern(function() {
							c
							if ncm(20) {
								c_shoot(x, y, speed+rmrng(20)/10, direction+rmrng(30)-15, global.bullets.point);
							}
						}, function() {c_meleeshot()}), 5);
						fary.direction = point_me()+rmrng(90)-45;
						fary.speed = rmrng(20)/8+.3;
					}
				})
			}
		}
	), 50);
}),
new cell(ROOMTYPE.TIME, function() {
	c
	if ncm(24) {
		var fary = c_makeshooter(-30, 100, 9, global.enemies.redfairy, new pattern(function() {
			c
			if ncm(40) {
				c_shoot(x, y, rmrng(10)/5+1, 260-rmrng(60), bul.point);
			}
		}), 4);
		fary.hspd = 1;
		fary.vspd = -.5;
		fary = c_makeshooter(WIDTH+30, 100, 9, global.enemies.redfairy, new pattern(function() {
			c
			if ncm(40) {
				c_shoot(x, y, rmrng(10)/5+1, rmrng(60)+280, bul.point);
			}
		}), 4);
		fary.hspd = -1;
		fary.vspd = -.5;
		iterations++;
	}
	if iterations >= 50 {
		c_endpattern(200);
	}
}),
new cell(ROOMTYPE.TIME, function() {
	c
	if ncm(16) {
		if global.me.hp > 2 {
			var fary = c_makeshooter(WIDTH/2, -20, 9, en.fairy, new pattern(c_null, function() {c_meleeshot()}));
			var farydir = ineg(rmrng(1));
			fary.hgrav = .2;
			fary.hspd = farydir*5;
			fary.vspd = 3;
		} else {
			var fary = c_makeshooter(WIDTH/2, -20, 8, en.fairy, new pattern(function() {
				var close = x-global.me.x;
				if abs(close) < 95 && y > ISAAC.y-100 {
					if !close {
						x = lerp(x, ISAAC.x-100, .1);
						hspd = -abs(hspd);
						//x--
					} else {
						x = lerp(x, ISAAC.x+100, .1);
						hspd = abs(hspd);
						//x++
					}
				}
				vspd += .035;
			}));
			var farydir = (rmrng(10)-5)/2;
			fary.hspd = farydir;
			fary.vspd = 1;
		}
		iterations++;
	}
	if iterations >= 50 {
		c_endpattern(200);
	}
}, u, u, u, function() {
	tendency = 0;
}),
new cell(ROOMTYPE.TIME, function() {
	c
	if ncm(26) {
		var fary = c_makeshooter(WIDTH/2+(WIDTH/2)*itneg(), 80, 10, en.redfairy, new pattern(function() {
			c
			if ncm(20) {
				c_shootabs(x, y, rmrng(20)/5-2, -rmrng(10)/5-1.5, bul.point, c_blue, function() {
					if place_meeting(x+hspd, y+vspd, o_shooter) && vspd {
						vspd = -vspd;
					}
					vspd += .05;
				});
			}
			y = sin(count/20)*30+80;
		}), 4)
		fary.hspd = 1*-itneg();
		iterations++;
	}
	if iterations >= 40 {
		c_endpattern(300);
	}
}),
new cell(ROOMTYPE.TIME, function() {
	c
	if ncm(30) {
		var fary = c_makeshooter(WIDTH/2+(WIDTH/2)*itneg(), 120, 10, en.redfairy, new pattern(function() {
			c
			y = sin(count/20)*30+120;
		}), 4);
		fary.hspd = 1*-itneg();
		iterations++;
	}
	if iterations >= 30 {
		c_endpattern(200);
	}
}, u, u, u, function() {
	var i
	for (i=0; i<2; i++) {
		var fary = c_makeshooter(40+(WIDTH-80)*i, -40, 60, en.magicfairy, new pattern(function() {
			if !iterations {
				c
				if count > 100 {
					iterations = true;
				}
			} else {
				if ncm(3) {
					c_shoot(x, y, 1+abs(count-80)/15, point_me()+rmrng(20)-10, bul.point);
				}
				cmm();
				cmm();
				if count <= 0 {
					iterations = false;
				}
			}
		
			if iterations {
			
			}
			vspd = lerp(vspd, 0, .04);
		}), 14);
		fary.vspd = 5;
		fary.count = 50*i;
	}
}),
new cell(ROOMTYPE.TIME, function() {
	c
	if ncm(20) {
		var fary = c_makeshooter(80+(WIDTH-160)*(iterations%2), -40, 10, en.redfairy, new pattern(function() {
			hspd = lerp(hspd, 2*iterations, .01);
			vspd = lerp(vspd, 0, .01);
		}), 4);
		fary.iterations = itneg();
		fary.vspd = 2;
		iterations++;
	}
	if iterations >= 40 {
		c_endpattern(200);
	}
}, u, u, u, function() {
	var fary = c_makeshooter(WIDTH/2, -40, 60, en.magicfairy, new pattern(function() {
		c
		if ncm(50) {
			c_shootfan(x, y, 2, point_me()-20, point_me()+20, 8, 0, bul.point);
		}
		if ncm(75) {
			c_shootfan(x, y, 3, point_me()-14, point_me()+14, 5, 0, bul.point);
			count = 0;
		}
		vspd = lerp(vspd, 0, .05);
	}), 20);
	fary.vspd = 5;
}),
]
myrooms[0].name = "fairy tornado";
myrooms[1].name = "shwoom shwoop";
myrooms[2].name = "fartin";
myrooms[3].name = "converging";
myrooms[4].name = "heartache";
myrooms[5].name = "umbrella";
myrooms[6].name = "two brothers (like that one game)";
myrooms[7].name = "one brother :[";

var i;
for (i=0; i<array_length(myrooms); i++) {
	c_pushroom(day_, stage_, myrooms[i]);
}

/*
new cell(ROOMTYPE.TIME, function() {
	c
	if ncm(10) {
		guy = c_makeshooter(rmrng(global.gw-80)+40, -16, 8, global.enemies.redfairy, new pattern(function(){
			vspd -= .1;
		}, function() {
			c_shoot(x, y, 4, point_me(), global.bullets.point);
			c_shoot(x, y, 3.9, point_me(), global.bullets.point);
		}), 4);
		guy.hspd = .5*itneg();
		guy.vspd = 2;
		iterations++;
	}
	if iterations >= 40 {
		c_endpattern(200);
	}
}),
new cell(ROOMTYPE.TIME, function() {
	c
	if ncm(20) {
		guy = c_makeshooter(rmrng(global.gw-80)+40, -16, 8, global.enemies.fairy, new pattern(function(){lerp(vspd, .5, .05)}, function() {c_shoot(x, y, 4, point_me(), global.bullets.point)}), 4);
		guy.hspd = 3*itneg();
		guy.vspd = 8;
		iterations++;
	}
	if iterations >= 20 {
		c_endpattern(200);
	}
}),

if !count {
		c_makeshooter(global.gw/2, global.gh/2, 40, global.enemies.magicfairy, new pattern(function() {
			cpp();
			c_shootfan(x, y, 3, count*20, count*20+40, 3, 2, global.bullets.point);
			//c_shootfan(x, y, 3, count*20, count*20+40, 5, 2, global.bullets.point); //raggeddy ass bullet spread (good)
			return true;
		}));
	}
	cpp();
*/