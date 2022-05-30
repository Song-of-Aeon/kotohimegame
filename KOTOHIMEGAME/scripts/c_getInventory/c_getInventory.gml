// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function c_getInventory(mechanics=false){
	var theNew = ds_list_create();
	ds_list_copy(theNew, ISAAC.myitems);
	if mechanics {
		return theNew;
	} else {
		global.itempointers = array_create(ds_list_size(theNew));
		for (i = ds_list_size(theNew)-1; i >= 0; i--) {
			global.itempointers[i] = i;
			if (c_getitembyid(ISAAC.myitems[|i]).usage == ITTYPE.MECHANIC) {
				ds_list_delete(theNew, i);
				array_delete(global.itempointers, i, 1);
			}
		}
		return theNew;
	}
}