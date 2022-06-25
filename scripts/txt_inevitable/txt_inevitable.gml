function txt_inevitable() {
	
	msg = msglang([
	
	txt("(...It's impossible. She's right.)"),
	txt("(But, that doesn't mean she shouldn't get to enjoy this. That doesn't mean things have to be over.)"),
	txt("(Kaguya is convinced that \"Tsukiko\" is the only person accepted in that place... I need to change that.)"),
	txt("...I cannot."),
	txt("Then it is as simple as that."),
	txt("The Twilight Bar is an interesting place, but I am not welcome there."),
	txt("Obviously!"),
	txt("That is not the case."),
	txt("\"Tsukiko\" may not be sustainable, but it doesn't have to be her."),
	txt("Have you forgotten?"),
	txt("Romance and I are not famed for our synergy."),
	txt("I am aware. However, I believe those perceptions can be overcome."),
	txt("On what grounds? Before that, what part of my image do you think can be overcome?"),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {
		textchoice_make([
			new choice("police badge", textbox_create(txt_thosegrounds)),
			new choice("eientei", textbox_create(txt_thosegrounds)),
			new choice("imperishable night incident", textbox_create(txt_thosegrounds)),
			new choice("the tale of the bamboo-cutter", textbox_create(txt_thosegrounds)),
			new choice("impossible requests", textbox_create(txt_thesegrounds)),
			new choice("hourai elixir", textbox_create(txt_thosegrounds)),
			new choice("kotohime", textbox_create(txt_thosegrounds)),
			new choice("tsukiko", textbox_create(txt_thosegrounds)),
			new choice("elly", textbox_create(txt_thosegrounds)),
		]);
	};
}

/*
evidence:
police badge - did you know? i'm a cop!
eientei - kaguya lives in a hidden manor in the bamboo forest of the lost with her fellow lunarians
imperishable night incident - kaguya caused the "imperishable night incident", revealing herself to the public eye and giving eientei authority in gensokyo
the tale of the bamboo-cutter - 
impossible requests - 
kotohime - it's me!
tsukiko - a persona adopted for a short time by kaguya in the twilight bar. she is unsuited to modern danmaku combat
elly - a reaper i helped kaguya meet at the twilight bar
*/