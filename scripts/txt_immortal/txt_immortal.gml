function txt_immortal() {
	
	msg = msglang([
	
	txt("Take that!"),
	txt("Of course. The hourai elixir. Irreversible, unbreakable immortality."),
	txt("That's correct."),
	txt("I cannot age or be killed."),
	txt("I am exiled from all pure lands, the moon nor the Netherworld will accept me."),
	txt("It is impossible to me to lead a life parallel to a mortal's."),
	txt("Obviously!"),
	txt("And what of it?"),
	txt("To be undying... do you see it as a curse?"),
	txt("I do not."),
	txt("There are countless people who believe it to be one."),
	txt("People who do not think they can withstand centuries of life."),
	txt("Be that centuries of pain, or simple existence."),
	txt("Do you believe it to be a curse?"),
	txt("...I am such a fool who does not."),
	txt("However, humans also do not tend to like to die."),
	txt("Some make peace. Some do not."),
	txt("But all of them loathe certain deaths... the deaths of their loved ones."),
	txt("There is nobody who wants their truest love to die before them."),
	txt("Kaguya, you understand correctly. Your immortality is not a curse."),
	txt("For anyone's love to be invincible... it is such a presumptuous wish that few would have such ideations."),
	txt("Yet you live it. If you were to find love, your inheritance of the Hourai would only be celebrated."),
	txt("...Kotohime, you..."),
	txt("Obviously!"),
	txt("Oh, there's more where that came from."),
	txt("Unbound from your former biases! Armed with a life that would never leave another crying! The princess Kaguya bears yet one more pillar of aptitude toward this potential romance!"),
	txt("If you have reason to abandon this venture after this, Kaguya, I will not stop you. Love ought to be to one's own discretion."),
	txt("But if it is for such feeble reasoning as \"I am unsuited\", I will not allow you to falter!"),
	txt("The final reason you're perfect for this is...!"),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {
		textchoice_make([
			new choice("police badge", textbox_create(txt_totalfail)),
			new choice("eientei", textbox_create(txt_totalfail)),
			new choice("imperishable night incident", textbox_create(txt_totalfail)),
			new choice("the tale of the bamboo-cutter", textbox_create(txt_totalfail)),
			new choice("impossible requests", textbox_create(txt_totalfail)),
			new choice("hourai elixir", textbox_create(txt_totalfail)),
			new choice("kotohime", textbox_create(txt_totalfail)),
			new choice("tsukiko", textbox_create(txt_closing)),
			new choice("elly", textbox_create(txt_totalfail)),
		]);
	};
}