// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//global.nemeshot = new bullet(s_bullet, 4, true, true, false, .6);

itemgen({
	asactive: function(player=global.me, press, held) {
		if press {
			with ISAAC {
				if !(shootcount%5) shootcount = 0;
			}
		}
		if held {
			with ISAAC {
				var making = function() {c_shoot(x, y, shotspd, 90, global.bullets.nemesis)};
				shotspd = 20;
				
				switch clamp(floor(shotpower), 1, 3) {
					case 2:
						making = function() {
							c_shoot(x, y, shotspd, 90, global.bullets.nemesis, c_white, munction(function() {
								count++;
								if count = 7 {
									var i;
									for (i=-1; i<=1; i++) {
										c_shoot(x, y, 0, 90+i*10, global.bullets.nemesis, c_white, munction(function() {
											count++;
											if count >= 7 instance_destroy();
										})).spd = shotspd;
									}
								}
								if count >= 13 instance_destroy();
							})).shotspd = shotspd;
						}
						var condition = !(shootcount%12);
						break;
					case 3:
						making = function() {
							c_shoot(x, y, shotspd, 90, global.bullets.nemesis, c_white, munction(function() {
								count++;
								if count >= 8 instance_destroy();
							}))
						}
						var condition = !(shootcount%9);
						break;
					default:
						making = function() {
							c_shoot(x, y, shotspd, 90, global.bullets.nemesis, c_white, munction(function() {
								count++;
								if count = 8 {
									var i;
									for (i=-2; i<=2; i++) {
										c_shoot(x, y, 0, 90+i*10, global.bullets.nemesis, c_white, munction(function() {
											count++;
											if count >= 7 instance_destroy();
										})).spd = shotspd;
									}
								}
								if count >= 14 instance_destroy();
							})).shotspd = shotspd;
						}
						var condition = !(shootcount%6) && shootcount%18<12;
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
	onpickup: function() {
		c_statthreshold(PICKUPS.OPTIONS);
	},
	//myhooks: {onstatthreshold: true, onpickup: true},
	name: "Vengeful Lightning",
	description: "Gets weaker at higher power levels.",
	tooltip: "Mononobe's nemesis",
	sprite: s_nemesis,
	quality: 9,
	usage: ITTYPE.ACTIVE,
	deathbombable: false,
	activetype: ACTIVES.SHOT,
	powerdata: 5,
	rangedata: 1,
	difficultydata: 4,
}, ITEMS.NEMESIS);

