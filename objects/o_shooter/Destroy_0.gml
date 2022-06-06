//log(hp);

var guy = new Particle(x, y, function() {
	//log(self);
	draw_set_color(c_cyan);
	draw_set_alpha(.8);
	draw_circle(x, y, size, false);
	size -= .5;
	//alpha -= .1;
	if !size {
		die();
	}
});
guy.size = 10;

var dude = scriptable_create(function() {if image_index == 16 instance_destroy()}, draw_self)
dude.sprite_index = s_boom;
dude.x = x;
dude.y = y;

STATS.fairieskilled++;