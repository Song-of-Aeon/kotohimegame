function txt_inevitable() {
	
	msg = msglang([
	
	txt("|c102137255...It's impossible. She's right.", KOTOHIME.DISAPPOINTED, SPRITEPOS.MIDRIGHT, s_court),
	txt("|c102137255But, that doesn't mean she shouldn't get to enjoy this. That doesn't mean things have to be over.", KOTOHIME.HAPPY),
	txt("|c102137255Kaguya is convinced that \"Tsukiko\" is the only person accepted in that place... I need to change that.", KOTOHIME.SMUG),
	txt("...I cannot.", KOTOHIME.DISAPPOINTED),
	txt("Then it is as simple as that.", KAGUYA2.GRIN, SPRITEPOS.MIDLEFT),
	txt("The Twilight Bar is an interesting place, but I am not welcome there.", KAGUYA2.HAPPY),
	ntxt(0, u, u, u, function() {instance_create(640, 360, o_bjection, "Instances_ui")}),
	txt("That is not the case.", KOTOHIME.HAPPY, SPRITEPOS.MIDRIGHT, s_court),
	txt("\"Tsukiko\" may not be sustainable, |abut it doesn't have to be her.", KOTOHIME.HAPPY, u, u, u, [se_17]),
	txt("Have you forgotten?", KAGUYA2.GRIN),
	txt("Romance and I are not famed for our synergy.", KAGUYA2.HAPPY),
	txt("I am aware. However, I believe those perceptions can be overcome.", KOTOHIME.SMUG, SPRITEPOS.MIDRIGHT, s_court),
	txt("On what grounds? Before that, what part of my image do you think can be overcome?", KAGUYA2.HAPPY),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {
		c_evidencegen(4, txt_thosegrounds, txt_thesegrounds);
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