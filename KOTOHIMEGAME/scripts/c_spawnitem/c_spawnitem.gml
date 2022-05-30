function c_spawnitem(x, y, pool, decrement) {
	var item = instance_create(x, y, o_pickup);
	item.type = PICKUPS.ITEMTYPE;
	item.item = c_generateitem(pool, decrement);
	return item;
}
function c_spawnspecialitem(x, y, item) {
	var dude = instance_create(x, y, o_pickup);
	dude.type = PICKUPS.ITEMTYPE;
	dude.item = item;
	return dude;
}