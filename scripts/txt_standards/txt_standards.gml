function txt_standards() {
	
	msg = msglang([
	
	txt("...I...", KAGUYA2.NORMAL, SPRITEPOS.MIDLEFT, s_ky),
	txt("I don't quite know what to say.", KAGUYA2.NORMAL),
	txt("How deeply candid...", KAGUYA2.NORMAL),
	txt("Kotohime, why go this far?", KAGUYA2.NORMAL),
	txt("What is your investment in this mission?", KAGUYA2.NORMAL),
	txt("...Nothing in particular. It is just a shame to see a fellow princess lose the opportunities availed to her.", KOTOHIME.SMUG, SPRITEPOS.RIGHT),
	txt("How selfless.", KAGUYA2.NORMAL),
	txt("You know, Kotohime, one such as yourself ought to be more careful.", KAGUYA2.NORMAL),
	txt("If you keep this up, the one I fall for might be you...~", KAGUYA2.NORMAL),
	txt("Oh.", KOTOHIME.DISAPPOINTED, u, u, function() {music_set(mus.null)}),
	txt("...I really hate to say this, Kaguya, but I'm sorry.", KOTOHIME.THINKING),
	txt("I couldn't accept that.", KOTOHIME.DISAPPOINTED),
	txt("W-why not...?", KAGUYA2.NORMAL),
	txt("Please don't take this personally. My standards... they are unreasonably high.", KOTOHIME.THINKING),
	txt("Even the great Kaguya... I cannot become interested in.", KOTOHIME.THINKING),
	txt("In truth, |c160160160I've |c255255255never |c128000128met |c160160160someone|c255255255 worthy |c128000128enough |c160160160to |c255255255stand |c128000128beside |c160160160me |c255255255in |c128000128such |c160160160a |cway.", KOTOHIME.SMUG),
	txt("O-oh.", KAGUYA2.NORMAL),
	txt("I'm sorry.", KOTOHIME.DISAPPOINTED),
	txt("I was just joking, you know.", KAGUYA2.NORMAL),
	txt("Oh, is that so? You look a little red...", KOTOHIME.DISAPPOINTED),
	txt("We've simply been exhausting ourselves, debating while flying.", KAGUYA2.NORMAL),
	txt("Let us return to the bar, shall we?", KAGUYA2.NORMAL),
	txt("We shall.", KOTOHIME.HAPPY),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {textbox_create(txt_return)};
}