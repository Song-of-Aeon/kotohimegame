function c_shootdesign(x, y, speed, direction, design, interval, type, color=c_white, behavior=c_null, draw=c_bulletdraw) {
	var i, j;
	for (i=0; i<array_length(design); i++) {
		for (j=0; j<array_length(design[i]); j++) {
			if design[i][j] {
				c_shoot(x+j*interval, y+i*interval, speed, direction, type, color, behavior, draw)
			}
		}
	}
}