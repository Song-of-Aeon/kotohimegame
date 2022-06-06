var day_ = DAY.THURS;
var stage_ = 0;
myrooms = [
new cell(ROOMTYPE.CIRCLE, function() {
	cpp();
	if ncm(20) {
		if !(iterations%3) {
			c_ircle(global.gw/2, 0+iterations*19, 50, function() {
				c_shoot(x, y, 2.5, point_me(), bullets.point);
				c_shootcircle(x, y, .4, o_roommanager.roomRNG.next(359), 12, bullets.square);
				return false;
			});
		} else {
			if itneg() {
				c_ircle(global.gw/3*2, 50+iterations*19, 50, function() {
					c_shoot(x, y, 2.5, point_me(), bullets.point);
					c_shootcircle(x, y, .2, o_roommanager.roomRNG.next(359), 8, bullets.square);
					return false;
				});
			} else {
				c_ircle(global.gw/3, 50+iterations*19, 50, function() {
					c_shoot(x, y, 2.5, point_me(), bullets.point);
					c_shootcircle(x, y, .2, o_roommanager.roomRNG.next(359), 8, bullets.square);
					return false;
				});
			}
		}
		iterations++;
	}
	if iterations > 17 {
		c_endpattern(300);
	}
}, DIFFICULTY.EASY),
new cell(ROOMTYPE.CIRCLE, function() {
	cpp();
	if ncm(8) {
		if iterations < 300 {
			c_ircle(global.gw/2+sin(count/30)*(count/7), global.gh/2+cos(count/30)*(count/7), 20, function() {c_shoot(x, y, 1.5, point_me(), bullets.point) return false})
		}
		iterations++;
	}
	if iterations >= 350 c_endpattern();
}, DIFFICULTY.EASY),
new cell(ROOMTYPE.CIRCLE, function() {
	cpp();
	if ncm(80) && iterations < 12 {
		var guy = scriptable_create(function() {
			cpp();
			y += 1.3;
			if ncm(30) {
				if itneg() {
					c_ircle(x, y, 40, function() {
						c_shoot(x, y, 2, -95, bullets.point);
						c_shoot(x, y, 2, -85, bullets.point);
						c_shootabs(x, y, (-2+o_roommanager.roomRNG.next(4))/2, -2, bullets.point, c_red, function() {vspd+=.07});
					});
				} else {
					c_ircle(x, y, 40, function() {
						c_shoot(x, y, 2, -90, bullets.point);
						c_shootabs(x, y, (-2+o_roommanager.roomRNG.next(4))/2, -2, bullets.point, c_red, function() {vspd+=.07});
					});
				}
				iterations++;
			}
			if is_oob(51) {
				instance_destroy();
			}
		})
		iterations++;
		guy.x = count*9783%global.gw;
		guy.y = -50;
		guy.iterations = 0;
	}
	if iterations >= 12 && !instance_exists(o_) {
		c_endpattern();
	}
}, DIFFICULTY.EASY),
new cell(ROOMTYPE.CIRCLE, function() {
	//if ncml()
	cpp();
	if ncm(70) {
		//var shits = point_direction(ISAAC.x, ISAAC.y, global.gw/2, global.gh/2);
		//var shits2 = distabs(shits-60*itneg(), 100);
		//var shits3 = distabs(shits+60*itneg(), 100);
		var shits2 = global.gw/5
		var shits3 = global.gw-global.gw/5;
		if itneg() {
			var shits3 = global.gw/5
			var shits2 = global.gw-global.gw/5;
		}
		c_ircle(shits2, 100, 40, function() {
			var i;
			for (i=-1; i<2; i++) {
				c_shoot(x, y, 3.75, point_me()+i*3.75, global.bullets.point);
				c_shoot(x, y, 3.5, point_me()+i*3.5, global.bullets.point);
				c_shoot(x, y, 3.25, point_me()+i*3.25, global.bullets.point);
			}
			return false;
		});
		c_ircle(shits3, 100, 40, function() {
			var directo = rmrng(360);
			c_shootcircle(x, y, 4, directo, 20, global.bullets.point);
			c_shootcircle(x, y, 3.75, directo, 10, global.bullets.point);
			return false;
		});
		iterations++;
		cpp();
	}
	if iterations >= 10 {
		c_endpattern(120);
	}
}, DIFFICULTY.EASY),
new cell(ROOMTYPE.CIRCLE, function() {
	cpp();
	if ncm(4) {
		var shits = point_direction(ISAAC.x, ISAAC.y, global.gw/2, global.gh/2);
		var shits2 = distabs(shits-60, 100);
		c_ircle(global.gw/2+shits2.x, global.gh/2+shits2.y, 40, function() {
			var amount = rmrng(8)/2;
			var i;
			for (i=-amount; i<1+amount; i++) {
				c_shoot(x, y, 2.5, point_me()+i*5, global.bullets.point);
			}
			if (global.count%12 < 4) {
				c_shoot(x, y, .2, rmrng(359), global.bullets.square);
			}
		});
		iterations++;
		cpp();
	}
	if iterations >= 500 {
		c_endpattern(240);
	}
}, DIFFICULTY.EASY),
new cell(ROOMTYPE.CIRCLE, function() {
	cpp();
	if ncm(45) {
		c_ircle(global.gw/2+count*.2*itneg(), 40+count/6, 40, function() {
			c_shootcircle(x, y, 5, point_me(), 30, bullets.point, c_red, function() {spd=lerp(spd, 1, .04)});
			c_shootcircle(x, y, 4.75, point_me(), 15, bullets.point, c_purple, function() {spd=lerp(spd, 1, .04)});
		});
		iterations++;
	}
	if iterations >= 16 {
		c_endpattern(240);
	}
}, DIFFICULTY.EASY),
new cell(ROOMTYPE.CIRCLE, function() {
	cpp();
	if ncm(1300) {
		c_endpattern();
	}
}, DIFFICULTY.EASY, 1, POOLS.RAIN, function() {
	c_ircle(global.gw/2, 60, 80, function() {
		var i;
		for (i=0; i<16; i++) {
			var myguy = c_shootabs(x, y, (rmrng(10)-5)/3, rmrng(10)/2-2, global.bullets.square, c_purple, function() {
				cpp();
				if ncm(1000) {
					iterations = c_ircle(x, y, 40, function() {
						c_shootcircle(x, y, .5, rmrng(360), 8, global.bullets.square, c_blue);
						c_shoot(x, y, 3, point_me(), global.bullets.point, c_red);
						instance_destroy(owner);
					});
					iterations.owner = id;
				}
				if instance_exists(iterations) { //eat shit
					iterations.x = x;
					iterations.y = y;
				}
				if is_oob(0, true, false) {
					hspd = -hspd;
				}
				if is_oob(-vspd, false, true) {
					vspd = -vspd*.9;
				}
				vspd += .04;
			})
			myguy.count = i*60;
			myguy.image_xscale = 2;
			myguy.image_yscale = 2;
		}
	});
}),
]

myrooms[0].name = "you're in the way of my lawnmower!";
myrooms[1].name = "inside outside";
myrooms[2].name = "the sky is falling";
myrooms[3].name = "shotgun and shells";
myrooms[4].name = "asteroid belt";
myrooms[5].name = "you!";
myrooms[6].name = "i dropped my options! (evil)";

var i;
for (i=0; i<array_length(myrooms); i++) {
	c_pushroom(day_, stage_, myrooms[i]);
}
