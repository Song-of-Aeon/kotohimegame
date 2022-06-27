function txt_gmod() {
	
	msg = msglang([
	
	txt("This one. \"Garry's Mod\".", KAGUYA2.NORMAL, SPRITEPOS.CENTER, s_gaming),
	txt("Is that how you say it? I can't read any of this western text.", KOTOHIME.NERVOUS, SPRITEPOS.MIDLEFT),
	txt("I don't quite know. I only have a few basic study books of experience.", KAGUYA2.NORMAL, SPRITEPOS.MIDRIGHT),
	txt("Hm. I hope we can read enough to play.", KOTOHIME.HAPPY),
	txt("..."),
	txt("Wahahahaha!", KOTOHIME.LMAO, SPRITEPOS.LEFT),
	txt("Haha!", KAGUYA2.NORMAL, SPRITEPOS.CENTER),
	txt("Kotohime, you just-#That poor man! That was a mountain of explosives!", KAGUYA2.NORMAL),
	txt("Kyaha, we can always make more. What, did you wanna take his place?", KOTOHIME.HAPPY),
	txt("No, I don't think I do. Would you mind being on your way?", KAGUYA2.NORMAL),
	txt("|aAh! |aDang. That can't stop me! In this world, I've got the same convenient body you do!", KOTOHIME.NERVOUS, u, u, u, [se_null, se_null]),
	txt("If I pick up the crossbow here...", KOTOHIME.SMUG),
	txt("There! Got you!", KOTOHIME.EXCITED),
	txt("You misunderstand. An immortal body works only to your disadvantage.", KAGUYA2.NORMAL),
	txt("Your disposition is yet unsuited to it.", KAGUYA2.NORMAL),
	txt("What do you... |a|w0020no |a|w0020way! You set the whole place to blow, even though you were inside?", KOTOHIME.NERVOUS, u, u, u, [se_null, se_null]),
	txt("Don't you see?", KAGUYA2.NORMAL),
	txt("When death becomes loses its permanence, it becomes symbiotic.", KAGUYA2.NORMAL),
	txt("A suicide attack is just using a tool in one's arsenal.", KAGUYA2.NORMAL),
	txt("How pragmatic...", KOTOHIME.NERVOUS),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {textbox_create(txt_chillin)};
}

function txt_gmod2() {
	
	msg = msglang([
	
	txt(""),
	
	],[
	
	txt(""),
	
	])
	
	endevent = c_null;
}