function txt_standards() {
	
	msg = msglang([
	
	txt("...I..."),
	txt("I don't quite know what to say."),
	txt("How deeply candid..."),
	txt("Kotohime, why go this far?"),
	txt("What is your investment in this mission?"),
	txt("...Nothing in particular. It is just a shame to see a fellow princess lose the opportunities availed to her.", KOTOHIME.SMUG),
	txt("How selfless."),
	txt("You know, Kotohime, one such as yourself ought to be more careful."),
	txt("If you keep this up, the one I fall for might be you...~"),
	txt("Oh.", KOTOHIME.DISAPPOINTED),
	txt("...I really hate to say this, Kaguya, but I'm sorry.", KOTOHIME.THINKING),
	txt("I couldn't accept that.", KOTOHIME.DISAPPOINTED),
	txt("W-why not...?"),
	txt("Please don't take this personally. My standards... they are unreasonably high.", KOTOHIME.THINKING),
	txt("Even the great Kaguya... I cannot become interested in.", KOTOHIME.THINKING),
	txt("In truth, |c160160160I've never |c255255255met someone |c128000128worthy enough|c to stand beside me in such a way.", KOTOHIME.SMUG),
	txt("O-oh."),
	txt("I'm sorry.", KOTOHIME.DISAPPOINTED),
	txt("I was just joking, you know."),
	txt("Oh, is that so? You look a little red...", KOTOHIME.DISAPPOINTED),
	txt("We've simply been exhausting ourselves, debating while flying."),
	txt("Let us return to the bar, shall we?"),
	txt("We shall.", KOTOHIME.HAPPY),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {textbox_create(txt_return)};
}