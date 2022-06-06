var day_ = DAY.THURS;
var day_ = DAY.THURS;
var stage_ = 0;

myrooms = [
new cell(ROOMTYPE.BLACK, c_null, DIFFICULTY.NULL, 1, POOLS.MICHAEL, c_null, c_null, c_null, global.shop.mike),
new cell(ROOMTYPE.BLACK, c_null, DIFFICULTY.NULL, 1, POOLS.MICHAEL, c_null, c_null, c_null, global.shop.reisen),
]

var i;
for (i=0; i<array_length(myrooms); i++) {
	c_pushroom(day_, stage_, myrooms[i]);
}