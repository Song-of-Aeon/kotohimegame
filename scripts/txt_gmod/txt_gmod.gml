function txt_gmod() {
	
	msg = msglang([
	
	txt("The middle one. \"Garry's Mod\".", KAGUYA.NORMAL, SPRITEPOS.CENTER, s_black),
	txt("Is that how you say it? I can't read any of this western text.", KOTOHIME.NORMAL, SPRITEPOS.MIDLEFT),
	txt("I don't quite know. I only have a few basic study books of experience.", KAGUYA.NORMAL, SPRITEPOS.MIDRIGHT),
	txt("Hm. I hope we can read enough to play.", KOTOHIME.NORMAL),
	txt("..."),
	txt("Wahahahaha!"),
	txt("Haha!"),
	txt("Kotohime, you just-#That poor man! That was a mountain of explosives!"),
	txt("Kyaha, we can always make more. What, did you wanna take his place?"),
	txt("No, I don't think I do. Would you mind being on your way?"),
	txt("|aAh!|aDang. That can't stop me! In this world, I've got the same convenient body you do!", u, u, u, u, [se_null, se_null]),
	txt("If I pick up the crossbow here..."),
	txt("There! Got you!"),
	txt("You misunderstand. An immortal body works only to your disadvantage."),
	txt("Your disposition is yet unsuited to it."),
	txt("What do you... |a|w0020no |a|w0020way! You set the whole place to blow, even though you were inside?", u, u, u, u, [se_null, se_null]),
	txt("Don't you see?"),
	txt("When death becomes loses its permanence, it becomes symbiotic."),
	txt("A suicide attack is just using a tool in one's arsenal."),
	txt("How pragmatic."),
	txt("Kotohime, I'm surprised you can take this so seriously."),
	txt("Do you not have your \"princessly duties\" this eve?"),
	txt("Alas, the eve has already given way to morrow."),
	txt("So it has..."),
	txt(""),
	txt(""),
	txt(""),
	txt(""),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {textbox_create(txt_gmod2)};
}

function txt_gmod2() {
	
	msg = msglang([
	
	txt(""),
	
	],[
	
	txt(""),
	
	])
	
	endevent = c_null;
}