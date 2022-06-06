function c_spawnpickup(x, y, type, variation) {
	var item = instance_create(x, y, o_pickup);
	if random(1) > variation {
		item.type = type;
		//log(item.type);
	} else {
		//log(type);
		//log(floor(type/5));
		item.type = seed.next(4)+1+(floor((type-1)/5)*5);
		//log(item.type);
	}
	item.hspd = random(6)-3;
	item.vspd -= random(2);
	return item;
}