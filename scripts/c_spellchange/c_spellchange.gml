function c_spellchange(charge=true) {
	c_clearradius(x, y, 900, true, true);
	instance_destroy(o_spelltext);
	patterns[currentpattern].clear();
	currentpattern++;
	created = false;
	delay = 60;
	
	if charge {
		c_dohook(ISAAC.hooks.onroomclear);
	}
}