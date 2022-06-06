var day_ = DAY.THURS;
var stage_ = 0;
myrooms = [
new cell(ROOMTYPE.CIRCLE, function() {
	cpp();
	if ncm(20) {
		if !(iterations%3) {
			c_ircle(global.gw/2, 0+iterations*15, 50, function(){
				c_shoot(x, y, 3, point_me(), bullets.point);
				c_shootcircle(x, y, .4, o_roommanager.roomRNG.next(359), 12, bullets.square);
				return false;
			});
		} else {
			if itneg() {
				c_ircle(global.gw/3*2, 50+iterations*15, 50, function(){
					c_shoot(x, y, 3, point_me()-10, bullets.point);
					c_shoot(x, y, 3, point_me()+10, bullets.point);
					c_shootcircle(x, y, .4, o_roommanager.roomRNG.next(359), 12, bullets.square);
					return false;
				});
			} else {
				c_ircle(global.gw/3, 50+iterations*15, 50, function(){
					c_shoot(x, y, 3, point_me()-10, bullets.point);
					c_shoot(x, y, 3, point_me()+10, bullets.point);
					c_shootcircle(x, y, .4, o_roommanager.roomRNG.next(359), 12, bullets.square);
					return false;
				});
			}
		}
		iterations++;
	}
	if iterations > 22 {
		c_endpattern(400);
	}
}),
new cell(ROOMTYPE.CIRCLE, function() {
	cpp();
	if ncm(4) {
		if iterations < 300 {
			c_ircle(global.gw/2+sin(count/30)*(count/7), global.gh/2+cos(count/30)*(count/7), 20, function() {c_shoot(x, y, 2, point_me(), bullets.point) return false})
		}
		iterations++;
	}
	if iterations >= 350 c_endpattern();
}),
new cell(ROOMTYPE.CIRCLE, function() {
	cpp();
	if ncm(80) && iterations < 12 {
		var guy = scriptable_create(function() {
			cpp();
			y += 1.5;
			if ncm(20) {
				if itneg() {
					c_ircle(x, y, 40, function() {
						c_shoot(x, y, 3, -75, bullets.point);
						c_shoot(x, y, 3, -105, bullets.point);
						c_shootabs(x, y, (-2+o_roommanager.roomRNG.next(4))/2, -2, bullets.point, c_red, function() {vspd+=.07});
					});
				} else {
					c_ircle(x, y, 40, function() {
						c_shoot(x, y, 3, -90, bullets.point);
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
	if iterations >= 12 && ! instance_exists(o_) {
		c_endpattern();
	}
}),
new cell(ROOMTYPE.CIRCLE, function() {
	//if ncml()
	cpp();
	if ncm(50) {
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
			for (i=-2; i<3; i++) {
				c_shoot(x, y, 5, point_me()+i*4, global.bullets.point);
				c_shoot(x, y, 4.75, point_me()+i*3.75, global.bullets.point);
				c_shoot(x, y, 4.5, point_me()+i*3.5, global.bullets.point);
				c_shoot(x, y, 4.25, point_me()+i*3.25, global.bullets.point);
				c_shoot(x, y, 4, point_me()+i*3, global.bullets.point);
			}
			return false;
		});
		c_ircle(shits3, 100, 40, function() {
			var directo = rmrng(360);
			c_shootcircle(x, y, 5, directo, 40, global.bullets.point);
			c_shootcircle(x, y, 4.75, directo, 20, global.bullets.point);
			return false;
		});
		iterations++;
		cpp();
	}
	if iterations >= 10 {
		c_endpattern(120);
	}
}),
new cell(ROOMTYPE.CIRCLE, function() {
	cpp();
	if ncm(30) {
		c_ircle(global.gw/2+count*.2*itneg(), 40+count/6, 40, function() {
			c_shootcircle(x, y, 7, point_me(), 40, bullets.point, c_red, function() {spd=lerp(spd, 1, .04)});
			c_shootcircle(x, y, 6.75, point_me(), 20, bullets.point, c_purple, function() {spd=lerp(spd, 1, .04)});
		});
		iterations++;
	}
	if iterations >= 20 {
		c_endpattern(240);
	}
}),
new cell(ROOMTYPE.CIRCLE, function() {
	cpp();
	if ncm(1300) {
		c_endpattern();
	}
}, DIFFICULTY.HARD, 1, POOLS.RAIN, function() {
	c_ircle(global.gw/2, 60, 80, function() {
		var i;
		for (i=0; i<20; i++) {
			var myguy = c_shootabs(x, y, (rmrng(10)-5)/3, rmrng(10)/2-2, global.bullets.eviloption, c_purple, function() {
				image_angle++;
				cpp();
				if ncm(1000) {
					iterations = c_ircle(x, y, 40, function() {
						c_shootcircle(x, y, 1, rmrng(360), 12, global.bullets.square, c_blue);
						var i;
						for (i=-1; i<2; i++) {
							c_shoot(x, y, 4-abs(i/2), point_me()+i*3, global.bullets.point, c_red);
						}
						/*with otherguy {
							path = path_add();
							path_set_closed(path, false);
							path_set_kind(path, true);
							path_add_point(path, x, y, 10);
							path_add_point(path, ISAAC.x, ISAAC.y-60, 10);
							path_add_point(path, ISAAC.x, ISAAC.y, 10);
							path_start(path, 10, path_action_stop, true);
						}*/
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
nu bullet("eviloption", s_option, 3, false, true, false, 1);

myrooms[0].name = "you're in the way of my lawnmower!";
myrooms[1].name = "inside outside";
myrooms[2].name = "the sky is falling";
myrooms[3].name = "shotgun and shells";
myrooms[4].name = "you!";
myrooms[5].name = "i dropped my options! (evil)";

var i;
for (i=0; i<array_length(myrooms); i++) {
	c_pushroom(day_, stage_, myrooms[i]);
}
