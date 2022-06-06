if pulled {
	direction = darctan2((y-ISAAC.y),-(x-ISAAC.x))+60;
	speed = 5;
	hspd = 0;
	vspd = 0;
} else {
	vspd += .04;
	x += hspd;
	y += vspd;
	vspd = min(vspd,2);
	hspd = lerp(hspd, 0, .1);
}
if (y > 400) && !pulled {
	instance_destroy();
}
if place_meeting(x, y, ISAAC) {
	audio_play_sound(snd_getitem,0,false);
	if type = PICKUPS.ITEMTYPE {
		c_additem(item);
	} else {
		c_addpickup(type, amount);
	}
	instance_destroy();
}

switch type {
	
	case PICKUPS.ITEMTYPE:
		sprite_index = c_getitembyid(item).sprite;
		if item = ITEMS.NULL {
			instance_destroy();
		}
		break;
	default:
		sprite_index = c_getpickupbyid(type).sprite;
		image_index = c_getpickupbyid(type).index;
		break;
	
}