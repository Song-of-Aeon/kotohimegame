// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
itemgen({
	asactive: function(player=global.me, press, held) {
		if press {
			with ISAAC {
				if !(shootcount%5) shootcount = 0;
			}
		}
		if held {
			with ISAAC {
				shotspd = 10;
				var condition = !(shootcount%20);
				var making = function() {
					c_shootlaser(x, y, .5, 90, 20, 80, las.kaguya,c_white, function() {
						c
						spd = sin(count/180)*20+.2;
					});
					c_link(x, y, 2, 90-20+irandom(5)+focus*12, 8, 3, bul.kaguya, c_red, function() {
						c
						tspd = sin(-count/20);
						color = make_color_hsv(count*2, 255, 255);
					})
					c_link(x, y, 2, 90+20-irandom(5)-focus*12, 8, 3, bul.kaguya, c_red, function() {
						c
						tspd = sin(count/20);
						color = make_color_hsv(count*2, 255, 255);
					})
				}
				st_shoot(making, condition, false);
				shootcount++;
			}
		}
	},
	onstats: function() {
		c_lowpower(4);
	},
	onpickup: function() {
		c_statthreshold(PICKUPS.OPTIONS);
	},
	//myhooks: {onstatthreshold: true, onpickup: true},
	name: "kaguyaa",
	description: "slow/wide shot",
	tooltip: "lazy bullets for a lazy princess",
	sprite: s_precisionneedles,
	quality: 9,
	usage: ITTYPE.ACTIVE,
	deathbombable: false,
	activetype: ACTIVES.SHOT,
	powerdata: 3,
	rangedata: 4,
	difficultydata: 3,
}, ITEMS.KAGUYAA);

nu laser("kaguya", s_bulletpoint, .5, false, true, false, .4);
nu bullet("kaguya", s_bulletcircle, 2, true, true, true, .5);