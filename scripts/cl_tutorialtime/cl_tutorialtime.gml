var day_ = DAY.SUN;
var stage_ = 0;
myrooms = [
	new cell(ROOMTYPE.TIME,//drop in and do some rain
		function() {
			cpp();
			if ncml(8, 60, 12) {
				var fary = c_makeshooter(170+185*itneg(), 200, 5, enemies.fairy);
				fary.hgrav = .04*itneg();
				fary.vspd = -1
				fary.hspd = -4*itneg();
			}
			if ncm(ncmltime(8, 60, 12)) {
				iterations++;
				count = 0;
			}
			if iterations >= 5 {
				c_endpattern();
			}
		},
		DIFFICULTY.EMPTY, 1, POOLS.RAIN, c_null, c_null, function() {
			switch global.character {
				case "reimu":
					textbox_create(txt_reimututorial1point5, global.textdefault);
					break;
				case "chiyuri":
					textbox_create(txt_tutorial1point5, global.textdefault);
					break;
			}
		}),
	new cell(ROOMTYPE.TIME,
		function() {
			cpp();
			if ncml(8, 60, 12) {
				var fary = c_makeshooter(170+185*itneg(), 200, 5, enemies.fairy);
				fary.hgrav = .04*itneg();
				fary.vspd = -1
				fary.hspd = -4*itneg();
			}
			if ncm(ncmltime(8, 60, 12)) {
				iterations++;
				count = 0;
			}
			if iterations >= 5 {
				c_endpattern();
			}
		},
		DIFFICULTY.EMPTY, 1, POOLS.RAIN, function() {
			switch global.character {
				case "reimu":
					textbox_create(txt_reimututorial2, global.textdefault);
					break;
				case "chiyuri":
					textbox_create(txt_tutorial2, global.textdefault);
					break;
			}
		}),
	new cell(ROOMTYPE.TIME,
		function() {
			cpp();
			if ncml(8, 60, 12) {
				var fary = c_makeshooter(170+185*itneg(), 200, 5, enemies.fairy);
				fary.hgrav = .04*itneg();
				fary.vspd = -1
				fary.hspd = -4*itneg();
			}
			if ncm(ncmltime(8, 60, 12)) {
				iterations++;
				count = 0;
			}
			if iterations >= 5 {
				c_endpattern();
			}
		},
		DIFFICULTY.EMPTY, 1, POOLS.RAIN, function() {
			switch global.character {
				case "reimu":
					textbox_create(txt_reimututorial3, global.textdefault);
					break;
				case "chiyuri":
					textbox_create(txt_tutorial3, global.textdefault);
					break;
			}
		}, c_null, function() {
			switch global.character {
				case "reimu":
					textbox_create(txt_reimututorial4, global.textdefault);
					break;
				case "chiyuri":
					textbox_create(txt_tutorial4, global.textdefault);
					break;
			}
		}),
]

var i;
for (i=0; i<array_length(myrooms); i++) {
	c_pushroom(day_, stage_, myrooms[i]);
}