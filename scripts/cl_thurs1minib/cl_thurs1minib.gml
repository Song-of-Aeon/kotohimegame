var day_ = DAY.THURS;
var stage_ = 0;
myrooms = [
	new cell(ROOMTYPE.MINIBOSS, c_null, DIFFICULTY.NULL, 1, POOLS.MICHAEL, function() {
		c_makeboss(global.bosses.aunn, [SPELL.NON, SPELL.CARD]);
		switch global.character {
			case "reimu":
				textbox_create(txt_reimuyaunnmini, global.textdefault);
				break;
			case "chiyuri":
				textbox_create(txt_chiyuriyaunnmini, global.textdefault);
				break;
		}
	}),
]

var i;
for (i=0; i<array_length(myrooms); i++) {
	c_pushroom(day_, stage_, myrooms[i]);
}

//global.spells[DIFFICULTY].aunn
//global.nonspells[DIFFICULTY].aunn

