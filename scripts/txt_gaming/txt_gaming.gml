function txt_gaming() {
	
	msg = msglang([
	
	txt("...", u, u, s_black),
	txt("Here we are.", REISEN.HAPPY, SPRITEPOS.CENTER),
	txt("Okay! Thanks, Reisen!", KOTOHIME.HAPPY, SPRITEPOS.LEFT),
	txt("No problem...", REISEN.HAPPY, SPRITEPOS.HIDDEN),
	txt("KAGUYAAAAAA!#I'M HEEEERE~!", KOTOHIME.EXCITED, u, u, function() {music_set(mus.null)}),
	txt("Please come in.", KAGUYA2.HAPPY, SPRITEPOS.HIDDEN),
	txt("And lo, your price arrives.", KOTOHIME.THINKING, SPRITEPOS.MIDLEFT, s_gaming),
	txt("Oh? You know, I can only call you my prince if you can fulfill my impossible requests...", KAGUYA2.GRIN, SPRITEPOS.RIGHT),
	txt("But of course.", KOTOHIME.WINK),
	txt("I have it right...", KOTOHIME.HAPPY),
	txt("Right, uh...", KOTOHIME.NERVOUS),
	txt("|c102137255I shoved it in my sleeve somewhere...|w0050 there.", KOTOHIME.THINKING),
	txt("Here!", KOTOHIME.EXCITED),
	txt("|c160160160Kotohime brandishes a single USB thumb drive."),
	txt("As unassuming as always, isn't it? What mysteries does it bring to us this time...?", KOTOHIME.THINKING, u, u, function() {music_set(mus.chillin)}),
	txt("Yes, certainly.", KAGUYA2.HAPPY),
	txt("It was quite the wait. Let us see what it has to offer.", KAGUYA2.EXCITED),
	txt("Alright.", KOTOHIME.HAPPY),
	txt("|c160160160Kotohime inserts the drive into one of Kaguya's computers."),
	txt("Okay, it looks like there are three folders here...", KOTOHIME.HAPPY),
	txt("They must all be decent. This time, I had that outsider girl contracted.", KAGUYA2.HAPPY),
	txt("I guess the person I picked it up from did look kind of weird...", KOTOHIME.HAPPY),
	txt("There's an outsider girl who can go back and forth?", KOTOHIME.HAPPY),
	txt("You... haha! I didn't think there was someone more secluded from current events than I!", KAGUYA2.SURPRISED),
	txt("Her appearance was quite a big deal, you know.", KAGUYA2.HAPPY),
	txt("Yes, well, I have a very busy schedule. Many princessly duties. I'm sure you understand.", KOTOHIME.THINKING),
	txt("Hehe, of course.", KAGUYA2.GRIN),
	txt("A miracle that we both are given this chance to meet today.", KOTOHIME.HAPPY),
	txt("Nothing but.", KAGUYA2.GRIN),
	txt("Anyway, which one should we try first?", KOTOHIME.EXCITED),
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