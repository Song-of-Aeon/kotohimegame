function txt_approach() {
	
	msg = msglang([
	
	txt("..."),
	txt("Shall we continue with our plans, now?", KAGUYA2.NORMAL, SPRITEPOS.CENTER),
	txt("If you're ready.", KOTOHIME.NORMAL, SPRITEPOS.MIDLEFT),
	txt("How shall we proceed?", KAGUYA2.NORMAL),
	txt("Just pick any girl here, and we can go strike up a conversation. They're all nice enough.", KOTOHIME.NORMAL),
	txt("Girls will do, right?", KOTOHIME.NORMAL),
	txt("Yes.", KAGUYA2.NORMAL),
	ntxt(0, KAGUYA2.NORMAL, SPRITEPOS.MIDRIGHT),
	txt("|c160160160Kaguya turns from her seat, and observes the tables around the bar."),
	txt("|c160160160She sees..."),
	
	],[
	
	txt(""),
	
	])
	
	endevent = c_pickgirl;
}

function c_pickgirl() {
	if flg.kana && flg.gengetsu && flg.sariel && flg.ruukoto {
		textbox_create(txt_elly);
	} else {
		textchoice_make([
			global.theflags.kana ? u : new choice("a pale, relaxed lady.", function() {textbox_create(txt_kana)}),
			global.theflags.gengetsu ? u : new choice("an intimidating foreigner.", function() {textbox_create(txt_gengetsu)}),
			global.theflags.sariel ? u : new choice("a pair clad in white.", function() {textbox_create(txt_sariel)}),
			global.theflags.ruukoto ? u : new choice("a peculiar maid.", function() {textbox_create(txt_ruukoto)}),
		])
	}
}

#macro flg global.theflags