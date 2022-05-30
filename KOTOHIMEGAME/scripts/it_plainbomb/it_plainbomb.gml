// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
itemgen({
	asactive: function(player=global.me, press, held) {
		if press && charge {
			/*with ISAAC {
				instance_create(x,y,o_bomb1);
				audio_play_sound(snd_bomb,0,false);
			}*/
			charge -= 2;
			used = true;
			going = 40;
		}
		if going {
			going--;
			var lmaod = (abs(going-40)/40);
			var lold = (going/40);
			c_clearrect(
				lerp(-10, ISAAC.x, lold),
				lerp(-10-6, ISAAC.y, lold),
				lerp(WIDTH+10, ISAAC.x, lold),
				lerp(-10+6, ISAAC.y, lold),
			);
			c_clearrect(
				lerp(-10-6, ISAAC.x, lold),
				lerp(-10, ISAAC.y, lold),
				lerp(-10+6, ISAAC.x, lold),
				lerp(HEIGHT+10, ISAAC.y, lold),
			);
			c_clearrect(
				lerp(-10, ISAAC.x, lold),
				lerp(HEIGHT-6, ISAAC.y, lold),
				lerp(WIDTH+10, ISAAC.x, lold),
				lerp(HEIGHT+6, ISAAC.y, lold),
			);
			c_clearrect(
				lerp(WIDTH-6, ISAAC.x, lold),
				lerp(-10, ISAAC.y, lold),
				lerp(WIDTH+6, ISAAC.x, lold),
				lerp(HEIGHT+10, ISAAC.y, lold),
			);
			
			c_clearrect(
				lerp(-10, ISAAC.x, lmaod),
				lerp(-10-6, ISAAC.y, lmaod),
				lerp(WIDTH+10, ISAAC.x, lmaod),
				lerp(-10+6, ISAAC.y, lmaod),
			);
			c_clearrect(
				lerp(-10-6, ISAAC.x, lmaod),
				lerp(-10, ISAAC.y, lmaod),
				lerp(-10+6, ISAAC.x, lmaod),
				lerp(HEIGHT+10, ISAAC.y, lmaod),
			);
			c_clearrect(
				lerp(-10, ISAAC.x, lmaod),
				lerp(HEIGHT-6, ISAAC.y, lmaod),
				lerp(WIDTH+10, ISAAC.x, lmaod),
				lerp(HEIGHT+6, ISAAC.y, lmaod),
			);
			c_clearrect(
				lerp(WIDTH-6, ISAAC.x, lmaod),
				lerp(-10, ISAAC.y, lold),
				lerp(WIDTH+6, ISAAC.x, lmaod),
				lerp(HEIGHT+10, ISAAC.y, lmaod),
			);
		}
	},
	ondraw: function(player=global.me) { //make ondie
		if going {
			var lmaod = (abs(going-40)/40);
			var lold = (going/40);
			draw_rectangle_width(
				lerp(-10, ISAAC.x, lmaod),
				lerp(-10, ISAAC.y, lmaod),
				lerp(WIDTH+10, ISAAC.x, lmaod),
				lerp(HEIGHT+10, ISAAC.y, lmaod),
				lerp(10, 0, lmaod),
			);
			draw_rectangle_width(
				lerp(-10, ISAAC.x, lold),
				lerp(-10, ISAAC.y, lold),
				lerp(WIDTH+10, ISAAC.x, lold),
				lerp(HEIGHT+10, ISAAC.y, lold),
				lerp(10, 0, lmaod),
			);
			/*draw_rectangle(
				lerp(-10, ISAAC.x, lold),
				lerp(-10, ISAAC.y, lold),
				lerp(WIDTH+10, ISAAC.x, lold),
				lerp(WIDTH+10, ISAAC.y, lold),
				false
			);*/
		}
	},
	onroomclear: function(player=global.me) { //make ondie
		charge++;
	},
	//myhooks: {onhit: true}, //make ondie
	name: "Nameless Spellcard",
	description: "Clears the whole screen, but passes through enemies.",
	tooltip: "boom",
	//gains something when used
	//because you cant be nameless forever
	sprite: s_nameless,
	quality: 6,
	charge: 10,
	going: false,
	chargemax: 10,
	usage: ITTYPE.ACTIVE,
	deathbombable: true,
	used: false,
	powerdata: 1,
	capacitydata: 5,
	utilitydata: 1,
	activetype: ACTIVES.BOMB,
}, ITEMS.PLAINBOMB);