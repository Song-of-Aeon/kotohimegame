function txt_thosegrounds() {
	
	msg = msglang([
	
	ntxt(0, u, u, s_court, function() {instance_create(640, 360, o_bjection, "Instances_ui").image_index = 2}),
	txt("This is what we can overcome!", KOTOHIME.HAPPY, SPRITEPOS.MIDRIGHT, s_court),
	txt("...So? What about that can you change?", KAGUYA2.CONFUSED, SPRITEPOS.MIDLEFT, u, u, [se_23]),
	txt("You know...", KOTOHIME.HAPPY, SPRITEPOS.MIDRIGHT, s_court),
	txt("The whole thing~", KOTOHIME.WINK),
	txt("Don't kid with me.", KAGUYA2.ANGRY, SPRITEPOS.MIDLEFT, u, u, [se_17]),
	txt("|c102137255Damn.", KOTOHIME.NERVOUS, SPRITEPOS.MIDRIGHT, s_court),
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