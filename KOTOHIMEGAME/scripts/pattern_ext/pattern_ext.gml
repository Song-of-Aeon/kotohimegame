function pattern_ext(step_=c_null, hp_=15, time_=60, character_="touhou", type_=SPELL.NON, difficulty_=global.difficulty, name_="", create_=c_null, draw_=c_null, clear_=c_null) constructor {
	create = create_;
	step = step_;
	draw = draw_; //unimplemented
	hp = hp_;
	time = time_;
	name = name_;
	type = type_;
	difficulty = difficulty_;
	clear = clear_;
	count = 0;
	iterations = 0;
	c_pushpattern(self, character_, difficulty_, type_);
	//global.patternname[?name_] = 
}