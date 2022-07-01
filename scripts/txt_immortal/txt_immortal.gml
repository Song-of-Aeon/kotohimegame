function txt_immortal() {
	
	msg = msglang([
	
	ntxt(0, u, u, u, function() {instance_create(640, 360, o_bjection, "Instances_ui").image_index = 2}),
	txt("Of course. The effects of the Hourai Elixir. Irreversible, unbreakable immortality.", KOTOHIME.DISAPPOINTED, SPRITEPOS.MIDRIGHT, s_court, function() {music_set(mus.null)}),
	txt("That's correct.", KAGUYA2.NORMAL, SPRITEPOS.MIDLEFT),
	txt("I cannot age or be killed.", KAGUYA2.NORMAL),
	txt("I am exiled from all pure lands, the moon nor the Netherworld will accept me.", KAGUYA2.NORMAL),
	txt("It is impossible to me to lead a life parallel to a mortal's.", KAGUYA2.NORMAL),
	ntxt(0, u, u, u, function() {instance_create(640, 360, o_bjection, "Instances_ui")}),
	txt("And what of it?", KOTOHIME.HAPPY, SPRITEPOS.MIDRIGHT, s_court, function() {music_set(mus.kotohime)}),
	txt("To be undying... do you see it as a curse?", KOTOHIME.SMUG),
	txt("I do not.", KAGUYA2.NORMAL),
	txt("There are countless people who believe it to be one.", KOTOHIME.HAPPY, SPRITEPOS.MIDRIGHT, s_court),
	txt("People who do not think they can withstand centuries of life.", KOTOHIME.HAPPY),
	txt("Be that centuries of pain, or simple existence.", KOTOHIME.DISAPPOINTED),
	txt("Do you believe it to be a curse?", KAGUYA2.NORMAL),
	txt("...I am such a fool who does not.", KOTOHIME.SMUG, SPRITEPOS.MIDRIGHT, s_court),
	txt("However, humans also do not tend to like to die.", KOTOHIME.HAPPY),
	txt("Some make peace. Some do not.", KOTOHIME.HAPPY),
	txt("But all of them loathe certain deaths... the deaths of their loved ones.", KOTOHIME.DISAPPOINTED),
	txt("There is nobody who wants their truest love to die before them.", KOTOHIME.HAPPY),
	txt("Kaguya, you understand correctly. Your immortality is not a curse.", KOTOHIME.HAPPY),
	txt("For anyone's love to be invincible... it is a wish presumptuous to the point that few would begin such ideations.", KOTOHIME.SMUG),
	txt("Yet you live it. If you were to find love, your inheritance of the Hourai would only be celebrated.", KOTOHIME.SMUG),
	txt("...Kotohime, you...", KAGUYA2.NORMAL),
	ntxt(0, u, u, u, function() {instance_create(640, 360, o_bjection, "Instances_ui")}),
	txt("Oh, there's more where that came from.", KOTOHIME.WINK, SPRITEPOS.MIDRIGHT, s_court),
	txt("Unbound from your former biases! Armed with a life that would never leave another crying! The princess Kaguya bears yet one more pillar of aptitude toward this potential romance!", KOTOHIME.HAPPY),
	txt("If you have reason to abandon this venture after this, Kaguya, I will not stop you. Love ought to be to one's own discretion.", KOTOHIME.DISAPPOINTED),
	txt("But if it is for such feeble reasoning as \"I am unsuited\", I will not allow you to falter!", KOTOHIME.HAPPY),
	txt("The final reason you're perfect for this is...!", KOTOHIME.WINK),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {
		c_evidencegen(8, txt_totalfail, txt_closing);
	};
}