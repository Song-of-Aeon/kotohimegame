nu bullet("maidenpit", s_null, 0, false, true, false, 1);
function c_maidenpit(size) {
	bullets = c_shoot(ISAAC.x, ISAAC.y, 0, 0, global.bullets.maidenpit, c_white, function() {
		size--;
		if size <= 0 instance_destroy();
	}, function() {
		draw_set_color(c_black);
		draw_circle(x, y, size, false);
		draw_set_color(c_white);
		draw_circle(x, y, size, true);
	})
	bullets.size = size;
}

