function txt_gaming() {
	
	msg = msglang([
	
	txt("...", u, u, s_black),
	txt("Here we are.", REISEN.HAPPY, SPRITEPOS.CENTER),
	txt("Okay! Thanks, Reisen!", KOTOHIME.HAPPY, SPRITEPOS.LEFT),
	txt("No problem...", REISEN.HAPPY, SPRITEPOS.HIDDEN),
	txt("KAGUYAAAAAA!#I'M HEEEERE~!", KOTOHIME.HAPPY),
	txt("Please come in.", KAGUYA2.NORMAL),
	txt("And lo, your price arrives.", KOTOHIME.HAPPY, SPRITEPOS.MIDLEFT),
	txt("Oh? You know, I can only call you my prince if you can fulfill my impossible requests...", KAGUYA2.NORMAL, SPRITEPOS.RIGHT),
	txt("But of course.", KOTOHIME.HAPPY),
	txt("I have it right...", KOTOHIME.HAPPY),
	txt("Right, uh...", KOTOHIME.HAPPY),
	txt("|c102137255I shoved it in my sleeve somewhere...|w0050 there.", KOTOHIME.HAPPY),
	txt("Here!", KOTOHIME.HAPPY),
	txt("|c160160160Kotohime brandishes a single USB thumb drive."),
	txt("As unassuming as always, isn't it? What mysteries does it bring to us this time...?", KOTOHIME.HAPPY),
	txt("Yes, certainly.", KAGUYA2.NORMAL),
	txt("It was quite the wait. Let's see what it has to offer.", KAGUYA2.NORMAL),
	txt("Alright.", KOTOHIME.HAPPY),
	txt("|c160160160Kotohime inserts the drive into one of Kaguya's computers."),
	txt("Okay, it looks like there are three folders here...", KOTOHIME.HAPPY),
	txt("They must all be decent. This time, I had that outsider girl contracted.", KAGUYA2.NORMAL),
	txt("I guess the girl I picked it up from did look kind of weird...", KOTOHIME.HAPPY),
	txt("There's an outsider girl who can go back and forth?", KOTOHIME.HAPPY),
	txt("You... haha! I didn't think there was someone more secluded from current events than I!", KAGUYA2.NORMAL),
	txt("Her appearance was quite a big deal, you know.", KAGUYA2.NORMAL),
	txt("Yes, well, I have a very busy schedule. Many princessly duties. I'm sure you understand.", KOTOHIME.HAPPY),
	txt("Hehe, of course.", KAGUYA2.NORMAL),
	txt("A miracle that we both are given this chance to meet today.", KOTOHIME.HAPPY),
	txt("Nothing but.", KAGUYA2.NORMAL),
	txt("Anyway, which one should we try first?", KOTOHIME.HAPPY),
	//elden ring
	//garrys mod
	//ultrakill
	
	],[
	
	txt(""),
	
	])
	
	/*endevent = function() {textchoice_make([
		new choice("elden ring", function() {textbox_create(txt_hajime) global.theflags.eldenring = 1}),
		new choice("garry's mod", function() {textbox_create(txt_gmod) global.theflags.gmod = 1}),
		new choice("ultrakill", function() {textbox_create(txt_hallway) global.theflags.ultrakill = 1}),
	])};*/
	endevent = function() {textbox_create(txt_gmod)};
}