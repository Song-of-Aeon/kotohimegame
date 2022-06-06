function c_makeshooter(x, y, hp, archetype=global.enemies.fairy, pattern_=new pattern(), drops_=12) {
	var fairly = instance_create(x, y, o_shooter, "instances");
	fairly.hp = hp;
	fairly.sprite_index = archetype.sprite;
	fairly.patterns[0] = pattern_;
	fairly.draw = archetype.draw;
	fairly.drops = drops_;
	fairly.seed = new RNG(o_roommanager.roomRNG);
	o_roommanager.roomRNG.next();
	return fairly;
}

function shootman(name_, sprite_, draw_=function(){draw_self();}) constructor {
	sprite = sprite_;
	draw = munction(draw_);
	variable_struct_set(global.enemies, name_, self);
}

