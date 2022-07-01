function txt_evitable() {
	
	msg = msglang([
	
	txt("I can.", KOTOHIME.SMUG, SPRITEPOS.MIDRIGHT, s_court),
	txt("|aReally?", KAGUYA2.NORMAL, SPRITEPOS.MIDLEFT, u, u, [se_23]),
	txt("But of course.", KOTOHIME.SMUG, SPRITEPOS.MIDRIGHT, s_court),
	txt("How could it be done, then?", KAGUYA2.NORMAL),
	txt("To maintain a deeper and deeper interpersonal relationship without ever breathing one's true identity?", KAGUYA2.NORMAL),
	txt("It's simple. Enter the cycle of reincarnation and be reborn anew, |aas the real Tsukiko!", KOTOHIME.EXCITED, SPRITEPOS.MIDRIGHT, s_court, u, [se_22]),
	txt("...I can't.", KAGUYA2.NORMAL),
	txt("|aOh. Right.", KOTOHIME.NERVOUS, SPRITEPOS.MIDRIGHT, s_court, u, [se_25]),
	txt("Kotohime, take this seriously.", KAGUYA2.NORMAL),
	txt("Can you really argue that the existence of \"Tsukiko\" is sustainable?", KAGUYA2.NORMAL),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {
		textchoice_make([new choice("I can.", function() {textbox_create(txt_evitable, global.textcourt)}), new choice("I cannot.", function() {textbox_create(txt_inevitable, global.textcourt)})]);
	};
}