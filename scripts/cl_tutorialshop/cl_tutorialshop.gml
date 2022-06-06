var day_ = DAY.SUN;
var stage_ = 0;
myrooms = [
	new cell(ROOMTYPE.SHOP, c_null, DIFFICULTY.EMPTY, 1, POOLS.MICHAEL, function() {
		switch global.character {
				case "reimu":
					textbox_create(txt_reimututorial5, global.textdefault);
					break;
				case "chiyuri":
					textbox_create(txt_tutorial5, global.textdefault);
					break;
			}
	}, c_null, c_null, global.shop.mike),
]

var i;
for (i=0; i<array_length(myrooms); i++) {
	c_pushroom(day_, stage_, myrooms[i]);
}
