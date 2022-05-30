var day_ = DAY.THURS;
var stage_ = 0;
myrooms = [
new cell(ROOMTYPE.GENERAL, c_null, DIFFICULTY.NULL, 1, POOLS.RAIN,
	function() {
		log("STAGE ONE WORKS");
		switch global.character {
			case "reimu":
				textbox_create(txt_reimuprologue, global.textdefault);
				break;
			case "chiyuri":
				textbox_create(txt_chiyuriprologue, global.textdefault);
				break;
		}
	}
),
]

var i;
for (i=0; i<array_length(myrooms); i++) {
	c_pushroom(day_, stage_, myrooms[i]);
}