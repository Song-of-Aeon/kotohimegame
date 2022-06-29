function txt_thesegrounds() {
	
	msg = msglang([
	
	txt("Take that!"),
	txt("It's this!", KOTOHIME.HAPPY),
	txt("Your perception of being a \"dangerous person to meet\"!", KOTOHIME.HAPPY, u, u, u, [se_17]),
	txt("The public has a pre-conceived notion of \"Princes Kaguya\".", KOTOHIME.DISAPPOINTED),
	txt("However, it would be clear to both Chiyurii and Elly that you are, in fact, very personable.", KOTOHIME.HAPPY),
	txt("You fool!"),
	txt("It is perhaps that I have gained favor enough with them to surmount such assumptions, yes."),
	txt("However, I did so through untruthworthy methods."),
	txt("In Gensokyo... no, all of society, a \"liar\" is worse to have in one's company than a \"dangerous person\"."),
	txt("Is that not true?"),
	txt("Kaguya...", KOTOHIME.SOLEMN),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {
		textchoice_make([
			new choice("You're right.", textbox_create(txt_truther)),
			new choice("You're wrong about something.", textbox_create(txt_liar)),
		]);
	};
}