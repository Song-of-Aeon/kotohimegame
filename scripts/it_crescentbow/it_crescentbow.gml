// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//gc_enable(false);

nu bullet("crescentshot", s_bullet, 25, false, true, false, 1);
nu bullet("empty", s_null, 0, false, true, false, 1);

itemgen({
	asactive: function(player=global.me, press, held) {
		if charge >= chargemax && press {
			using = true;
			ISAAC.inv = 30;
			charge = 0;
			bullets = c_shoot(ISAAC.x, ISAAC.y, 16, 90, global.bullets.crescentshot, c_white, munction(function() {
				c_clearrect(x-8, y-10, x+8, y+30);
				count++;
				c_shoot(x, y, 8, count*20, global.bullets.empty, c_white, munction(function() {
					spd = lerp(spd, 0, .1);
					c_clearradius(x, y, spd*3);
					if spd <= .2 {
						instance_destroy();
					}
					
				}), function() {
					draw_set_color(c_black);
					draw_circle(x, y, spd*3, false);
					draw_set_color(c_white);
					draw_circle(x, y, spd*3, true);
				});
				c_shoot(x, y, 8, count*20+180, global.bullets.empty, c_white, munction(function() {
					spd = lerp(spd, 0, .1);
					c_clearradius(x, y, spd*3);
					if spd <= .2 {
						instance_destroy();
					}

				}), function() {
					draw_set_color(c_black);
					draw_circle(x, y, spd*3, false);
					draw_set_color(c_white);
					draw_circle(x, y, spd*3, true);
				});
			}));
		}
		if !(ISAAC.inv && using) {
			using = false;
		}
		if using {
			c_clearrect(0, player.y-player.inv, 400, player.y+player.inv);
			c_clearrect(player.x-player.inv, 0, player.x+player.inv, 400);
		}
	},
	ongraze: function(player=global.me) {
		charge++;
	},
	ondraw: function(player=global.me) {
		if using {
			with bullets {
				draw_set_color(c_black);
				draw_triangle(x-8, y+8, x+8, y+8, x, y, false);
				draw_triangle(x-8, y+8, x+8, y+8, x, y+16, false);
				draw_set_color(c_white);
				draw_triangle(x-8, y+8, x+8, y+8, x, y, true);
				draw_triangle(x-8, y+8, x+8, y+8, x, y+16, true);
				
				
			}
		}
		if charge < chargemax {
			draw_set_color(c_silver);
		} else {
			draw_set_color(c_yellow);
		}
		//draw_rectangle(10, 340, 10+clamp(charge, 0, chargemax)*5, 350, false);
		draw_set_color(c_white);
	},
	//myhooks: {ongraze: true, ondraw: true},
	name: "Crescent Moon Bow",
	description: "Shoots a piercing arrow that deals damage and clears nearby bullets.",
	tooltip: "Millenia in the making",
	sprite: s_crescentbow,
	quality: 7,
	usage: ITTYPE.ACTIVE,
	
	charge: 20,
	chargemax: 20,
	deathbombable: false,
	used: false,
	using: true,
	activetype: ACTIVES.FLASHBOMB
}, ITEMS.CRESCENTBOW);