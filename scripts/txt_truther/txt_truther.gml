function txt_truther() {
	
	msg = msglang([
	
	ntxt(0, u, u, s_court, function() {instance_create(640, 360, o_bjection, "Instances_ui")}),
	txt("You're right!", KOTOHIME.LMAO, SPRITEPOS.MIDRIGHT, s_court),
	txt("Yes... so I'll be on my way now.", KAGUYA2.HAPPY, SPRITEPOS.MIDLEFT),
	txt("|aOh! Wait! I meant to say...", KOTOHIME.NERVOUS, SPRITEPOS.MIDRIGHT, s_court, u, [se_15]),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {
		textchoice_make([
			new choice("You're right.", function() {textbox_create(txt_truther, global.textcourt)}),
			new choice("You're wrong about something.", function() {textbox_create(txt_liar, global.textcourt)}),
		]);
	};
}