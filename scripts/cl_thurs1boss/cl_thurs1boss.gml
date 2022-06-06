var day_ = DAY.THURS;
var stage_ = 0;

myrooms = [
	new cell(ROOMTYPE.BOSS, c_null, DIFFICULTY.NULL, 1, POOLS.MICHAEL, function() {
		//log("CRY");
		c_makeboss(global.bosses.aunn, [SPELL.NON, SPELL.CARD, SPELL.NON, SPELL.CARD]);
		switch global.character {
			case "reimu":
				textbox_create(txt_reimuyaunn, global.textdefault);
				break;
			case "chiyuri":
				textbox_create(txt_chiyuriyaunn, global.textdefault);
				break;
		}
		//log("DIE");
	}, u, function() { 
		switch global.character {
			case "reimu":
				textbox_create(txt_reimuyaunnafter, global.textdefault);
				break;
			case "chiyuri":
				textbox_create(txt_chiyuriyaunnafter, global.textdefault);
				break;
		}
		//log("IM REAL SAVE ME LISTEN TO ME MY EARS ARE BLEEDING MY THROAT IS HOARSE THERE IS NOTHING I CAN DO BUT PERSIST");
	}),
]

var i;
for (i=0; i<array_length(myrooms); i++) {
	c_pushroom(day_, stage_, myrooms[i]);
}

//global.spells[DIFFICULTY].aunn
//global.nonspells[DIFFICULTY].aunn

