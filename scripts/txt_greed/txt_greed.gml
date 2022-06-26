function txt_greed() {
	
	msg = msglang([
	
	txt("Shit, Kotohime, you aren't suited for this."),
	txt("I know you won, but that was basically brute strength."),
	txt("It has been quite some time since I've engaged in combat.", KOTOHIME.DISAPPOINTED, SPRITEPOS.LEFT),
	txt("...It has."),
	txt("I wonder, are you finally going to..."),
	txt("Ah, whatever. It's just frustrating."),
	txt("It is.", KOTOHIME.SMUG),
	txt("I have recently grown to have an appetite for greed.", KOTOHIME.SMUG),
	txt("Fuckin' what?"),
	txt("..."),
	txt("Oh, like that."),
	txt("I still think that this is a bad idea, but I'll let it slide, for that."),
	txt("Let's go back to your princess friend there."),
	txt("Yes, let's.", KOTOHIME.SMUG),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {textbox_create(txt_drinks)};
}