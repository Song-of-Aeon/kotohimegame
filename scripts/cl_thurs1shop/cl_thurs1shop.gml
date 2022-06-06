var day_ = DAY.THURS;
var stage_ = 0;

myrooms = [
new cell(ROOMTYPE.SHOP, c_null, DIFFICULTY.NULL, 1, POOLS.MICHAEL, function(){log(global.pools)}, c_null, c_null, global.shop.mike),
new cell(ROOMTYPE.SHOP, c_null, DIFFICULTY.NULL, 1, POOLS.MICHAEL, c_null, c_null, c_null, global.shop.reisen),
]
myrooms[0].name = "among us attack"
myrooms[1].name = "ultimate battle"

var i;
for (i=0; i<array_length(myrooms); i++) {
	c_pushroom(day_, stage_, myrooms[i]);
}