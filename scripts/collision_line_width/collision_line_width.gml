function collision_line_width(x1, y1, x2, y2, precision, width, target) {
	///collizion_line(x1, y1, z1, x2, y2, z2, precision, width, object);

	var hit = [0];
	var xdist = x2-x1;
	var ydist = y2-y1;
	//var xydist = pythag(xdist, ydist, 0);
	//var zdist = z2-z1;
	var i;
	var j=0;
	width /= 2;
	

	for (i=0; i<=precision; i++) {
		if (x1+(xdist*(i/precision)) >= room_width || x1+(xdist*(i/precision)) <= 0) && (y1+(ydist*(i/precision)) >= room_height || y1+(ydist*(i/precision)) <= 0) return hit;
	    hit[i] = collision_circle(
	        x1+(xdist*(i/precision)),
	        y1+(ydist*(i/precision)),
	        width,
	        target,
	        false,
	        false
	    );
	    /*if hit[i] != noone {
			j++;
			hit[i] = 0;
	    }*/
	}

	return hit;
}
//LASER

function draw_collision_line_width(x1, y1, x2, y2, precision, width, target) {
	///collizion_line(x1, y1, z1, x2, y2, z2, precision, width, object);

	var hit = [0];
	var xdist = x2-x1;
	var ydist = y2-y1;
	width /= 2;
	//var xydist = pythag(xdist, ydist, 0);
	//var zdist = z2-z1;
	var i;
	var j;
	
	

	for (i=0; i<=precision; i++) {
		if (x1+(xdist*(i/precision)) >= room_width || x1+(xdist*(i/precision)) <= 0) && (y1+(ydist*(i/precision)) >= room_height || y1+(ydist*(i/precision)) <= 0) exit;
	    draw_circle(
	        x1+(xdist*(i/precision)),
	        y1+(ydist*(i/precision)),
	        width,
	        false
	    );
	}
}
//LASER