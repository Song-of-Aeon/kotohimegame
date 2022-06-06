function c_makeboss(archetype, patternorder=[SPELL.NON, SPELL.CARD], difficulty=global.difficulty) {
	var chump = instance_create(global.gw/2, -80, o_boss, "instances");
	chump.vspd = 6;
	chump.seed = new RNG(o_roommanager.roomRNG);
	chump.name = archetype.name;
	chump.spells = variable_struct_get(global.spells[difficulty], chump.name);
	chump.nonspells = variable_struct_get(global.nonspells[difficulty], chump.name);
	log(chump.spells);
	log(chump.nonspells);
	chump.patterns = c_generatedeck(chump.spells, chump.nonspells, patternorder);

	chump.sprite_index = archetype.sprite;
	return chump;
}