draw_set_color(c_blue);
gpu_set_blendmode(bm_add)
//draw_circle_curve(x, y, 120, 60, 0, 360, max(5-leaving/5, 0), true);
var i;
for (i=0; i<10; i++) {
	draw_set_alpha(1-i/10);
	draw_circle(x, y, 120+i, true);
}

gpu_set_blendmode(bm_normal);
draw_self();