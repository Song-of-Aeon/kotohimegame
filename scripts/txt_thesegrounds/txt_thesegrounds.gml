function txt_thesegrounds() {
	
	msg = msglang([
	
	ntxt(0, u, u, u, function() {instance_create(640, 360, o_bjection, "Instances_ui").image_index = 2}),
	txt("It's this!", KOTOHIME.HAPPY, SPRITEPOS.MIDRIGHT, s_court, function() {music_set(mus.null)}),
	txt("Your perception of being a \"dangerous person to meet\"!", KOTOHIME.HAPPY, SPRITEPOS.MIDRIGHT, s_court, u, [se_17]),
	txt("The public has a pre-conceived notion of \"Princes Kaguya\".", KOTOHIME.DISAPPOINTED),
	txt("However, it would be clear to both Chiyurii and Elly that you are, in fact, very personable.", KOTOHIME.HAPPY),
	ntxt(0, u, u, u, function() {instance_create(640, 360, o_bjection, "Instances_ui").image_index = 1}),
	txt("It is perhaps that I have gained favor enough with them to surmount such assumptions, yes.", KAGUYA2.DISAPPOINTED, SPRITEPOS.MIDLEFT),
	txt("However, I did so through untruthworthy methods.", KAGUYA2.HAPPY),
	txt("In Gensokyo... no, all of society, a \"liar\" is worse to have in one's company than a \"dangerous person\".", KAGUYA2.GRIN),
	txt("Is that not true?", KAGUYA2.HAPPY),
	txt("Kaguya...", KOTOHIME.SOLEMN, SPRITEPOS.MIDRIGHT, s_court),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {
		textchoice_make([
			new choice("You're right.", function() {textbox_create(txt_truther, global.textcourt)}),
			new choice("You're wrong about something.", function() {textbox_create(txt_liar, global.textcourt)}),
		]);
	};
}