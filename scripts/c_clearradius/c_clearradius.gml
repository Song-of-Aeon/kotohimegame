
function c_clearradius(x, y, radius, strong=false, includemine=false) {
	///c_clearradius(x, y, radius);
	var cleared = false;
	instance_create(x, y, o_boom);
	for (i=0; i<array_length(global.bullettypes); i++) {
		with global.bullettypes[i] {
			if distance_to_point(o_boom.x, o_boom.y) <= radius && !friendly && (includemine ? !friendly : true) && (!strong ? destructible : true) {
			    instance_destroy();
				cleared = true;
			}
		}
	}
	instance_destroy(o_boom);
	return cleared;
}

function c_clearrect(x_, y_, x2, y2, strong=false, includemine=false) {
	//do you think i care
	var cleared = false;
	global.xmedian = (x_+x2)/2;
	global.ymedian = (y_+y2)/2
	global.xradius = abs(x_-x2);
	global.yradius = abs(y_-y2);
	
	var i;
	for (i=0; i<array_length(global.bullettypes); i++) {
		with global.bullettypes[i] {
		    if abs(x-global.xmedian) < global.xradius && abs(y-global.ymedian) < global.yradius && !friendly && (includemine ? !friendly : true) && (strong ? destructible : true) {
		        instance_destroy();
				cleared = true;
		    }
		}
	}
	instance_destroy(o_boom);
	return cleared;
}

global.bullettypes = [o_bullet, o_laser, o_hitscan, o_chain];