function txt_mortal() {
	
	msg = msglang([
	
	txt("Take that!"),
	txt("...I suppose that's not wrong."),
	txt("It isn't quite what I had in mind, though."),
	txt("O-oh, right..."),
	txt("There is something else that \"Tsukiko\" could never have."),
	
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