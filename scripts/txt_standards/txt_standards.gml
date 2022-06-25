function txt_standards() {
	
	msg = msglang([
	
	txt("...I..."),
	txt("I don't quite know what to say."),
	txt("How deeply candid..."),
	txt("Kotohime, why go this far?"),
	txt("What is your investment in this mission?"),
	txt("...Nothing in particular. It is just a shame to see a fellow princess lose the opportunities availed to her."),
	txt("How selfless."),
	txt("You know, Kotohime, one such as yourself ought to be more careful."),
	txt("If you keep this up, the one I fall for might be you...~"),
	txt("Oh."),
	txt("...I really hate to say this, Kaguya, but I'm sorry."),
	txt("I couldn't accept that."),
	txt("W-why not...?"),
	txt("Please don't take this personally. My standards... they are unreasonably high."),
	txt("Even the great Kaguya... I cannot become interested in."),
	txt("In truth, |c160160160I've never |c255255255met someone |c128000128worthy enough|c to stand beside me in such a way."),
	txt("O-oh."),
	txt("I'm sorry."),
	txt("I was just joking, you know."),
	txt("Oh, is that so? You look a little red..."),
	txt("We've simply been exhausting ourselves, debating while flying."),
	txt("Let us return to the bar, shall we?"),
	txt("We shall."),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {textbox_create(txt_return)};
}