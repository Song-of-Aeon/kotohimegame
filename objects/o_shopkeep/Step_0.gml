if disable {
	instance_destroy(o_shopmanager);
	instance_destroy();
	
	instance_destroy(o_textbox);
	y += leaving/10;
	if y >= global.gh+400 {
		instance_destroy(o_shopmanager);
		instance_destroy();
	}
	if dude {
		instance_destroy(dude);
	}
	leaving++;
	exit;
}

if !shopping {
	if ncm(500) {
		if !instance_exists(o_textbox) {
			dude = textbox_create(global.currentroom.shopkeep.banter[irandom(array_length(global.currentroom.shopkeep.banter)-1)], global.textcalling, false);
		} else if dude {
			instance_destroy(dude);
		}
	}
	count++;

	var guy = collision_circle(x, y, 100, ISAAC, false, false);
	if guy != noone {
		shopping = true;
		instance_activate_object(o_shopmanager);
		global.MenuCursor.disabled = false;
		regenerateItemUI();
		generateShopUI();
		textbox_create(global.currentroom.shopkeep.hitext, global.textshop, false);
		ISAAC.state = c_null;
	}
}
var guy = collision_circle(x, y, 120, ISAAC, false, false);
if guy = noone {
	shopping = false;
}