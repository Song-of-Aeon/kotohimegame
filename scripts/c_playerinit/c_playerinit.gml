function c_playerinit() {
	defaultstats = global.chara[?global.character].defaultstats;
	var i;
	for (i=0; i<array_length(global.chara[?global.character].startingitems); i++) {
		c_additem(global.chara[?global.character].startingitems[i]);
	}
	sprite_index = global.chara[?global.character].sprite;
	c_stateval();
	c_statthreshold(PICKUPS.OPTIONS);
	regenerateItemUI();
}