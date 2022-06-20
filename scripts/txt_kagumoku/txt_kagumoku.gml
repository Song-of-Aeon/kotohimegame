function txt_begin() {

	global.thecolor = 0xFFFFFF;

	msg = msglang([
	
	ntxt(0, u, u, u, function() {music_set(mus.null)}),
	
	txt("Time goes by fast, doesn't it?", u, u, s_black, function() {textbox_set_type(global.textnvl)}),
	txt("At least, for some of us. We think we have all of eternity ahead of us, and that conviction results in lethargy."),
	txt("And by the time one realizes how much time they've wasted, it's too late."),
	txt("But if they realize it early, their life becomes dominated by the fear of death."),
	txt("Is that really a way to live?"),
	ptxt(),
	txt("This is a very biased view, of course. Only a regular human would think something like this."),
	txt("Kana Anaberal may die from an accident or a particularly nasty spell, but she does not age."),
	txt("The Hourai immortals-- Fujiwara no Mokou and Houraisan Kaguya-- really do have an eternity ahead of them."),
	txt("To be honest... I can't tell if I envy or pity them."),
	
	txt("Before I knew it, years had passed.", u, u, s_crescent),
	txt("The House of Eternity's spell had been revoked, due to a series of encounters that convinced Kaguya to move forward."),
	txt("Its residents would leave the Bamboo Forest quite often, interacting with the humans and youkai more often. At some point, Kaguya even began to consider herself human."),
	txt("Kana adjusted well to life there, to the point she rarely ever left."),
	txt("I visited them far more often, much to the behest of my parents."),
	
	txt("Though, one thing had stayed mostly the same..."),
	
	//boom punchy impact frame and big BOOM fire sound effect
	txt("KAGUYAAAAA!", MOKOU.DEF, u, u, function() {textbox_set_type(global.textdefault)}),
	txt("COME BACK HERE, YOU COWARD!", MOKOU.DEF),
	
	
	txt("A scream from above the trees rang in my ears.", u, u, s_bambooday, function() {textbox_set_type(global.textnvl)}),
	txt("Two figures flew suspended high in the air, exchanging verbal blows.", u, u, u, function() {music_set(mus.flight)}),
	txt("Kaguya and Mokou had been flinging their heaviest attacks at each other, but for some reason Kaguya had flown far out of Mokou's reach."),
	txt("It was almost surreal seeing the rain of fire and magic energy stop for even a few seconds."),
	ntxt(0, KANA.NEUTRAL, SPRITEPOS.RIGHT),
	ntxt(0, REISEN.DEF, SPRITEPOS.CENTER),
	ntxt(0, ME.NEUTRAL, SPRITEPOS.LEFT),
	txt("Kana, Reisen, and I stood on the ground, watching the spectacle in the sky."),
	
	ntxt(0, KANA.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(0, ME.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(0, REISEN.DEF, SPRITEPOS.HIDDEN),
	
	txt("Oh Mokou, I can't truly participate yet. Your attacks weren't *exciting* enough.", KAGUYA.FUFUFU, SPRITEPOS.LEFT, s_bambooday2),
	txt("What the hell are you talking about!?", MOKOU.HMPH, SPRITEPOS.RIGHT),
	txt("I've kicked you so hard your whole body went flying through three dozen trees, and thrown seventy-two fireballs at you!", MOKOU.MAD),
	txt("Oh yes, those were very violent and painful. But I haven't been seeing the fun yet~~!", KAGUYA.FUFUFU),
	txt("You insufferable piece of...", MOKOU.HMPH),
	txt("The *fun* is in burning YOUR smug little face off!", MOKOU.REALLYMAD),
	txt("And?", KAGUYA.YAY),
	txt("Then skewering you with a stray bamboo shoot and ripping off your limbs one by one!", MOKOU.REALLYMAD),
	txt("And?", KAGUYA.YAY),
	txt("Then clawing out your esophagus and forcefeeding it to you,", MOKOU.REALLYMAD),
	txt("Chopping your skull clean in two", MOKOU.REALLYMAD),
	txt("And rearranging your body until your teeth are in your hands and your brains are in your lungs,", MOKOU.REALLYMAD),
	txt("As we dive into a pit of lava on the blazing surface of Venus!", MOKOU.REALLYMAD),
	txt("Ah-ha, that's more like it! I'm really feeling the fire now!", KAGUYA.COCKY),
	txt("Come to me, archenemy!", KAGUYA.COCKY),
	txt("Gladly!", MOKOU.COCKY),
	
	//BOOM BAM PAWOOSHY
	//PICHUUN SHSHK KUWAAABAM
	//BUREHM PSSSSHHHHHHH-BRUH
	
	txt("How does that make you feel!?", MOKOU.COCKY),
	//haha baka writing
	//i dont feel like swearing so uguu beans
	txt("Splendid, thank you!", KAGUYA.YAY),
	txt("I see that you favor more focused, high-power attacks over large blasts."),
	txt("It's an admirable effort, but you can't expect to hit me more than--"),
	//BOOM PWAPASH PIQUIUUUM
	//pichuun and resurect sound
	
	txt("Oh, stop talking and kill me already!", MOKOU.COCKY),
	txt("...", KAGUYA.MAD),
	txt("Gladly.", KAGUYA.MAD),
	
	ntxt(0, KANA.NEUTRAL, SPRITEPOS.RIGHT, s_bambooday),
	ntxt(0, REISEN.DEF, SPRITEPOS.CENTER),
	ntxt(40, ME.YAY, SPRITEPOS.LEFT),
	
	txt("This is so fun!", ME.YAY),
	txt("I wish I could see this more often!", ME.YAY),
	txt("Hey Reisen, what are they gonna do next?", ME.YAY),	
	txt("My guess is they'll start fighting close-quarters and crashland into the ground somewhere.", REISEN.DEF),
	txt("So let's just... make sure we're out of their way when that happens.", REISEN.UGGH),
	txt("Where do you think they're gonna land?", KANA.BRUH),
	txt("Oh, probably a couple meters to our left.", REISEN.DEF),
		
	ntxt(0, KANA.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(0, ME.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(0, REISEN.DEF, SPRITEPOS.HIDDEN),
	
	txt("Hey, you're getting better at this whole punching thing!", MOKOU.COCKY),
	txt("You almost made me flinch.", MOKOU.SMUG),
	txt("I'll take that as the highest possible compliment.", KAGUYA.FUFUFU),
	
	///boom
	//PUNCHYPUNCH WAPOOSH
	//KIK KIIK
	//WHEEEEEEOOOW
	//BWOOOJGODAOJD
	
	
	txt("...|w0099 ", u, u , s_crater)
	ntxt(0, ME.WHAA, SPRITEPOS.LEFT),
	ntxt(0, REISEN.UGGH, SPRITEPOS.CENTER),
	ntxt(0050, KANA.SCARED, SPRITEPOS.RIGHT),
	txt("Are you absolutely sure we should be here!?", KANA.SCARED, u, bambooday),
	txt("...No.", REISEN.UGGH),
	txt("I'm only risking my life here to make sure they don't do anything stupid.", REISEN.UGGH),
	txt("Like when they burned down half the forest?", KANA.BRUH),
	txt("Worse.", REISEN.UGGH),
	ntxt(0, KANA.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(0, ME.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(0, REISEN.DEF, SPRITEPOS.HIDDEN),
	
	txt("You absolutely--|w0020 |- ", KAGUYA.MAD, SPRITEPOS.MIDRIGHT, s_crater),
	ntxt(0, KAGUYA.DEF, SPRITEPOS.HIDDEN),
	txt("Smug little--|w0020 |- ", MOKOU.MAD, SPRITEPOS.MIDLEFT),
	ntxt(0, MOKOU.DEF, SPRITEPOS.HIDDEN),
	txt("Brutish--|w0020 |- ", KAGUYA.MAD, SPRITEPOS.MIDRIGHT),
	ntxt(0, KAGUYA.DEF, SPRITEPOS.HIDDEN),
	txt("Cowardly--|w0020 |- ", MOKOU.MAD, SPRITEPOS.MIDLEFT),
	ntxt(0037, MOKOU.DEF, SPRITEPOS.HIDDEN),
	ntxt(0, KAGUYA.MADEARTH, SPRITEPOS.MIDRIGHT),
	ntxt(200, MOKOU.MADMOON, SPRITEPOS.MIDLEFT),
	//BOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOM
	ntxt(0, KAGUYA.DEF, SPRITEPOS.HIDDEN),
	ntxt(37, MOKOU.DEF, SPRITEPOS.HIDDEN),
	
	ntxt(0, KANA.NEUTRAL, SPRITEPOS.RIGHT, s_bambooday),
	ntxt(0, REISEN.DEF, SPRITEPOS.CENTER),
	ntxt(40, ME.POG, SPRITEPOS.LEFT),
	
	txt("...", KANA.SCARED),
	txt("I think we should go.", KANA.SCARED),
	txt("Yeah. They won't get tired for a while.", REISEN.DEF),
	txt("And *we* still have fifty-six boxes of medicine to deliver by sundown.", REISEN.UGGH),
	//fade out
	
	ntxt(0, KANA.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(0, ME.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(0, REISEN.DEF, SPRITEPOS.HIDDEN),
	
	txt("Later...", u, u, s_crescent2, ),
	txt("And my Rook takes your Gold General...", REISEN.YAY, SPRITEPOS.RIGHT, u_eienteihall2),
	txt("How the--", KANA.SCARED, SPRITEPOS.CENTER),
	txt("Oh, I see.", KANA.AWW),
	txt("Wow, is she actually gonna beat you this time?", ME.YAY, SPRITEPOS.LEFT),
	txt("She is absolutely not.", KANA.MAD),
	txt("Because I have both of your Queens!", KANA.COCKY),
	txt("How do ya like THIS!?", KANA.COCKY),
	txt("...", REISEN.WOAH),
	
	txt("After all our work was done, the three of us took turns playing Chesshogi.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	txt("It was great fun like always, but something laid on my mind heavily that night."),
	txt("I had suspected it for years now, but what I saw that day pushed it to the forefront."),
	
	txt("Hey... I think Kaguya and Mokou secretly like each other.", ME.DEF),
	txt("...Huh?", KANA.BRUH),
	txt("What kinda nonsense is that?", REISEN.CONFUZZLED),
	txt("I'm serious, you two!", ME.POGQMARK),
	txt("There's just something with them.", ME.HEHE),
	txt("Something *between* them.", ME.HEHE),
	txt("I think your romance sensors need some tuning.", KANA.BRUH),
	txt("They've been nothing but enemies for hundreds of years.", KANA.BRUH),	
	txt("Please, just trust me on this one!", ME.POG),
	txt("If we just set them up together, with the right situations, they might just become a couple!", ME.WINKYHEART),
	txt("You are out of your mind.", REISEN.UGGH),
	txt("Just because it worked for Kana and I doesn't mean it will work for people who murder each other weekly.", REISEN.DEF),
	txt("Sure, it'd be nice if they did something else for a change, but there's no way that could happen in any of our lifetimes.", REISEN.DEF),	
	//txt("This is Gensokyo, my dear. If you can think of it, it's possible.", ME.HEHE),
	ntxt(0, KANA.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(0, ME.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(0, REISEN.DEF, SPRITEPOS.HIDDEN),
	txt("HEY EVERYONE, I'M HOOOOME!!!", KAGUYA.YAY, SPRITEPOS.CENTER, s_eienteihall3),
	ntxt(0, KAGUYA.YAY, SPRITEPOS.HIDDEN),	
	ntxt(0, ME.POG, SPRITEPOS.LEFT),
	ntxt(0, KANA.NEUTRAL, SPRITEPOS.CENTER),
	txt("Jeez, does she have to be so loud?", REISEN.UGGH, SPRITEPOS.RIGHT, s_eienteihall2),
	txt("Sorry, I must've rubbed off on her.", ME.DEF),
	txt("You don't look sorry.", REISEN.UGGH),
	txt("I don't.", ME.SMUG),
	ntxt(0, KANA.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(0, ME.NEUTRAL, SPRITEPOS.HIDDEN),
	txt("Welcome back, Princess. How was your \"afternoon stroll\"?", REISEN.DEF),
	txt("...", KAGUYA.AWW),
	txt("To be frank... sub-par.", KAGUYA.AWW),
	txt("Mokou and I threw practically the same insults and the same attacks as our last fight.", KAGUYA.AWW),
	txt("I'd guessed it'd take at least two more millennia for our death battles to become boring...", KAGUYA.NEUTRAL),
	txt("But it seems our spark has been fading in recent months.", KAGUYA.AWW),
	txt("I just wish we did something else for a change.", KAGUYA.SAD),
	txt("???", REISEN.WOAH),
	
	txt("No matter.", KAGUYA.NEUTRAL),
	txt("Dying hundreds of times has tired me greatly.", KAGUYA.DEF),
	txt("I must snooze.", KAGUYA.DEF),
	
	ntxt(0, KAGUYA.DEF, SPRITEPOS.HIDDEN),
	
	
	
	
	
	
	
	
	
	
	
	
	
	/*
	txt("Ever since I first discovered the House of Eternity, I thought it was the key to a door that was never meant to open."),
	txt("And I wanted nothing more than to break that door down."),
	txt("But now, everything had changed..."),
	txt("...Except for me.",
	//maybe use this opening monologue for the epilogue instead
	*/
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {while true {}};
}




