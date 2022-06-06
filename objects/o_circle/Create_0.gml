step = c_null;
create = c_null;
maxdelay = 0;
draw = function() {
	gpu_set_blendmode(bm_add);
	if maxdelay <= 40 {
		draw_set_color(c_cyan);
		draw_circle(x+sin((delay+20)/20)*delay, y+cos((delay+20)/20)*delay, 3, false);
		draw_circle(x+sin((delay+40)/20)*delay, y+cos((delay+40)/20)*delay, 3, false);
		draw_circle(x+sin((delay+60)/20)*delay, y+cos((delay+60)/20)*delay, 3, false);
		draw_circle(x+sin((delay+80)/20)*delay, y+cos((delay+80)/20)*delay, 3, false);
		draw_circle(x+sin((delay+100)/20)*delay, y+cos((delay+100)/20)*delay, 3, false);
		draw_circle(x+sin((delay+120)/20)*delay, y+cos((delay+120)/20)*delay, 3, false);
	} else if maxdelay <= 80 || true {
		draw_circle(x+sin(delay/20)*delay, y+cos(delay/20)*delay, 3, false);
		draw_circle(x-sin(delay/20)*delay, y+cos(delay/20)*delay, 3, false);
		draw_circle(x+sin(delay/20)*delay, y-cos(delay/20)*delay, 3, false);
		draw_circle(x-sin(delay/20)*delay, y-cos(delay/20)*delay, 3, false);
		draw_circle(x+cos(delay/20)*delay, y+sin(delay/20)*delay, 3, false);
		draw_circle(x-cos(delay/20)*delay, y+sin(delay/20)*delay, 3, false);
		draw_circle(x+cos(delay/20)*delay, y-sin(delay/20)*delay, 3, false);
		draw_circle(x-cos(delay/20)*delay, y-sin(delay/20)*delay, 3, false);
		
		
		
	}
	gpu_set_blendmode(bm_normal);
};
delay = 0;
created = false;

bullets = global.bullets;
lasers = global.lasers;
hitscans = global.hitscans;
chains = global.chains;
count = 0;
iterations = 0;