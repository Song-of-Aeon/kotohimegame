function txt_bye() {
	
	msg = msglang([
	
	txt("...", u, u, s_bamboo),
	txt("|c160160160In few words, Kotohime and Kaguya make the trek back to the Bamboo Forest of the Lost.", u, u, u, function() {music_set(mus.null)}),
	txt("|c160160160The sun is setting."),
	ntxt(0, KOTOHIME.HAPPY, SPRITEPOS.RIGHT),
	txt("Kotohime, this is far enough.", KAGUYA2.NORMAL, SPRITEPOS.MIDRIGHT),
	txt("I'll smooth things over with Eirin for you.", KAGUYA2.NORMAL, SPRITEPOS.MIDLEFT),
	txt("You can expect another job of delivery at the same time next month...", KAGUYA2.NORMAL),
	txt("But I imagine I'll see you again before then, as well.", KAGUYA2.NORMAL),
	txt("Inevitably.", KOTOHIME.HAPPY),
	txt("However, a princess' work is never done. I may not be at the bar as you arrive.", KOTOHIME.SMUG),
	txt("I see... perhaps I shall bring Tewi along for luck.", KAGUYA2.NORMAL),
	txt("Fare well, Kotohime. Until next time.", KAGUYA2.NORMAL),
	txt("Until then.", KOTOHIME.SMUG),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {textbox_create(txt_alone)};
}