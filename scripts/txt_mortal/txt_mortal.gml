function txt_mortal() {
	
	msg = msglang([
	
	txt("Take that!", u, u, u, function() {instance_create(640, 360, o_bjection)}),
	txt("Kaguya, Kaguya...", KOTOHIME.SMUG),
	txt("Don't ask me that. As your friend, I have to keep you humble.", KOTOHIME.THINKING),
	txt("But if you force my hand, I'll have to tell the truth.", KOTOHIME.SMUG),
	txt("Everything about you is totally unique! Never feel down, like you're just a face in the crowd or a cog in the machine!", KOTOHIME.EXCITED),
	txt("Because it isn't true! There's only one you!", KOTOHIME.LMAO),
	txt("...I wasn't concerned about that, but thank you."),
	txt("Oh.", KOTOHIME.THINKING),
	txt("I meant something more specific."),
	txt("Kotohime, you must recall. There is something else about myself that \"Tsukiko\" could never have.", KAGUYA2.NORMAL),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {
		c_evidencegen(5, txt_immortal, txt_mortal);
	};
}