var turn = random(10);
repeat(36) {
	c_shoot(x, y, 6, turn, bul.mycircle, c_white, function() {
		spd /= 1.1;
		if spd <= .4 image_alpha -= .1;
		if image_alpha <= .2 instance_destroy();
	});
	turn += 10;
	c_screenshake(4, 4);
}