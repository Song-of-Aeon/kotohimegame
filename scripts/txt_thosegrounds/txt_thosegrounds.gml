function txt_thosegrounds() {
	
	msg = msglang([
	
	ntxt(0, u, u, u, function() {instance_create(640, 360, o_bjection).image_index = 2}),
	txt("This is what we can overcome!", KOTOHIME.HAPPY),
	txt("...So? What about that can you change?", KAGUYA2.NORMAL, SPRITEPOS.MIDLEFT, u, u, [se_23]),
	txt("You know...", KOTOHIME.HAPPY),
	txt("The whole thing~", KOTOHIME.WINK),
	txt("Don't kid with me.", KAGUYA2.NORMAL, SPRITEPOS.MIDLEFT, u, u, [se_17]),
	txt("|c102137255Damn.", KOTOHIME.NERVOUS),
	txt("Have you forgotten?", KAGUYA2.NORMAL),
	txt("Romance and I are not famed for our synergy.", KAGUYA2.NORMAL),
	txt("I am aware. However, I believe those perceptions can be overcome.", KOTOHIME.SMUG),
	txt("On what grounds? Before that, what part of my image do you think can be overcome?", KAGUYA2.NORMAL),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {
		c_evidencegen(4, txt_thesegrounds, txt_thesegrounds);
	};
}