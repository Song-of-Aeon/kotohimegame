function c_generateitem(pool, decrement=1) {
	repeat(9999) { //kinda sucks doin it fast
		var picking = o_roommanager.roomRNG.next(array_length(pool.items)-1);
		//var picking = irandom(array_length(pool.items)-1);
		if o_roommanager.roomRNG.next(1000)/1000 > pool.decremented[picking] {
		//if !pool.decremented[picking] {
			var item = pool.items[picking];
			pool.decremented[picking] += decrement;
			break;
		}
		var item = ITEMS.BREAKFAST;
	}
	return item;
}