//yeah i know i didnt use named arguments whatever
function c_link(x, y, speed, direction, length, precision, type, color=c_white, behavior=c_null, draw=c_null) {
	var chump = instance_create_layer(x, y, layer_get_id("bullets"), o_chain);
	//log(layer_get_id("instances"));
	chump.spd = speed;
	chump.dir = direction;
	chump.length = length;
	chump.precision = precision;
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
	chump.startdata = {
		x: x,
		y: y,
		spd: speed,
		dir: direction,
		length: length,
		precision: precision,
		type: type,
		color: color,
		behavior: behavior
	}
	chump.behaviors = method(undefined, behavior);
	chump.draws = method(undefined, draw);
	return chump;
}


function c_linkabs(x, y, hspd, vspd, length, precision, type, color=c_white, behavior=c_null, draw=c_null) {
	var chump = instance_create_layer(x, y, layer_get_id("bullets"), o_chain);
	//log(layer_get_id("instances"));
	chump.hspd = hspd;
	chump.vspd = vspd;
	chump.length = length;
	chump.precision = precision;
	chump.type = type;
	with chump {
		//log(type);
		sprite_index = type.sprite;
		damage = type.damage;
		destructible = type.destructible;
		friendly = type.friendly;
		alpha = type.alpha;
		if friendly {
			damage *= ISAAC.damage;
		}
	}
	chump.startdata = {
		x: x,
		y: y,
		spd: speed,
		dir: direction,
		length: length,
		precision: precision,
		type: type,
		behavior: behavior
	}
	chump.behaviors = method(undefined, behavior);
	return chump;
}

function c_linkcircle(x, y, speed, origindirection, length, precision, density, bullettype, color, behavior=NUMBER5) {
	var i;
	var bulletcount = 0;
	var bullets = [];
	for (i=0; i<360; i+=360/density) {
		var chump = c_link(x, y, speed, origindirection+i, length, precision, bullettype, color, behavior);
		bullets[bulletcount] = chump;
		bulletcount++;
	}
	return bullets;
}