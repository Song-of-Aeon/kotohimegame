function txt_encounter() {
	
	msg = msglang([
	
	txt("|a|w0020 ", KOTOHIME.HAPPY, SPRITEPOS.LEFT, u, u, [se_encounter]),
	txt("|w0020 ", KOTOHIME.NOTHING),
	txt("|a|w0020 ", KOTOHIME.HAPPY, u, u, u, [se_encounter]),
	txt("|w0020 ", KOTOHIME.NOTHING),
	txt("|a|w0020 ", KOTOHIME.HAPPY, u, u, u, [se_encounter]),
	txt("|w0020 ", KOTOHIME.NOTHING),
	txt("|a|w0020 ", KOTOHIME.NOTHING, u, u, u, [se_batstart]),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {c_additem(ITEMS.UNDERTALE)};
}