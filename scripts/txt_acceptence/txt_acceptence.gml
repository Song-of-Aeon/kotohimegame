function txt_acceptence() {
	
	msg = msglang([
	
	txt("You must really have a good thing going with her, if you're going to actually pay your debts.", u, u, s_path, function() {music_set(mus.null) c_additem(ITEMS.HIDE)}),
	txt("You know, you've never even acknowledged them."),
	txt("Always pulling some bullshit about \"princessness\" or whatever."),
	txt("Are you finally getting your act together?"),
	txt("...A princess such as myself will ever-approach perfection, with ever-growing-", KOTOHIME.SMUG, SPRITEPOS.LEFT),
	txt("Back to that, huh?"),
	txt("I can take a hint. We can talk later."),
	txt("If you insist.", KOTOHIME.WINK),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {textbox_create(txt_drinks)};
}