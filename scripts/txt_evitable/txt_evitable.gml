function txt_evitable() {
	
	msg = msglang([
	
	txt("I can."),
	txt("Really?"),
	txt("But of course."),
	txt("How could it be done, then?"),
	txt("To maintain a deeper and deeper interpersonal relationship without ever breathing one's true identity?"),
	txt("It's simple. Enter the cycle of reincarnation and be reborn anew, as the real Tsukiko!"),
	txt("...I can't."),
	txt("Oh. Right."),
	txt("Kotohime, take this seriously."),
	txt("Can you really argue that the existence of \"Tsukiko\" is sustainable?"),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {
		textchoice_make([new choice("I can.", textbox_create(txt_evitable)), new choice("I cannot.", function() {textbox_create(txt_inevitable)})])
	};
}