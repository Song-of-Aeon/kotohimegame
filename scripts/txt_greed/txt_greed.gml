function txt_greed() {
	setCursor();
	msg = msglang([
	
	txt("Shit, Kotohime, you aren't suited for this.", CHIYURI.ANNOYED, SPRITEPOS.RIGHT, s_path, function() {music_set(mus.null) c_additem(ITEMS.HIDE)}),
	txt("I know you won, but that was basically brute strength.", CHIYURI.ANNOYED),
	txt("It has been quite some time since I've engaged in combat.", KOTOHIME.DISAPPOINTED, SPRITEPOS.LEFT),
	txt("...It has.", CHIYURI.WORRIED),
	txt("I wonder, are you finally going to...", CHIYURI.INTERESTED),
	txt("Ah, whatever. It's just frustrating.", CHIYURI.STERN),
	txt("It is.", KOTOHIME.SMUG),
	txt("I have recently grown to have an appetite for greed.", KOTOHIME.SMUG),
	txt("Fuckin' what?", CHIYURI.ANNOYED),
	txt("..."),
	txt("Oh, like that.", CHIYURI.STERN),
	txt("I still think that this is a bad idea, but I'll let it slide, for that.", CHIYURI.HAPPY),
	txt("Let's go back to your princess friend there.", CHIYURI.GLEEFUL),
	txt("Yes, let's.", KOTOHIME.SMUG),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {textbox_create(txt_drinks)};
}