// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
itemgen({
	asactive: function(player=global.me, press, held) {
		if release {
			with ISAAC {
				if shootcount >= 50 && focus {
					c_bang();
					shootcount = 0;
				}
			}
		}
		if held {
			with ISAAC {
				var making = function() {c_shoot(x, y, 5, global.count%40-20+90, global.ineedle)};
				shotspd = 10;
				var condition = !(shootcount%3);
				if focus {
					switch clamp(floor(shotpower), 1, 4) {
						case 2:
							making = function() {
								c_shoot(x, y, 5, global.count%40-20+90, global.ineedle);
							}
							condition = !(shootcount%6);
							break;
						case 3:
							making = function() {
								c_shoot(x, y, 5, global.count%40-20+90, global.ineedle);
								c_shoot(x, y, 5, -((global.count+20)%40-20)+90, global.ineedle);
							}
							condition = !(shootcount%6);
							break;
						default:
							making = function() {
								c_shoot(x, y, 5, global.count%40-20+90, global.ineedle);
							}
							condition = !(shootcount%6);
							break;
					}
					st_shoot(making, condition, false);
					shootcount++;
				} else {
					switch clamp(floor(shotpower), 1, 4) {
						case 2:
							making = function() {
								c_shoot(x, y, 5, global.count%40-20+90, global.ineedle);
							}
							condition = !(shootcount%3);
							break;
						case 3:
							making = function() {
								c_shoot(x, y, 5, global.count%40-20+90, global.ineedle);
								c_shoot(x, y, 5, -((global.count+20)%40-20)+90, global.ineedle);
							}
							condition = !(shootcount%5);
							break;
						default:
							making = function() {
								c_shoot(x, y, 5, global.count%40-20+90, global.ineedle);
							}
							break;
					}
					st_shoot(making, condition, false);
					shootcount++;
				}
				
			}
		}
	},
	onstats: function() {
		c_lowpower(3);
	},
	onpickup: function() {
		c_statthreshold(PICKUPS.OPTIONS);
	},
	//myhooks: {onstatthreshold: true, onpickup: true},
	name: "pofvsword",
	description: "quirky shot type that can erase bullets by itself",
	tooltip: "doesnt work dont use",
	sprite: s_mistake,
	quality: 9,
	usage: ITTYPE.MECHANIC,
	deathbombable: false,
	activetype: ACTIVES.SHOT,
}, ITEMS.POFVSWORD);