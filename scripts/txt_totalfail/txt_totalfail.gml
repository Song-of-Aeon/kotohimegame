function txt_totalfail() {
	
	msg = msglang([
	
	txt("Take that!"),
	txt("...I don't see it."),
	txt("...My finger slipped.", KOTOHIME.NERVOUS),
	txt("A-allow me once more.", KOTOHIME.NERVOUS),
	txt("The final reason you're perfect for this is...!", KOTOHIME.WINK),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {
		textchoice_make([
			new choice("police badge", textbox_create(txt_totalfail)),
			new choice("eientei", textbox_create(txt_totalfail)),
			new choice("imperishable night incident", textbox_create(txt_totalfail)),
			new choice("the tale of the bamboo-cutter", textbox_create(txt_totalfail)),
			new choice("impossible requests", textbox_create(txt_totalfail)),
			new choice("hourai elixir", textbox_create(txt_totalfail)),
			new choice("kotohime", textbox_create(txt_totalfail)),
			new choice("tsukiko", textbox_create(txt_closing)),
			new choice("elly", textbox_create(txt_totalfail)),
		]);
	};
}