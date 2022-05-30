function option_create(sprite, shot, steps, index, indexmax) {
	var chump = instance_create(ISAAC.x, ISAAC.y, o_option);
	chump.index = index;
	chump.indexmax = indexmax;
	chump.sprite = sprite;
	chump.shot = munction(shot);
	chump.steps = [];
	var i;
	for(i=0; i<array_length(steps); i++) {
		array_push(chump.steps, munction(steps[i]));
	}
	return chump;
}