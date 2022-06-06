//yeah i know i didnt use named arguments whatever
function c_shootlaser(x, y, speed, direction, width, length, type, color=c_black, behavior=NUMBER5, draw=c_laserdraw) {
	var chump = instance_create_layer(x, y, layer_get_id("bullets"), o_laser);
	//log(layer_get_id("instances"));
	chump.spd = speed;
	chump.dir = direction;
	
	chump.width = width;
	chump.length = length*2;
	chump.type = type;
	chump.color = color;
	with chump {
		sprite_index = type.sprite;
		//image_blend = type.colour;
		damage = type.damage;
		destructible = type.destructible;
		friendly = type.friendly;
		alpha = type.alpha;
		endtime = length;
		if type.colorable {
			colorcover = asset_get_index(string(sprite_get_name(sprite_index)) + "cc");
		} else {
			colorcover = s_null;
		}
		if friendly {
			damage *= ISAAC.damage;
		}
		image_alpha = alpha;
		image_xscale = (width)/sprite_get_width(sprite_index);
		image_yscale = (length-endtime/2)/sprite_get_height(sprite_index);
	}
	if behavior = c_null && draw = c_laserdraw {
		chump.simple = true;
	} else {
		chump.behaviors = method(undefined, behavior);
		chump.draws = method(undefined, draw);
	}
	chump.directioning = true;
	return chump;
}

function c_shootlaserabs(x, y, hspd, vspd, width, length, type, color=c_black, behavior=NUMBER5, draw=c_laserdraw) {
	var chump = instance_create_layer(x, y, layer_get_id("bullets"), o_laser);
	//log(layer_get_id("instances"));
	chump.hspd = speed;
	chump.vspd = direction;
	
	chump.width = width;
	chump.length = length*2;
	chump.type = type;
	chump.color = color;
	with chump {
		sprite_index = type.sprite;
		//image_blend = type.colour;
		damage = type.damage;
		destructible = type.destructible;
		friendly = type.friendly;
		alpha = type.alpha;
		endtime = length;
		if type.colorable {
			colorcover = asset_get_index(string(sprite_get_name(sprite_index)) + "cc");
		} else {
			colorcover = s_null;
		}
		if friendly {
			damage *= ISAAC.damage;
		}
		image_alpha = alpha;
		image_xscale = (width)/sprite_get_width(sprite_index);
		image_yscale = (length-endtime/2)/sprite_get_height(sprite_index);
	}
	
	if behavior = c_null && draw = c_laserdraw {
		chump.simple = true;
	} else {
		chump.behaviors = method(undefined, behavior);
		chump.draws = method(undefined, draw);
	}
	return chump;
}

#macro c_phosphorescence c_shootlaser
#macro c_beam c_shootlaser