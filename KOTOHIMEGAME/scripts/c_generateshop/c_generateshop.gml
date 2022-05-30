function c_generateshop(hq=1, mq=2, lq=1) {
	log("generating shop");
	instance_activate_object(o_shopmanager)
	instance_destroy(o_shopmanager);
	var shop = instance_create(0, 0, o_shopmanager);
	//shop.inventory = array_create(irandom(3)+2);
	shop.inventory = array_create(hq+mq+lq+1);
	shop.pool = rooms[currentroom][currentx].pool;
	var hqcount = 0;
	var mqcount = 0;
	var lqcount = 0;
	var i = 0;
	var superbreak = 0;
	/*while hqcount <= hq || mqcount < mq || lqcount < lq { //lol
		for(i=0; i<array_length(shop.inventory); i++) {
			shop.inventory[i] = new shopitem(c_generateitem(shop.pool, 1));
			if shop.inventory[i].price <= 3 {
				lqcount++;
				shop.inventory[i].position = SHOPPOSITION.TABLE;
			}
			if shop.inventory[i].price > 3 && shop.inventory[i].price < 7 {
				mqcount++;
				shop.inventory[i].position = SHOPPOSITION.BIGSHELF;
			}
			if shop.inventory[i].price >= 7 {
				hqcount++;
				shop.inventory[i].position = SHOPPOSITION.TINYSHELF;
			}
		}
		superbreak++;
		if superbreak >= 100 {
			break;
		}
	}*/
	shop.inventory = [];
	shop.inventory[i] = new shopitem(c_generateitem(shop.pool, 1));
	shop.inventory[i++].position = SHOPPOSITION.TABLE;
	shop.inventory[i] = new shopitem(c_generateitem(shop.pool, 1));
	shop.inventory[i++].position = SHOPPOSITION.TABLE;
	shop.inventory[i] = new shopitem(c_generateitem(shop.pool, 1));
	shop.inventory[i++].position = SHOPPOSITION.BIGSHELF;
	shop.inventory[i] = new shopitem(c_generateitem(shop.pool, 1));
	shop.inventory[i++].position = SHOPPOSITION.TINYSHELF;
	
	c_dohook(ISAAC.hooks.onshopgen, shop.inventory);
	with instance_create(310-40, global.gh/2, o_shopkeep) {
		sprite_index = c_getroom().shopkeep.sprite;
	}
	var fary = c_makeshooter(60, global.gh/2, 9999999, global.enemies.fairy);
	with fary patterns[0] = new pattern_ext(munction(function() {if o_roommanager.go instance_destroy()}));
	instance_deactivate_object(o_shopmanager);
	log("shop is:");
	log(shop);
	log("generated shop");
	return shop;
}

function shopitem(item_) constructor {
	item = item_;
	price = c_getitembyid(item_).quality;
	position = SHOPPOSITION.NULL;
}

function c_recycleitem() {
	
}

enum SHOPPOSITION {
	NULL,
	TABLE,
	BIGSHELF,
	TINYSHELF,
	SOLDZONE,
	SIZE
}