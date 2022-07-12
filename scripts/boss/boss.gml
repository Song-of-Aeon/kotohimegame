function boss(name_, sprite_, draw_=function(){draw_self()}) constructor {
	name = name_;
	sprite = sprite_;
	draw = munction(draw_);
	variable_struct_set(global.bosses, name_, self);
	var i;
	for (i=DIFFICULTY.EMPTY; i<DIFFICULTY.ABSURD; i++) {
		variable_struct_set(global.spells[i], name_, []);
		variable_struct_set(global.nonspells[i], name_, []);
	}
}