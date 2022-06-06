function c_ircle(x, y, delay, step=c_null, create=c_null, draw=c_null) {
	var chump = instance_create(x, y, o_circle);
	chump.delay = delay;
	chump.step = munction(step);
	chump.create = munction(create);
	if draw != c_null chump.draw = draw;
	return chump;
}

#macro c_circle c_ircle
#macro c_makecircle c_ircle
#macro c_makeBulletEmitter c_ircle