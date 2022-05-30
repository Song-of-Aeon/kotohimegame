//gen u items

itemgen({
	asactive: function(player=global.me, press, held, released) {
		if press && charge >= chargereq && !going {
			going = true;
			bombx = player.x;
			bomby = player.y;
			charge -= chargereq;
		}
		if going {
			bombat += power(sin(count/120)*1.5, 5);
			count++;
			c_clearrect(0, bomby-20-bombat, 290, bomby+20+bombat, false);
			c_clearrect(bombx-20-bombat, 0, bombx+20+bombat, 340, false);
		}
		if count >= 240 {
			going = false;
			count = 0;
			bombat = 0;
		}
	},
	ondraw: function(player=global.me) {
		if going {
			draw_rectangle(0, bomby-20-bombat, 290, bomby+20+bombat, false);
			draw_rectangle(bombx-20-bombat, 0, bombx+20+bombat, 340, false);
		}
	},
	onroomclear: function() {
		charge++;
	},
	name: "Dream Sign \"Demon-sealing Circle\"",
	description: "very simple bomb. wish i had animation curves",
	tooltip: "...but it's a square...",
	sprite: s_demonsealing,
	quality: 7,
	usage: ITTYPE.ACTIVE,
	bombx: 0,
	bomby: 0,
	bombat: 0,
	going: false,
	count: 0,
	
	charge: 12,
	chargemax: 12,
	chargereq: 3,
	deathbombable: false,
	used: false,
	activetype: ACTIVES.BOMB,
	powerdata: 2,
	capacitydata: 4,
	utilitydata: 1,
}, ITEMS.DEMONSEALING);