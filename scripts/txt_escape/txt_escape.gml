function txt_escape() {
	
	msg = msglang([
	
	txt("Oh, I don't know. It can't be that hard.", KOTOHIME.HAPPY, SPRITEPOS.LEFT),
	txt("No, it isn't, but I had supposed that a modium of discretion would be helpful.", KAGUYA2.NORMAL, SPRITEPOS.MIDRIGHT),
	txt("Eirin is fond of your help... but she is suspicious of you in many ways, and would not see me off under your supervision.", KAGUYA2.NORMAL),
	txt("Really? I thought we were on the same page. My heart aches at this...", KOTOHIME.THINKING),
	txt("That settles it. If it's come down to this, we'll need to...", KOTOHIME.THINKING),
	txt("Escape!", KOTOHIME.EXCITED),
	txt("Were we not planning for that already?", KAGUYA2.NORMAL),
	txt("And I've got the perfect idea...", KOTOHIME.SMUG),
	txt("...", KAGUYA2.NORMAL),
	txt("...And that's how we'll do it.", KOTOHIME.HAPPY),
	txt("I see. It endangers your own position here, you know.", KAGUYA2.NORMAL),
	txt("Not at all! I'll simply...", KOTOHIME.HAPPY),
	txt("Simply, uh...", KOTOHIME.THINKING),
	txt("Well. The future is boundless, right?", KOTOHIME.NERVOUS),
	txt("Certainly. That's how a mortal should think.", KAGUYA2.NORMAL),
	txt("Let's get on with the operation, now.", KAGUYA2.NORMAL),
	ntxt(0, KOTOHIME.HAPPY, SPRITEPOS.HIDDEN),
	ntxt(0, KAGUYA2.NORMAL, SPRITEPOS.HIDDEN),
	txt("..."),
	txt("...if you would, please.", EIRIN.NORMAL, SPRITEPOS.LEFT),
	txt("Understood. I'll have it done by tomorrow.", REISEN.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("That will do.", EIRIN.NORMAL),
	txt("|c102137255Ugh... another brutal assignment.", REISEN.HAPPY, SPRITEPOS.MIDLEFT),
	txt("|c102137255Maybe I should ask Tewi for help. I don't think I'll have enough time by myself.", REISEN.HAPPY),
	txt("|c102137255Then again, she might just-", REISEN.HAPPY),
	txt("-AND DON'T THINK YOU'LL GET ANOTHER CHANCE!", KAGUYA2.NORMAL),
	txt("!!", REISEN.HAPPY),
	txt("Aaaah!", KOTOHIME.THINKING, SPRITEPOS.CENTER),
	txt("Hey, it was just a small mistake~", KOTOHIME.NERVOUS),
	txt("I DO NOT CARE! LYING TO ME IS A SIN IN AND OF ITSELF!!", KAGUYA2.NORMAL),
	txt("Ow, ow, okay, okay! I'll leave.", KOTOHIME.NERVOUS),
	txt("Oh, hey Reisen.", KOTOHIME.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("Hi?", REISEN.HAPPY),
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