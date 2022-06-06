function c_ignoremechanics(itemlist) {
	var mylist = itemlist;
	var i;
	for (i=0; i<ds_list_size(mylist); i++) {
		while (c_getitembyid(mylist[|i]).usage != ITTYPE.MECHANIC) {
			ds_list_delete(mylist, i);
		}
	}
	return mylist;
}