// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//gc_enable(false);

nu bullet("forbiddenshot", s_null, 4, false, true, false, 1);

itemgen({
	asactive: function(player=global.me, press, held) {
		if charge >= chargemax && press {
			using = true;
			ISAAC.inv = 30;
			charge = 0;
			bullets = c_shoot(ISAAC.x, ISAAC.y, 1, 90, global.bullets.forbiddenshot, c_white, munction(function() {}),function(){
				shader_set(z_angry)
				shader_set_uniform_f(shader_get_uniform(z_angry,"time"),delta_time);
				draw_set_color(c_white);
				draw_circle(x,y,22,false);
				draw_set_color($009999);
				draw_circle(x,y,20,false);
				shader_reset();
				});
		}
		if !(ISAAC.inv && using) {
			using = false;
		}
		if using {
			c_clearrect(0, player.y-player.inv, 400, player.y+player.inv);
			c_clearrect(player.x-player.inv, 0, player.x+player.inv, 400);
		}
		if(instance_exists(bullets)){
			c_screenshake(40/point_distance(bullets.x,bullets.y,player.x,player.y),1);
		}
	},
	ongraze: function(player=global.me) {
		charge++;
	},
	ondraw: function(player=global.me) {
		if using {
			with bullets {
				/*draw_set_color(c_black);
				draw_triangle(x-8, y+8, x+8, y+8, x, y, false);
				draw_triangle(x-8, y+8, x+8, y+8, x, y+16, false);
				draw_set_color(c_white);
				draw_triangle(x-8, y+8, x+8, y+8, x, y, true);
				draw_triangle(x-8, y+8, x+8, y+8, x, y+16, true);*/
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
	name: "Frayed Boundary",
	description: "Shoots a powerful, slow-moving bullet.",
	tooltip: "Three-way mirror",
	sprite: s_frayedboundary,
	quality: 7,
	usage: ITTYPE.ACTIVE,
	bullets: noone,
	charge: 20,
	chargemax: 20,
	deathbombable: false,
	used: false,
	using: true,
	activetype: ACTIVES.FLASHBOMB,
}, ITEMS.FORBIDDENBULLET);