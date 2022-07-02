function txt_mortal() {
	
	msg = msglang([
	
	ntxt(0, u, u, u, function() {instance_create(640, 360, o_bjection, "Instances_ui").image_index = 2}),
	txt("Kaguya, Kaguya...", KOTOHIME.SMUG, SPRITEPOS.MIDRIGHT, s_court),
	txt("Don't ask me that. As your friend, I have to keep you humble.", KOTOHIME.THINKING),
	txt("But if you force my hand, I'll have to tell the truth.", KOTOHIME.SMUG),
	txt("Everything about you is totally unique! Never feel down, like you're just a face in the crowd or a cog in the machine!", KOTOHIME.EXCITED),
	txt("Because it isn't true! There's only one you!", KOTOHIME.LMAO),
	txt("...I wasn't concerned about that, but thank you.", KAGUYA2.NORMAL, SPRITEPOS.MIDLEFT),
	txt("Oh.", KOTOHIME.THINKING, SPRITEPOS.MIDRIGHT, s_court),
	txt("I meant something more specific.", KAGUYA2.NORMAL),
	txt("Kotohime, you must recall. There is something else about myself that \"Tsukiko\" could never have.", KAGUYA2.NORMAL),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {
		c_evidencegen(5, txt_mortal, txt_immortal);
	};
}