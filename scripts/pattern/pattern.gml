function pattern(step_=function(){}, create_=function(){}, draw_=function(){}) constructor {
	create = munction(create_);
	step = munction(step_);
	draw = munction(draw_);
	count = 0;
	iterations = 0;
}