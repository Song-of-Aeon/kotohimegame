// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
nu consoleCommand("cap", "no cap fr on god", function(args) {
	with ISAAC {
		c_addpickup(PICKUPS.SHOTPOWER, 999);
		c_addpickup(PICKUPS.OPTIONS, 999);
		c_addpickup(PICKUPS.AGILITY, 999);
		c_addpickup(PICKUPS.POC, 999);
		c_addpickup(PICKUPS.RADIUS, 999);
	}
	return "bottoms up";
});