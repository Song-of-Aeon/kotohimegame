function txt_truther() {
	
	msg = msglang([
	
	txt("Obviously!"),
	txt("You're right!", KOTOHIME.LMAO),
	txt("Yes... so I'll be on my way now."),
	txt("Oh! Wait! I meant to say...", KOTOHIME.NERVOUS),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {
		textchoice_make([
			new choice("You're right.", textbox_create(txt_truther)),
			new choice("You're wrong about something.", textbox_create(txt_liar)),
		]);
	};
}