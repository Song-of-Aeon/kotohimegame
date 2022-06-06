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
				var making = function() {c_shoot(x, y, shotspd, 90, global.bullets.needle)};
				shotspd = 10;
				var condition = !(shootcount%3);
				switch clamp(floor(shotpower), 1, 4) {
					case 2:
						making = function() {
							c_shoot(x-8, y, shotspd, 83+focus*5, global.bullets.needle);
							c_shoot(x+8, y, shotspd, 97-focus*5, global.bullets.needle);
						}
						condition = !(shootcount%4);
						break;
					case 3:
						making = function() {
							c_shoot(x-8, y, shotspd, 83+focus*5, global.bullets.needle);
							c_shoot(x+8, y, shotspd, 97-focus*5, global.bullets.needle);
							c_shoot(x-20, y, shotspd, 83+focus*5-shotspd*2, global.bullets.needle);
							c_shoot(x+20, y, shotspd, 97-focus*5+shotspd*2, global.bullets.needle);
						}
						condition = !(shootcount%5);
						break;
					case 4:
						making = function() {
							c_shoot(x-8, y, shotspd, 83+focus*5, global.bullets.needle);
							c_shoot(x+8, y, shotspd, 97-focus*5, global.bullets.needle);
							c_shoot(x-20, y, shotspd, 83+focus*5-shotspd*2, global.bullets.needle);
							c_shoot(x+20, y, shotspd, 97-focus*5+shotspd*2, global.bullets.needle);
							c_shoot(x+cos((shootcount/30))*40, y+30, shotspd, 90, global.bullets.needle);
							c_shoot(x-cos((shootcount/30))*40, y+30, shotspd, 90, global.bullets.needle);
						}
						condition = !(shootcount%5);
						break;
					case 5:
						making = function() {
							//lol?
							
						}
						break;
					default:
						making = function() {
							c_shoot(x, y, shotspd, 90, global.bullets.needle);
						}
						break;
					
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
	name: "Persuasion Needles",
	description: "Slightly-wide mostly-forward shot.",
	tooltip: "A fountain of metal spikes",
	sprite: s_precisionneedles,
	quality: 9,
	usage: ITTYPE.ACTIVE,
	deathbombable: false,
	activetype: ACTIVES.SHOT,
	powerdata: 3,
	rangedata: 2,
	difficultydata: 2,
}, ITEMS.NEEDLES);