function c_clearenemies() {
	var enemylist = [o_circle, o_shooter, o_boss];
	var i;
	for (i=0; i<array_length(enemylist); i++) {
		instance_destroy(enemylist[i]);
	}
}