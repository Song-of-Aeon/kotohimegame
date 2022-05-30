var day_ = DAY.SUN;
var stage_ = 0;
myrooms = [
	new cell(ROOMTYPE.GENERAL, c_null, DIFFICULTY.EMPTY, 1, POOLS.RAIN,
		function() {
			switch global.character {
				case "reimu":
					textbox_create(txt_reimututorial, global.textdefault);
					break;
				case "chiyuri":
					textbox_create(txt_tutorial, global.textdefault);
					break;
			}
		}
	)
]
var i;
for (i=0; i<array_length(myrooms); i++) {
	c_pushroom(day_, stage_, myrooms[i]);
}