function txt_liar() {
	
	msg = msglang([
	
	txt("Obviously!", u, u, u, function() {instance_create(640, 360, o_bjection)}),
	txt("You're wrong about something there, Kaguya.", KOTOHIME.SMUG),
	txt("Your \"lies\" bore no malign intent.", KOTOHIME.HAPPY),
	txt("Less than that, the image of \"Tsukiko\" was created to be able to avoid the rumors and hearsay of \"Kaguya\"; such things are lies themselves.", KOTOHIME.DISAPPOINTED, u, u, function() {music_set(mus.mokou)}),
	txt("By being able to circumvent ridiculous assumptions and expectations, you are able to express yourself with no burden.", KOTOHIME.HAPPY),
	txt("\"Man is most honest when he wears a mask\", or so.", KOTOHIME.SMUG),
	txt("...For a human, you have interesting philosophies.", KAGUYA2.NORMAL),
	txt("I can't imagine when such things would be relevant in your life...", KAGUYA2.NORMAL),
	txt("Then again, I hardly understand you.", KAGUYA2.NORMAL),
	txt("Still, you speak the truth.", KAGUYA2.NORMAL),
	txt("Then, isn't it-", KOTOHIME.HAPPY),
	txt("You fool!", u, u, u, function() {instance_create(640, 360, o_bjection)}),
	txt("Yet, it is more than that history that I would be guilty of denying.", KAGUYA2.NORMAL),
	txt("Kotohime, you must recall. There is something else about myself that \"Tsukiko\" could never have.", KAGUYA2.NORMAL),
	txt("Y-yes, of course...", KOTOHIME.NERVOUS),
	txt("...Tell it to me.", KAGUYA2.NORMAL),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {
		c_evidencegen(5, txt_mortal, txt_immortal);
	};
}