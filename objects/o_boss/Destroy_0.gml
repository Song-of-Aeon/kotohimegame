
guy = new Particle(x, y, function() {
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
c_clearradius(x, y, 500, true);
//repeat(10) {
c_spawnitem(x, y, o_roommanager.rooms[o_roommanager.currentroom][o_roommanager.currentx].pool,true);
STATS.bosskd[0]++;
STATS.bosswins[0]++;