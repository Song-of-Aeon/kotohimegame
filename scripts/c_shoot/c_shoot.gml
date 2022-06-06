function c_shoot(x, y, speed, direction, type, color=c_black, behavior=c_null, draw_=c_bulletdraw) {
	var chump = instance_create_layer(x, y, layer_get_id("bullets"), o_bullet);
	//log(layer_get_id("instances"));
	chump.spd = speed;
	chump.dir = direction;
	chump.type = type;
	chump.color = color;
	
	with chump {
		//log(type);
		sprite_index = type.sprite;
		friendly = type.friendly;
		//image_blend = type.colour;
		damage = type.damage;
		destructible = type.destructible;
		alpha = type.alpha;
		if type.colorable {
			colorcover = asset_get_index(string(sprite_get_name(sprite_index)) + "cc");
		} else {
			colorcover = s_null;
		}
		if friendly {
			damage *= ISAAC.damage;
		}
	}
	if behavior = c_null && draw_ = c_bulletdraw {
		chump.simple = true;
	} else {
		chump.behaviors = method(undefined, behavior);
		chump.draws = method(undefined, draw_);
	}
	chump.directioning = true;
	return chump;
}

function c_shootabs(x, y, hspd, vspd, type, color=c_black, behavior=c_null, draw_=c_bulletdraw) {
	var chump = instance_create_layer(x, y, layer_get_id("bullets"), o_bullet);
	//log(layer_get_id("instances"));
	chump.hspd = hspd;
	chump.vspd = vspd;
	chump.type = type;
	chump.color = color;
	with chump {
		//log(type);
		sprite_index = type.sprite;
		damage = type.damage;
		destructible = type.destructible;
		friendly = type.friendly;
		alpha = type.alpha;
		if type.colorable {
			colorcover = asset_get_index(string(sprite_get_name(sprite_index)) + "cc");
		} else {
			colorcover = s_null;
		}
		if friendly {
			damage *= ISAAC.damage;
		}
	}
	
	if behavior = c_null && draw_ = c_null {
		chump.simple = true;
	} else {
		chump.behaviors = method(undefined, behavior);
		chump.draws = method(undefined, draw_);
	}
	return chump;
}
function c_shootcircle(x, y, speed, origindirection, density, bullettype, color=c_black, behavior=NUMBER5, draw=c_bulletdraw) {
	var i;
	var bulletcount = 0;
	var bullets = [];
	for (i=0; i<360; i+=360/density) {
		var chump = c_shoot(x, y, speed, origindirection+i, bullettype, color, behavior, draw);
		chump.directioning = true;
		bullets[bulletcount] = chump;
		bulletcount++;
	}
	return bullets;
}
function c_shootfan(x, y, speed, startdirection, enddirection, amount, offsetamount, bullettype, color=c_black, behavior=NUMBER5, draw=c_bulletdraw) {
	var i;
	var bulletcount = 0;
	var bullets = [];
	//offsetamount = speed;
	//var maxbulletcount = abs(startdirection-enddirection);
	var iterations = 0;
	for (i=0; i<amount; i++) {
		var theDir = lerp(startdirection,enddirection,i/amount);
		var fartin = (i/amount)*offsetamount;
		
		var chump = c_shoot(x-dcos(theDir)*fartin, y+dsin(theDir)*fartin, speed, theDir, bullettype, color, behavior, draw);
		chump.directioning = true;
		
		bullets[bulletcount] = chump;
		bulletcount++;
		iterations++;
	}
	return bullets;
}