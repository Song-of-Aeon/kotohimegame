function txt_evitable() {
	
	msg = msglang([
	
	txt("I can.", KOTOHIME.SMUG),
	txt("|aReally?", KAGUYA.NORMAL, SPRITEPOS.MIDLEFT, u, u, [se_23]),
	txt("But of course.", KOTOHIME.SMUG),
	txt("How could it be done, then?"),
	txt("To maintain a deeper and deeper interpersonal relationship without ever breathing one's true identity?"),
	txt("It's simple. Enter the cycle of reincarnation and be reborn anew, |aas the real Tsukiko!", KOTOHIME.EXCITED, u, u, u, [se_22]),
	txt("...I can't."),
	txt("|aOh. Right.", KOTOHIME.NERVOUS, u, u, u, [se_25]),
	txt("Kotohime, take this seriously."),
	txt("Can you really argue that the existence of \"Tsukiko\" is sustainable?"),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {
		textchoice_make([new choice("I can.", textbox_create(txt_evitable)), new choice("I cannot.", function() {textbox_create(txt_inevitable)})])
	};
}