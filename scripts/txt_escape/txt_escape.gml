function txt_escape() {
	
	msg = msglang([
	
	txt("Oh, I don't know. It can't be that hard.", KOTOHIME.HAPPY, SPRITEPOS.LEFT, s_gaming),
	txt("No, it isn't, but I had supposed that a modium of discretion would be helpful.", KAGUYA2.NORMAL, SPRITEPOS.MIDRIGHT),
	txt("Eirin is fond of your help... but she is suspicious of you in many ways, and would not see me off under your supervision.", KAGUYA2.NORMAL),
	txt("Really? I thought we were on the same page. My heart aches at this...", KOTOHIME.THINKING),
	txt("That settles it. If it's come down to this, we'll need to...", KOTOHIME.THINKING),
	txt("Escape!", KOTOHIME.EXCITED),
	txt("Were we not planning for that already?", KAGUYA2.NORMAL),
	txt("And I've got the perfect idea...", KOTOHIME.SMUG),
	txt("...", KOTOHIME.SMUG, SPRITEPOS.CENTER),
	txt("...And that's how we'll do it.", KOTOHIME.HAPPY, SPRITEPOS.LEFT),
	txt("I see. It endangers your own position here, you know.", KAGUYA2.NORMAL),
	txt("Not at all! I'll simply...", KOTOHIME.HAPPY),
	txt("Simply, uh...", KOTOHIME.THINKING),
	txt("Well. The future is boundless, right?", KOTOHIME.NERVOUS),
	txt("Certainly. That's how a mortal should think.", KAGUYA2.NORMAL),
	txt("Let's get on with the operation, now.", KAGUYA2.NORMAL),
	ntxt(0, KOTOHIME.HAPPY, SPRITEPOS.HIDDEN),
	ntxt(0, KAGUYA2.NORMAL, SPRITEPOS.HIDDEN),
	txt("...", u, u, s_black, function() {music_set(mus.null)}),
	txt("...if you would, please.", EIRIN.NORMAL, SPRITEPOS.LEFT, s_eienteihall1, function() {music_set(mus.eientei)}),
	txt("Understood. I'll have it done by tomorrow.", REISEN.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("That will do.", EIRIN.NORMAL),
	ntxt(0, EIRIN.NORMAL, -3.5),
	txt("|c102137255Ugh... another brutal assignment.", REISEN.SHITSTUFF, SPRITEPOS.MIDLEFT),
	txt("|c102137255Maybe I should ask Tewi for help. I don't think I'll have enough time by myself.", REISEN.SHITSTUFF),
	txt("|c102137255Then again, she might just-", REISEN.SHITSTUFF),
	txt("-AND DON'T THINK YOU'LL GET ANOTHER CHANCE!", KAGUYA2.NORMAL),
	txt("!!", REISEN.SURPRISED),
	txt("Aaaah!", KOTOHIME.THINKING, SPRITEPOS.CENTER),
	txt("Hey, it was just a small mistake~", KOTOHIME.NERVOUS),
	txt("I DO NOT CARE! LYING TO ME IS A SIN IN AND OF ITSELF!!", KAGUYA2.NORMAL),
	txt("Ow, ow, okay, okay! I'll leave.", KOTOHIME.NERVOUS),
	txt("Oh, hey Reisen.", KOTOHIME.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("Hi?", REISEN.DAMN),
	ntxt(0, KOTOHIME.HAPPY, SPRITEPOS.MIDLEFT),
	ntxt(0, REISEN.HAPPY, SPRITEPOS.LEFT),
	txt("REISEN! Escort this... nincompoop! Off the premises! Out of here! NOW!", KAGUYA2.NORMAL, SPRITEPOS.RIGHT),
	txt("Very well. Should I-", REISEN.HAPPY),
	txt("Just do it!!", KAGUYA2.NORMAL),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {textbox_create(txt_deception)};
}