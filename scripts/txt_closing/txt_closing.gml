function txt_closing() {
	
	msg = msglang([
	
	txt("Take that!"),
	txt("...You remember, don't you, Kaguya?", KOTOHIME.HAPPY),
	txt("Elly was clearly in a slump.", KOTOHIME.DISAPPOINTED),
	txt("She didn't feel like she belonged anywhere.", KOTOHIME.DISAPPOINTED),
	txt("...Yes, I had noticed."),
	txt("She is unsuited to the modern ways of Gensokyo, and doesn't have any notable social standing.", KOTOHIME.THINKING),
	txt("I do not resent her for it."),
	txt("Elly is wise and skilled, but she's been lost ever since she lost her last gig."),
	txt("I imagine that as a wandering reaper, it's difficult to make connections."),
	txt("Of course... of course.", KOTOHIME.THINKING),
	txt("As a reaper...", KOTOHIME.SMUG),
	txt("!#You intend to say-"),
	txt("Yes!", KOTOHIME.HAPPY),
	txt("Kaguya! You are a unique being that is perfectly suited to companionship of our now-mutual friend Elly!", KOTOHIME.HAPPY),
	txt("If she is of interest to you...", KOTOHIME.THINKING),
	txt("...She is a fairly striking woman."),
	txt("Then I will not have the great Kaguya-hime in trepidation.", KOTOHIME.LMAO),
	txt("Make her yours! Make yourself hers! Even if it is but a blip of a blip amidst the storm of eternity to you, you can provide this woman a companionship she would never regret!", KOTOHIME.SMUG),
	txt("And if it is interest to you at all, do not let it fade. Take one more name with you, one more understanding of life emblazoned upon your past, as you venture into the unforgiving black abyss of entropy!", KOTOHIME.HAPPY),
	txt("I am fine not being reminded of that, thank you."),
	txt("...I'm sorry. I simply mean to say that, Kaguya...", KOTOHIME.DISAPPOINTED),
	txt("Your life is EVERYTHING. You serve GREAT purpose.", KOTOHIME.HAPPY),
	txt("You should trust yourself,|a|w0040 |fNOW!", KOTOHIME.WINK, u, u, u, [se_NOW], [function() {c_flash(global.surfaces.HUD, 60, c_white)}]),
	txt("And give somebody else a piece of that beauty, and brilliance, that exists in you so you can live inside this incredible blue bubble.", KOTOHIME.SMUG),
	txt("Because you know what I'm here for! To worship you! Trust yourself!", KOTOHIME.HAPPY),
	txt("I mean that with a hundred percent, with a thousand percent!", KOTOHIME.SMUG),
	
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {textbox_create(txt_standards)};
}