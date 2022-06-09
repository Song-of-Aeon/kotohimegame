function txt_gmod() {
	
	msg = msglang([
	
	txt("The middle one. \"Garry's Mod\".", KAGUYA.NORMAL, SPRITEPOS.CENTER, s_black),
	txt("Is that how you say it? I can't read any of this western text.", KOTOHIME.NORMAL, SPRITEPOS.MIDLEFT),
	txt("I don't quite know. I only have a few basic study books of experience.", KAGUYA.NORMAL, SPRITEPOS.MIDRIGHT),
	txt("Hm. I hope we can read enough to play.", KOTOHIME.NORMAL),
	txt("..."),
	txt("Wahahahaha!"),
	txt("Haha!"),
	txt("Kotohime, you just-#That poor man! That was a mountain of explosives!"),
	txt("Kyaha, we can always make more. What, did you wanna take his place?"),
	txt("No, I don't think I do. Would you mind being on your way?"),
	txt("|aAh!|aDang. That can't stop me! In this world, I've got the same convenient body you do!", u, u, u, u, [se_null, se_null]),
	txt("If I pick up the crossbow here..."),
	txt("There! Got you!"),
	txt("You misunderstand. An immortal body works only to your disadvantage."),
	txt("Your disposition is yet unsuited to it."),
	txt("What do you... |a|w0020no |a|w0020way! You set the whole place to blow, even though you were inside?", u, u, u, u, [se_null, se_null]),
	txt("Don't you see?"),
	txt("When death becomes loses its permanence, it becomes symbiotic."),
	txt("A suicide attack is just using a tool in one's arsenal."),
	txt("How pragmatic."),
	txt("Kotohime, I'm surprised you can take this so seriously."),
	txt("Do you not have your \"princessly duties\" this eve?"),
	txt("Alas, the eve has already given way to morrow."),
	txt("So it has..."),
	txt("Especially with that, will you be staying much longer, Kotohime?"),
	txt("No, I ought to not."),
	txt("I'm sure to have mountains of work upon my unexpected return."),
	txt("Peoples' campaigns, marriage proposals..."),
	txt("Would you believe it? This era's Miare doesn't see fit to give me an entry in the Gensokyo Chronicle!"),
	txt("I even wrote it for her! I personally deliver a copy every week, but I'm always turned away by the servants."),
	txt("Troublesome, surely..."),
	txt("Besides that, marriage proposals?"),
	txt("Yes, yes. None of them are even close to worthy."),
	txt("Many of them from the people that seem to give me sneers on the street, even."),
	txt("My landlord even frequents the list! He's old, and he always looks like he wants something from me."),
	txt("Ah..."),
	txt("Do you bother reading past the sender's name, sometimes?"),
	txt("Not even once."),
	txt("I would recommend trying, if only for the humor of it."),
	txt("And there may be some... feelings... that might be worth understanding, even if you cannot reciprocate."),
	txt("Hmmm? Sounds wise-ish."),
	txt("Ah, of course you'd still have it in you, Kaguya, ya old player."),
	txt("I bet you're still getting courted on the daily."),
	txt("Oh, not at all. The forest does wonders for keeping out the riff-raff, disregarding that assassin of mine."),
	txt("I don't suppose I've heard anything of the sort since-"),
	txt("No, there was one bold girl during my stay on the moon after leaving Earth."),
	txt("But she wasn't to a princess' standards."),
	txt("I wouldn't know. Once word got out, she was punished severely. I never saw her face."),
	txt("Ouch."),
	txt("The Lunar Capital is rigid in its ways."),
	txt("..."),
	txt(""),
	txt(""),
	txt(""),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {textbox_create(txt_gmod2)};
}

function txt_gmod2() {
	
	msg = msglang([
	
	txt(""),
	
	],[
	
	txt(""),
	
	])
	
	endevent = c_null;
}