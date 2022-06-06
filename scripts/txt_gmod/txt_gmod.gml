function txt_gmod() {
	
	msg = msglang([
	
	txt("The middle one. \"Garry's Mod\".", KAGUYA.NORMAL, SPRITEPOS.CENTER, s_black),
	txt("Is that how you say it? I can't read any of this western text.", KOTOHIME.NORMAL, SPRITEPOS.MIDLEFT),
	txt("I don't quite know. I only have a few basic study books of experience.", KAGUYA.NORMAL, SPRITEPOS.MIDRIGHT),
	txt("Hm. I hope we can read enough to play.", KOTOHIME.NORMAL),
	txt("..."),
	txt(""),
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