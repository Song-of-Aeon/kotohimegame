function txt_liar() {
	
	msg = msglang([
	
	txt("Obviously!"),
	txt("You're wrong about something there, Kaguya.", KOTOHIME.SMUG),
	txt("Your \"lies\" bore no malign intent.", KOTOHIME.HAPPY),
	txt("Less than that, the image of \"Tsukiko\" was created to be able to avoid the rumors and hearsay of \"Kaguya\"; such things are lies themselves.", KOTOHIME.DISAPPOINTED, u, u, function() {music_set(mus.chillin)}),
	txt("By being able to circumvent ridiculous assumptions and expectations, you are able to express yourself with no burden.", KOTOHIME.HAPPY),
	txt("\"Man is most honest when he wears a mask\", or so.", KOTOHIME.SMUG),
	txt("...For a human, you have interesting philosophies."),
	txt("I can't imagine when such things would be relevant in your life..."),
	txt("Then again, I hardly understand you."),
	txt("Still, you speak the truth."),
	txt("Then, isn't it-", KOTOHIME.HAPPY),
	txt("You fool!"),
	txt("Yet, it is more than that history that I would be guilty of denying."),
	txt("Kotohime, you must recall. There is something else about myself that \"Tsukiko\" could never have."),
	txt("Y-yes, of course...", KOTOHIME.NERVOUS),
	txt("...Tell it to me."),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {
		textchoice_make([
			new choice("police badge", textbox_create(txt_mortal)),
			new choice("eientei", textbox_create(txt_mortal)),
			new choice("imperishable night incident", textbox_create(txt_mortal)),
			new choice("the tale of the bamboo-cutter", textbox_create(txt_mortal)),
			new choice("impossible requests", textbox_create(txt_mortal)),
			new choice("hourai elixir", textbox_create(txt_immortal)),
			new choice("kotohime", textbox_create(txt_mortal)),
			new choice("tsukiko", textbox_create(txt_mortal)),
			new choice("elly", textbox_create(txt_mortal)),
		]);
	};
}