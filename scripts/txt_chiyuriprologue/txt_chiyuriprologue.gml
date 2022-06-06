function txt_chiyuriprologue() {
	
	msg = msglang([
	
	txt("05/10/21XX 02:00#SUPER-TOKYO#COMMON APARTMENT COMPLEX", u, u, s_black, function() {ISAAC.state = c_null}),
	txt("THREE YEARS SINCE YUMEMI OKAZAKI#WAS SUSPENDED FROM ACADEMIA"),
	
	txt("*knock, knock*", u, u, s_chiyuriintro1b),
	txt("Yeah, what's up?", CHIYURI.NOTHING),
	txt("Chiyuri! Hi!", YUMEMI.NOTHING, u, s_chiyuriintro2b),
	txt("Yo.#What's with all the junk?", CHIYURI.NOTHING),
	txt("Yeah, so, like...#You wanna hang out?", YUMEMI.NOTHING),
	txt("It's two in the morning.", CHIYURI.NOTHING),
	txt("And look at you, just gaming the night away!", YUMEMI.NOTHING),
	txt("You should take a walk.#We should take a walk.#It's good for you.#Fresh air.", YUMEMI.NOTHING),
	txt("Okay whatever.", CHIYURI.NOTHING),
	
	txt("The two of them left the apartments,#and took a calm, silent stroll#through the night.", u, u, s_black),
	txt("Chiyuri followed Yumemi's lead,#and soon realized where she was being led."),
	txt("However, she didn't say anything yet."),
	
	txt("Wow! What a coincidence!#We're right by where the university#stores the Probability Space Hypervessel!", YUMEMI.NOTHING, u, s_chiyuriintro3b),
	txt("You know, that reminds me-", YUMEMI.NOTHING),
	txt("Godddddd okayyyyyyyy#just gimme a second to grab some snacks first.", CHIYURI.NOTHING),
	txt("Yay!", YUMEMI.NOTHING),
	txt("Such deductive skill is to be expected#of a former student of mine.", YUMEMI.NOTHING),
	txt("And you know, this time I have a plan!#I think we'll really be able to#connect with the locals!#An intercultural exchange of technologies!", YUMEMI.NOTHING),
	txt("Gensokyo, here we come!", YUMEMI.NOTHING),
	txt("Although by that point,#Chiyuri was already long-gone.", u, u, s_black),
	txt("Just a few minutes later..."),
	
	txt("Alright, I'm back.", CHIYURI.NOTHING, u, s_chiyuriintro4b),
	txt("Welcome back!!#Did you get me anything?", YUMEMI.NOTHING),
	txt("No.", CHIYURI.NOTHING),
	txt("O;_O", YUMEMI.NOTHING),
	txt("...It's okay.#I'll eat while we're there.", YUMEMI.NOTHING),
	txt("Anyway! Chiyuri!#Are you ready to explore the#incredible world of magic?", YUMEMI.NOTHING),
	txt("Yeah.", CHIYURI.NOTHING),
	txt("I said ARE YOU READY!?", YUMEMI.NOTHING),
	txt("...", CHIYURI.NOTHING),
	txt("|l3.0YEAH|l |l2.0YEAH|l YEAH", YUMEMI.NOTHING, u, u, function() {c_screenshake(5, 60)}),
	txt("THAT'S WHAT I WANNA HEAR!#LET'S KICK IT!", YUMEMI.NOTHING),
	
	],[
	
	txt(""),
	
	])
	
	//audio_sound_get_track_position()
	//audio_sound_set_track_position()
	
	endevent = function(){ISAAC.state = st_standard; music_set(mus.thurs1)};
}