//gen u items

itemgen({
	onhuddraw: function(player=global.me) {
		c_input();
		if gameplay {
			draw_sprite(s_kleft, left, xdraw-30, ydraw);
			draw_sprite(s_kdown, down, xdraw, ydraw);
			draw_sprite(s_kup, up, xdraw, ydraw-30);
			draw_sprite(s_kright, right, xdraw+30, ydraw);
			
			draw_sprite(s_kshoot, shooth, xdraw-30, ydraw+30);
			draw_sprite(s_kbomb, bombh, xdraw, ydraw+30);
			draw_sprite(s_kspecial, specialh, xdraw+30, ydraw+30);
			draw_sprite(s_kshift, shift, xdraw-36, ydraw-30);
		}
		if menu {
			draw_sprite(s_kselect, selecth==true, xdraw, ydraw);
			draw_sprite(s_kback, backh==true, xdraw, ydraw);
			draw_sprite(s_kesc, esch, xdraw, ydraw);
			draw_sprite(s_kcontrol, ctrlh, xdraw, ydraw);
			draw_sprite(s_kmap, maph, xdraw, ydraw);
		}
	},
	name: "input display",
	description: "for replays, probably",
	tooltip: "what a tryhard",
	sprite: s_mistake,
	quality: 1,
	usage: ITTYPE.MECHANIC,
	xdraw: 555,
	ydraw: 305,
	
	charge: 0,
	gameplay: true,
	menu: false,
	chargemax: 0,
	chargereq: 0,
	deathbombable: false,
	used: false,
	activetype: ACTIVES.NULL
}, ITEMS._INPUTDISPLAY);