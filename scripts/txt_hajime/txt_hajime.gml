function txt_hajime() {
	
	msg = msglang([
	
	txt("among us in real life", REIMU.UNIMPRESSED, SPRITEPOS.LEFT),
	txt("lookin sus who do we trust", REIMU.CONCERNED, SPRITEPOS.LEFT),
	ntxt(99, CHIYURI.CRINGE, SPRITEPOS.RIGHT),
	txt("i don't know the rest", REIMU.UNIMPRESSED, SPRITEPOS.LEFT),
	
	//txt("12345678901234567890123456789012345678901234578901234567890"),
	txt("It is an unimaginably long journey.", u, u, s_black),
	txt("I do not know the origin of what I carry with me now, being the latest in its' series of bearers."),
	txt("It is light. Fragile."),
	txt("But of course, I would never falter with it."),
	txt("After all, this thing is more important to us than its journey is long."),
	txt("I would guard it from any storm, and take any bruise for it."),
	txt("She would do the same... maybe even more?"),
	txt("Well, no matter. I'm already here, at its destination."),
	txt("This incredible thing that should not exist in such a ridiculous world of ours..."),
	txt("It is proof that we are different. That we stand together. It is proof of our-"),
	txt("|c255000085Royalty|c255255255."),
	txt("It is?", REISEN.HAPPY, SPRITEPOS.RIGHT),
	txt("What? Oh, you. It's nothing. You're welcome.", KOTOHIME.NORMAL, SPRITEPOS.LEFT),
	txt("I'm welcome... for what?", REISEN.HAPPY),
	txt("The sight of one of my rare performances! Very enigmatic, yes?", KOTOHIME.NORMAL),
	txt("I mean, maybe if what you're describing didn't use to be my job.", REISEN.HAPPY),
	txt("I'm sure you understand, then. The weight of this mission...", KOTOHIME.NORMAL),
	txt("Anyway, let's go! Take me to Kaguya!", KOTOHIME.NORMAL),
	txt("Kagu-#I mean, the princess is sleeping right now. I wouldn't want to be the one to wake her...", REISEN.HAPPY),
	txt("Eh, she'll understand. This is a big deal.", KOTOHIME.NORMAL),
	txt("If you say so.", REISEN.HAPPY),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {textbox_create(txt_hallway)};
}