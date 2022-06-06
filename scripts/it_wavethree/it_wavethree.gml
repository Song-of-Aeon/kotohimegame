//gen u items
nu bullet("shitto", s_mistake, 5, false, true, false, .4);

itemgen({
	asactive: function(player=global.me, press, held, released) {
		if going {
			
			
			if going = 1 {
				player.inv = 1;
				if boompower {
					with player c_shoot(x-sin(global.count/10)*14, y, 5, 90, global.bullets.shitto, c_white, function() {
						c_clearradius(x, y, 20);
					});
					boompower--;
				} else {
					going = false;
					boompower = 40;
					c_stateval();
				}
			} else {
				going--;
				with player {
					defense = 999;
					deathbombwindow = 0;
					hspd /= 4;
					vspd /= 4;
					create_particle_orange(x, y);
				}
			}
		}
		if press && charge >= chargereq && !going {
			//player.inv = 120;
			going = 180;
			charge -= chargereq;
		}
	},
	onhit: function(player=global.me) {
		if going {
			boompower += 10;
		}
	},
	onroomclear: function() {
		charge++;
	},
	name: "karma scale",
	description: "Become invincible for a short period of time, and shoot bullets based on how many times you get hit.",
	tooltip: "level 3 cell shield art from crosscode",
	sprite: s_mistake,
	quality: 7,
	usage: ITTYPE.ACTIVE,
	
	boompower: 40,
	going: false,
	charge: 8,
	chargemax: 8,
	chargereq: 4,
	deathbombable: false,
	used: false,
	activetype: ACTIVES.BOMB,
	powerdata: 4,
	capacitydata: 2,
	utilitydata: 2,
}, ITEMS.WAVETHREE);