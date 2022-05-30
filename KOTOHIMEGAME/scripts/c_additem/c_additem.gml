function c_additem(item) {
	audio_play_sound(snd_fairyshoot,0,false);
	amongy = false;
	STATS.itemsacquired++;
	with ISAAC {
		item = clamp(item, 0, ITEMS.SIZE);
		//STATS.itemsacquiredset[item]++;
		//TATS.favoriteitem[item]++;
		switch c_getitembyid(item).usage {
			case ITTYPE.ACTIVE:
				for (i=0; i<array_length(myactive); i++) {
					if myactive[i] = c_getitembyid(ITEMS.NULL) {
						myactive[i] = c_getitembyid(item);
						if variable_struct_exists(myactive[i], "onpickup") {
							myactive[i].onpickup();
						}
						other.amongy = true;
						break;
					}
				}
				break;
			case ITTYPE.MECHANIC: //fix it
			case ITTYPE.PASSIVE:
				var mystuff = c_getInventory(false);
				if ds_list_size(mystuff) < inventorysize {
					ds_list_add(myitems, item);
					//itemmemory[ds_list_size(myitems)+1] = {count:0, val1:0, val2:0};
					var doing = c_getitembyid(item);
					if variable_struct_exists(doing, "onpickup") {
						doing.onpickup();
					}
					other.amongy = true;
				} else {
					other.amongy = true;
				}
				break;
			
			case ITTYPE.NULL:
				other.amongy = false;
				break;
			default:
				other.amongy = false;
				log("item type unrecognized!");
				break;
		}
		c_itemeval();
		c_stateval();
		c_loadoptions();
	}
	regenerateItemUI()
	return amongy;
}


function c_addenemyitem(enemy, item) {
	log("adding enemy item");
	ds_list_add(enemy.inventory, c_getitembyid(item));
	return true;
}