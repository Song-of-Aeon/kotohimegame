function c_removeitem(item, amount = 1) {
	STATS.favoriteitem[item]--;
	with(ISAAC){
		repeat(amount) {
			switch c_getitembyid(item).usage {
				case ITTYPE.ACTIVE:
					for (i=0; i<array_length(myactive); i++) {
						if c_getidbyitem(myactive[i]) = item {
							if variable_struct_exists(myactive[i], hooks.ondrop) {
								myactive[i].ondrop();
							}
							myactive[i] = c_getitembyid(ITEMS.NULL);
							break;
						}
					}
					break;
				case ITTYPE.MECHANIC:
				case ITTYPE.PASSIVE:
					var deleting = ds_list_find_index(myitems, item);
					var doing = c_getitembyid(item);
					if variable_struct_exists(doing, "ondrop") {
						//log("dropped");
						doing.ondrop();
					}
					if deleting != -1 {
						ds_list_delete(myitems, deleting);
						//array_delete(itemmemory, deleting, 1);
						c_itemeval();
						c_stateval();
					}
					break;
				case "":
					break;
			}
		}
	}
	regenerateItemUI();
}

function c_removeitempos(inventoryposition, includemechanics=true) {
	with (ISAAC) {
		var placing = !includemechanics ? global.itempointers[inventoryposition] : inventoryposition;
		var doing = c_getitembyid(myitems[|placing]);
		STATS.favoriteitem[c_getidbyitem(doing)]--;
		switch doing.usage {
			case ITTYPE.ACTIVE:
				myactive[inventoryposition] = c_getitembyid(ITEMS.NULL);
				break;
			case ITTYPE.MECHANIC:
			case ITTYPE.PASSIVE:
				if placing < ds_list_size(myitems) {
					if variable_struct_exists(doing, hooks.onpickup) {
						doing.ondrop();
					}
					ds_list_delete(myitems, placing);
					//array_delete(itemmemory, inventoryposition, 1);
					c_itemeval();
					c_stateval();
				}
						
				break;
			case "":
				break;
		}
	}
}

/*switch item.usage {
	case ITTYPE.ACTIVE:
		
		break;
	case ITTYPE.MECHANIC:
	case ITTYPE.PASSIVE:
		
		break;
	case "":
		break;
}*/