function txt_liar() {
	
	msg = msglang([
	
	ntxt(0, u, u, s_court, function() {instance_create(640, 360, o_bjection, "Instances_ui")}),
	txt("You're wrong about something there, Kaguya.", KOTOHIME.SMUG, SPRITEPOS.MIDRIGHT, s_court),
	txt("Your \"lies\" bore no malign intent.", KOTOHIME.HAPPY),
	txt("Less than that, the image of \"Tsukiko\" was created to be able to avoid the rumors and hearsay of \"Kaguya\"; such things are lies themselves.", KOTOHIME.DISAPPOINTED, u, u, function() {music_set(mus.mokou)}),
	txt("By being able to circumvent ridiculous assumptions and expectations, you are able to express yourself with no burden.", KOTOHIME.HAPPY),
	txt("\"Man is most honest when he wears a mask\", or so.", KOTOHIME.SMUG),
	txt("...For a human, you have interesting philosophies.", KAGUYA2.CONFUSED, SPRITEPOS.MIDLEFT),
	txt("I can't imagine when such things would be relevant in your life...", KAGUYA2.GRIN),
	txt("Then again, I hardly understand you.", KAGUYA2.CONFUSED),
	txt("Still, you speak the truth.", KAGUYA2.HAPPY),
	txt("Then, isn't it-", KOTOHIME.HAPPY, SPRITEPOS.MIDRIGHT, s_court),
	ntxt(0, u, u, u, function() {instance_create(640, 360, o_bjection, "Instances_ui").image_index = 1}),
	txt("Yet, it is more than that history that I would be guilty of denying.", KAGUYA2.GRIN),
	txt("Kotohime, you must recall. There is something else about myself that \"Tsukiko\" could never have.", KAGUYA2.GRIN),
	txt("Y-yes, of course...", KOTOHIME.NERVOUS, SPRITEPOS.MIDRIGHT, s_court),
	txt("...Tell it to me.", KAGUYA2.HAPPY),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {
		c_evidencegen(5, txt_mortal, txt_immortal);
	};
}