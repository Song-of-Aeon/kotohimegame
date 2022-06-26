function txt_thosegrounds() {
	
	msg = msglang([
	
	txt("Take that!"),
	txt("This is what we can overcome!", KOTOHIME.HAPPY),
	txt("...So? What about that can you change?"),
	txt("You know...", KOTOHIME.HAPPY),
	txt("The whole thing~", KOTOHIME.WINK),
	txt("Don't kid with me."),
	txt("|c102137255Damn.", KOTOHIME.NERVOUS),
	txt("Have you forgotten?"),
	txt("Romance and I are not famed for our synergy."),
	txt("I am aware. However, I believe those perceptions can be overcome.", KOTOHIME.SMUG),
	txt("On what grounds? Before that, what part of my image do you think can be overcome?"),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {
		textchoice_make([
			new choice("police badge", textbox_create(txt_thosegrounds)),
			new choice("eientei", textbox_create(txt_thosegrounds)),
			new choice("imperishable night incident", textbox_create(txt_thosegrounds)),
			new choice("the tale of the bamboo-cutter", textbox_create(txt_thosegrounds)),
			new choice("impossible requests", textbox_create(txt_thesegrounds)),
			new choice("hourai elixir", textbox_create(txt_thosegrounds)),
			new choice("kotohime", textbox_create(txt_thosegrounds)),
			new choice("tsukiko", textbox_create(txt_thosegrounds)),
			new choice("elly", textbox_create(txt_thosegrounds)),
		]);
	};
}