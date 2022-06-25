function txt_deception() {
	
	msg = msglang([
	
	txt("..."),
	txt("That was heavy. I don't think I've ever seen the princess get so mad...", REISEN.HAPPY, SPRITEPOS.LEFT),
	txt("What did you do?", REISEN.HAPPY),
	txt("Well~", KOTOHIME.HAPPY, SPRITEPOS.RIGHT),
	txt("You know~", KOTOHIME.SMUG),
	txt("I don't.", REISEN.HAPPY),
	txt("That thing I brought~", KOTOHIME.HAPPY),
	txt("I sorta lost it~", KOTOHIME.WINK),
	txt("How did you...", REISEN.HAPPY),
	txt("Wait, you showed it to Eirin and I before you met the princess.", REISEN.HAPPY),
	txt("That was, uh, the last one. I still had it with me.", KOTOHIME.NERVOUS),
	txt("And you were together for so long. How did she just notice now?", REISEN.HAPPY),
	txt("The people of Hourai live incredibly long lives. Our presence in her eyes is only a blip amidst an eternal storm.", KOTOHIME.DISAPPOINTED, SPRITEPOS.CENTER),
	txt("Any individual meeting of ours, a blip of a blip.", KOTOHIME.HAPPY),
	txt("Sure.", REISEN.HAPPY),
	txt("I had thought that maybe one such as her would not notice if a sub-blip repeated itself.", KOTOHIME.THINKING, SPRITEPOS.MIDLEFT),
	txt("And I was right! For a while! Eventually she realized-", KOTOHIME.EXCITED),
	txt("That you were pretending to show her something new, that she paid a lot of money and waited quite a while for?", REISEN.HAPPY),
	txt("Yes, well, gaslight, gatekeep, g-", KOTOHIME.SMUG, SPRITEPOS.RIGHT),
	txt("You know what, whatever. I can't even have any sympathy for you.", REISEN.HAPPY),
	txt("I've got some work to do. I'll see you around, maybe.", REISEN.HAPPY),
	txt("Wait!!", KOTOHIME.NERVOUS, SPRITEPOS.MIDRIGHT),
	txt("I was wondering if you might aid me on my path to repentence.", KOTOHIME.DISAPPOINTED),
	txt("I know what I did was awful...", KOTOHIME.DISAPPOINTED),
	txt("But there's one more thing I can do to atone!", KOTOHIME.HAPPY),
	txt("It's for \"the princess\", right? I'm sure she wouldn't mind if you helped.", KOTOHIME.SMUG),
	txt("...Gah. What are you going to do?", REISEN.HAPPY),
	txt("It's simple! Help me look for that thing!", KOTOHIME.HAPPY, SPRITEPOS.RIGHT),
	txt("I don't think I can help with that. It's incredibly tiny.", REISEN.HAPPY),
	txt("If you haven't made a habit of burning bridges all around Gensokyo, maybe you could get someone skilled at finding lost things?", REISEN.HAPPY),
	txt("It won't be that bad. I'm pretty sure I know around where I dropped it.", KOTOHIME.HAPPY),
	txt("If we find it quickly, maybe Kaguya will calm down. Besides, most people can't navigate the Bamboo Forest as well as someone who lives in it, right?", KOTOHIME.WINK),
	txt("Fine, fine.", REISEN.HAPPY),
	txt("Great~!", KOTOHIME.HAPPY),
	txt("Now, I think it was around this way...", KOTOHIME.HAPPY),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {textbox_create(txt_freedom)};
}