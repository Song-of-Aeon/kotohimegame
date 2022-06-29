function txt_truther() {
	
	msg = msglang([
	
	txt("Obviously!"),
	txt("You're right!", KOTOHIME.LMAO),
	txt("Yes... so I'll be on my way now.", KAGUYA2.NORMAL),
	txt("|aOh! Wait! I meant to say...", KOTOHIME.NERVOUS, u, u, u, [se_15]),
	
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