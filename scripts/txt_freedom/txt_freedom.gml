function txt_freedom() {
	
	msg = msglang([
	
	txt("..."),
	txt("|c102137255Reisen, you are a kind person. I hate to do this evil of deception to you.", KOTOHIME.NORMAL, SPRITEPOS.LEFT),
	txt("|c102137255But it is impossible for you to understand. Your diligence in your duty would prevent it.", KOTOHIME.NORMAL),
	txt("|c102137255You will surely be punished for this, but...", KOTOHIME.NORMAL),
	txt("|c102137255It is for your lady's good.", KOTOHIME.NORMAL),
	txt("Find it yet?", KOTOHIME.NORMAL),
	txt("No. I'm still uncertain as to if we have any chance at all.", REISEN.HAPPY, SPRITEPOS.CENTER),
	txt("...Hey! Kotohime!"),
	txt("|c102137255Kaguya's out! I need to get rid of Reisen.", KOTOHIME.NORMAL),
	txt("You know, about \"chance\"... don't you have a friend that could help with that?", KOTOHIME.NORMAL),
	txt("Oh! Tewi!", REISEN.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("Have you even met her?", REISEN.HAPPY),
	txt("No.", KOTOHIME.NORMAL),
	txt("She'll probably help, if it's for the princess, but watch your back afterwards. She pulls mean pranks.", REISEN.HAPPY),
	txt("I can bear any weather.", KOTOHIME.NORMAL),
	txt("Good idea, though. I'll get her now. Keep looking.", REISEN.HAPPY),
	txt("|c160160160Reisen jogs back to Eientei."),
	txt("..."),
	txt("It's clear.", KOTOHIME.NORMAL),
	txt("Hehe, that was fun.", KAGUYA.NORMAL),
	txt("We're just getting started! Although, we should leave posthaste. Reisen won't be long.", KOTOHIME.NORMAL),
	txt("Let us be off, then.", KAGUYA.NORMAL),
	txt("Ah... flight.", KOTOHIME.NORMAL),
	txt("...Are you incapable of it?", KAGUYA.NORMAL),
	txt("I had simply forgotten.", KOTOHIME.NORMAL),
	txt("How does one...", KAGUYA.NORMAL),
	txt("It is the folly of the noble to look down upon the common man, Kaguya.", KOTOHIME.NORMAL),
	txt("How can we claim to represent the best of the people when we do not walk among them?", KOTOHIME.NORMAL),
	txt("Will you not fly until every human takes the time to learn?", KAGUYA.NORMAL),
	txt("No, not to that extent. It's just been a while since I needed to.", KOTOHIME.NORMAL),
	txt("I'm quite the sprinter, you see.", KOTOHIME.NORMAL),
	txt("I don't mind walking, then. It will make it harder to be caught, as well.", KAGUYA.NORMAL),
	txt("Okay, so the place is just a bit past the human village...", KOTOHIME.NORMAL),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {textbox_create(txt_bar)};
}