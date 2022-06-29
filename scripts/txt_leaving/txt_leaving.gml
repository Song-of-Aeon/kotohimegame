function txt_leaving() {
	
	msg = msglang([
	
	txt("|c160160160The lunarian lifts off the ground shortly after exiting through the bar's doors.", u, u, s_ky),
	txt("|c102137255And so closes the tale of Tsukiko.", KAGUYA2.NORMAL, -3.5),
	txt("|c102137255It is in ill taste for the aged to pretend to be young.", KAGUYA2.NORMAL),
	txt("K-Kaguya!!", KOTOHIME.HAPPY, SPRITEPOS.RIGHT),
	txt("|c160160160Kotohime stumbles into the sky, her weight flailing as she adjusts her trajectory."),
	txt("Kotohime. Thank you for the opportunity, today.", KAGUYA2.NORMAL, SPRITEPOS.MIDLEFT),
	txt("What happened? Things were going great!", KOTOHIME.HAPPY),
	txt("Yes, they were.", KAGUYA2.NORMAL),
	txt("But then why-", KOTOHIME.HAPPY),
	txt("Things were going very well for Tsukiko.", KAGUYA2.NORMAL),
	txt("Yet, that is the extent of her existence.", KAGUYA2.NORMAL),
	txt("It is useless for me to continue a charade I cannot maintain.", KAGUYA2.NORMAL),
	txt("The Twilight Bar is not a place for princesses.", KAGUYA2.NORMAL),
	txt("It was fun, but I cannot go back.", KAGUYA2.NORMAL),
	txt("This is how it must be.", KAGUYA2.NORMAL),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {textbox_create(txt_objection)};
}