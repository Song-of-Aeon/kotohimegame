// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
nu bullet("convergent", s_needles, 1.5, true, true, false, 0);
nu bullet("convergentwo", s_chiyurispecial, 2, false, true, false, .6);
global.imsorrybreadman = function() { //highly possible that this index already exists
//	draw_circle
}
global.imsorrybreadman2 = function() { //highly possible that this index already exists
	if ncm(5) {
		guy = new Particle(x, y, function() {
			draw_set_color(c_cyan);
			draw_circle(x, y, size, false);
			size -= .4;
			if !size die();
		})
		guy.size = 3;
	}
}
itemgen({
	asactive: function(player=global.me, press, held) {
		if press {
			with ISAAC {
				if !(shootcount%5) shootcount = 0;
			}
		}
		if held {
			with ISAAC {
				var making = function() {};
				shotspd = 10;
				var condition = !(shootcount%3);
				switch clamp(floor(shotpower), 1, 3) {
					case 2:
						shotspd = 14;
						making = function() {
							var me = irandom(120+(!focus*80))+(-60-(!focus*40));
							c_shoot(x+me, 340, shotspd, point_direction(x+me, 340, x+irandom(30)-15, y-60-60*focus), global.bullets.convergent, u, u, global.imsorrybreadman2);
						}
						
						condition = !(shootcount%2);
						break;
					case 3:
						shotspd = 14;
						making = function() {
							var me = irandom(120+(!focus*80))+(-60-(!focus*40));
							c_shoot(x+me, 340, shotspd, point_direction(x+me, 340, x+irandom(30)-15, y-60-60*focus), global.bullets.convergent, u, u, global.imsorrybreadman2);
							if global.count % 30 < 2 {
								chump = c_shoot(x, y, 8, 90, bul.convergentwo);
								chump.image_xscale *= 3;
								chump.image_yscale *= 3;
							}
						}
						condition = !(shootcount%2);
						break;
					default:
						making = function() {
							var me = irandom(120+(!focus*80))+(-60-(!focus*40));
							c_shoot(x+me, 340, shotspd, point_direction(x+me, 340, x+irandom(30)-15, y-60-60*focus), global.bullets.convergent, u, u, global.imsorrybreadman2);
						}
						break;
					
				}
				st_shoot(making, condition, false);
				shootcount++;
			}
		}
	},
	onstats: function() {
		c_lowpower(3);
	},
	ondraw: function() {
		with ISAAC draw_circle(x, y-60-60*focus, 8, true);
	},
	//myhooks: {onstatthreshold: true, onpickup: true},
	name: "AMEA Type Convergent",
	description: "",
	tooltip: "\"Anomalous Magic Emulatory Articulator\"",
	sprite: s_convergent,
	quality: 9,
	usage: ITTYPE.ACTIVE,
	deathbombable: false,
	activetype: ACTIVES.SHOT,
	powerdata: 4,
	rangedata: 3,
	difficultydata: 3,
}, ITEMS.CONVERGENT);