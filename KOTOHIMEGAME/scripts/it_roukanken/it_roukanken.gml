//gen u items

nu hitscan("roukanken", s_lasertestwo, 1, true, true, false, 1.2);

itemgen({
	asactive: function(player=global.me, press, held, released) {
		shotspd = 3;
		//var making = function() {c_bang(0, ISAAC.y-shootcount, 0, 4, 0, 20, global.livebitch)};
		var making;
		switch clamp(floor(ISAAC. shotpower), 1, 5) {
			case 2:
				making = function() {
					var bitches = seed.next(30)-15;
					c_bang(0, ISAAC.y-shootcount-foclerp-bitches*2, -bitches/2, 4, 0, 20, hsn.roukanken);
					c_bang(0, ISAAC.y-shootcount-foclerp+bitches*2, bitches/2, 4, 0, 20, hsn.roukanken);
				}
				break;
			case 3:
				making = function() {
					var bitches = seed.next(30)-15;
					c_bang(0, ISAAC.y-shootcount-foclerp-bitches*3, -bitches/1.5, 4, 0, 20, hsn.roukanken);
					c_bang(0, ISAAC.y-shootcount-foclerp+bitches*3, bitches/1.5, 4, 0, 20, hsn.roukanken);
					c_bang(0, ISAAC.y-shootcount-foclerp+bitches, bitches/4, 4, 0, 20, hsn.roukanken);
				}
				break;
			case 4:
				making = function() {
					var bitches = seed.next(30)-15;
					c_bang(0, ISAAC.y-shootcount-foclerp-bitches*2, -bitches/2, 4, 0, 20, hsn.roukanken);
					c_bang(0, ISAAC.y-shootcount-foclerp+bitches*2, bitches/2, 4, 0, 20, hsn.roukanken);
					c_bang(0, ISAAC.y-shootcount-foclerp-bitches*4, -bitches, 4, 0, 20, hsn.roukanken);
					c_bang(0, ISAAC.y-shootcount-foclerp+bitches*4, bitches, 4, 0, 20, hsn.roukanken);
				}
				break;
			case 5:
				making = function() {
					//lol?
					var bitches = seed.next(30)-15;
					c_bang(0, ISAAC.y-shootcount-foclerp-bitches*2, -bitches/2, 4, 0, 20, hsn.roukanken);
					c_bang(0, ISAAC.y-shootcount-foclerp+bitches*2, bitches/2, 4, 0, 20, hsn.roukanken);
					c_bang(0, ISAAC.y-shootcount-foclerp-bitches*4, -bitches, 4, 0, 20, hsn.roukanken);
					c_bang(0, ISAAC.y-shootcount-foclerp+bitches*4, bitches, 4, 0, 20, hsn.roukanken);
					c_bang(0, ISAAC.y-shootcount-foclerp-bitches*6, -bitches*1.5, 4, 0, 20, hsn.roukanken);
					c_bang(0, ISAAC.y-shootcount-foclerp+bitches*6, bitches*1.5, 4, 0, 20, hsn.roukanken);
				}
				break;
			default:
				making = function() {
					var bitches = seed.next(30)-15;
					c_bang(0, ISAAC.y-shootcount-foclerp+bitches, bitches/4, 4, 0, 20, hsn.roukanken);
				}
				break;
		}
		var condition = released && shootcount > 10;
		if held {
			
			if ISAAC.focus {
				foclerp = lerp(foclerp, 180, .05);
				shootcount += shotspd/5;
			} else {
				shootcount += shotspd;
			}
		}
		
		st_shoot(making, condition, false);
		if released {
			shootcount = 0;
			foclerp = 0;
		}
	},
	ondraw: function(player=global.me) {
		if shootcount {
			draw_set_color(c_white);
			draw_line_width(player.x, player.y, player.x, player.y-shootcount-foclerp, 3);
		}
		
	},
	onstats: function() {
		c_lowpower(5);
	},
	seed: new RNG(global.seed),
	name: "Roukanken",
	description: "Hold to aim and release to cut across the screen.",
	tooltip: "HOLY SHIT A SWORD!!",
	sprite: s_roukanken,
	quality: 9,
	usage: ITTYPE.ACTIVE,
	shootcount: 0,
	foclerp: 0,
	
	
	charge: 0,
	chargemax: 0,
	deathbombable: false,
	used: false,
	activetype: ACTIVES.NULL,
	powerdata: 4,
	rangedata: 3,
	difficultydata: 4,
}, ITEMS.ROUKANKEN);