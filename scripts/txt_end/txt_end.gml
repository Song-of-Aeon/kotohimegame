function txt_end() {

	global.thecolor = 0xFFFFFF;
	c_additem(ITEMS.HIDE);
	msg = msglang([
	
	ntxt(0, u, u, u, function() {music_set(mus.null)}),
	
	txt("Life went on in the House of Eternity.", u, u, s_black, function() {textbox_set_type(global.textnvl)}),
	txt("Ever since that rainy night, Kaguya and Mokou seemed closer. Though neither of them mentioned it in front of me, it was clear that my plan had been a success."),
	txt("With that success came growth."),
	txt("Mokou came over a lot more, playing games, chatting, and helping out."),
	txt("Kana and Reisen had a bit more time to spend together, and they always looked happy."),
	
	txt("We were all happy..."),
	ptxt(),
	txt("Yet something was missing."),
	
	ntxt(0, u, u, u, function() {music_set(mus.flight)}),
	
	txt("Come on, come on...", REISEN.DEF, u, s_ke1, function() {textbox_set_type(global.textzpix)}),
	txt("You can do it, Reisen! I believe in you!", KAGUYA.DEF),
	txt("Are you sure about that? I still have all my health.", ME.DEF, u, s_ke2),
	txt("Not particularly. It's simply fun to say.", KAGUYA.DEF),
	txt("Real motivational.", REISEN.DEF),
	txt("*I* believe in you, Reisen!", KANA.DEF),
	txt("Thanks, Ka-- |w0020 |- ", REISEN.DEF),
	txt("Guh--!!", REISEN.DEF, u, s_ke3),
	txt("...And I win once again.", ME.DEF, u, s_ke4),
	
	ntxt(KANA.AWW, SPRITEPOS.LEFT),
	ntxt(REISEN.MAD, SPRITEPOS.CENTER),
	txt("Bravo, you two! Absolutely beautiful show of gaming skill!", KAGUYA.YAY, SPRITEPOS.RIGHT, s_eienteihall2, function() {music_set(mus.dancers5)}),
	txt("Sorry, Reisen...", KANA.NEUTRAL),
	txt("Whatever. She made the whole game, of course she's really good at it.", REISEN.UGGH),
	
	ntxt(0, KANA.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(0, KAGUYA.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(0, REISEN.DEF, SPRITEPOS.HIDDEN),
	
	txt("...Little Rabbit, where are you going?", KAGUYA.NEUTRAL, SPRITEPOS.MIDRIGHT),
	txt("Back home. My parents are gonna be *really* mad if I stay much longer.", ME.DEF, SPRITEPOS.LEFT),
	txt("You sure? It's barely evening.", KANA.NEUTRAL, SPRITEPOS.CENTER),
	txt("Yeah. But they're getting stricter by the day. I'd rather not take chances.", ME.NEUTRAL),
	txt("Ah, come on. I haven't been able to beat you even once tonight!", REISEN.UGGH, SPRITEPOS.RIGHT),
	txt("Sorry, guess I'm just too good.", ME.HEHE),
	txt("Next time, I'm gonna beat you for real, okay?", REISEN.YAY),
	txt("No.", ME.WINKY),
	txt("...", REISEN.UGGH),
	
	txt("See you later!", ME.YAY),
	txt("Until next we meet, Little Rabbit.", KAGUYA.FUFUFU),
	txt("Bye.", KANA.NEUTRAL),
	//footstep sounds
	ntxt(0, KANA.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(0, KAGUYA.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(0, REISEN.DEF, SPRITEPOS.HIDDEN),
	ntxt(0, ME.NEUTRAL, SPRITEPOS.HIDDEN),
	
	ntxt(0033, u, u, s_eienteihall3, function() {music_set(mus.wind1)}),
	
	ntxt(0108, ME.NEUTRAL, SPRITEPOS.LEFT, u, function() {audio_play_sound(snd_walking_in_a_house2, 0, false)}),
	
	txt("Wait up!", KANA.DEF),
	txt("Hey... why not stay just a little longer?", KANA.NEUTRAL, SPRITEPOS.RIGHT),
	txt("I can't.", ME.DISTANT),
	txt("Yes, you can.", KANA.AWW),
	txt("Please, Kana...", ME.DISAPOINT),
	txt("...", KANA.DISTANT),
	txt("Fine.", KANA.DISTANT),
	txt("Goodnight.", KANA.AWW),
	txt("'Night.", ME.DISTANT),
	
	
	ptxt(),
	txt("The bamboo forest was so quiet tonight.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	
//	txt("It's nothing.", ME.DISTANT),
	
	
//	txt("I'm really happy for you.", ME.YAY),
	
	
	
	
	
	
	txt("Hey, Little Rabbit.", MOKOU.NEUTRAL),
	txt("Hm?", ME.NEUTRAL),
	txt("Life is short. Please, treasure it.", MOKOU.DEF),
	txt("Okay?", MOKOU.YAY),
	txt("...", ME.DISAPOINT),
	txt("I'll try.", ME.TINYSMIRK),
	txt("...Good.", MOKOU.DEF),

	ntxt(0, ME.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(0, MOKOU.NEUTRAL, SPRITEPOS.HIDDEN),
	
	
	
	
	
	
	
	//txt("The world kept turning, and I was frozen."),
	
	
	//
	
	
	
	/*
	ptxt(),
	txt("Ever since I first discovered the House of Eternity, I could see a glimmer of light through a door that was never meant to open.", u, u, s_black, function() {textbox_set_type(global.textnvl)}),
	txt("And I wanted nothing more than to break that door down."),
	txt("But years later, it was still there."),
	txt("Something invisible was stopping me from leaving."),
	
	*/
	
	
	
	
	//txt("I brushed past several cobwebs on my way. Each strand stuck to my hands, whispered in my ear, asked me to join them. It took a lot more effort than usual to reject them."),
	//txt("The dust
	
	
	
	
	//txt("Dozens of items from Muenzuka littered the floor."),
	
	//txt("Dolls with missing limbs, books with half the pages ripped out, toys with the paint fallen."),
	
	
	//she goes past her bed; its all broken and hasnt been slept on in years
	
	//kotohime's all like OH MY PARENTS ARENT HOME AND I DONT WANNA INTERACT WITH THEM SO LETS GO STRAIGHT TO BED
	
	//txt("My bed sat in the corner.", u, u, s_homebed),
	//txt("Part of the ceiling had collapsed on it a while ago, but I hadn't slept in the thing in years, so I never bothered to clean it up."),
	//txt("My real destination was through a door right next to this bed.", u, u, s_closet),

	
	//CREEEAK sound effect
	//txt("I walked through the door and entered the Fire Room."),
	//txt("A tiny area, barely bigger than a closet. Nothing occupied this space, except a dresser, a hearth, and a futon."),
	//txt("...This was where Kana used to stay."),


	//txt("With only muscle memory, I took a few pieces of wood out of the dresser, and dropped them near the hearth."),
	//txt("But then something on the top of the dresser caught my eye."),
	//txt("An old straw sun hat, sitting clear as day.", u, u, s_hat),
	//txt("Each time I'd come here, my eyes glossed over it. But this time, it practically glowed."),
	//txt("I took it in my hand and sat next to the fire.", u, u, s_closet),
	
	
	//txt("As the first sparks shone, my whole body felt like it was being pricked-- I had finally noticed the cold. Even in Autumn, the coming night was cold enough to kill."),
	//fire lighting sounds
	//txt("Finally... warmth.", u, u, s_fireplace),
	//txt("I laid into the futon and closed my eyes. This floor wasn't too comfortable, but I had gotten used to it."),
	//txt("The crackle of the fire was comforting, at least. It was all I had for fun at the moment-- all of my collectibles laid in another room, far from the fire."),
	//txt("I could bring something from over there, of course... but I was just exhausted after such a long day."),
	
	//campfire "music" of course
	
	//she opens the closet where kana lived for a few months, and takes out her hat
	//
	
	
	
	//txt("She said it would look good on me, didn't she?"),
	//txt("But... I never put it on. It just became another item in my collection."),
	//txt("For some reason, that thought hurt."),
	//txt("...But I couldn't wear it. This was Kana's, not mine."),
	//txt("And I still wasn't sure whether it was truly forgotten."),
	
	
	
	
	
	
	//txt("What of Little Rabbit's parents? And the servants?", KME.NEUTRAL),
	//txt("Her \"parents\"...", KANA.DISTANT),
	//txt("Back then, I never saw them once. There were no \"servants\" either.", KANA.DISTANT),
	//txt("But... how?", KME.AWW),
	//txt("Did they simply not live here?", KME.NEUTRAL),
	//txt("No, that wasn't it.", KANA.DISTANT),
	//txt("I think... they were kinda like me. Or, like what I was to my mother.", KANA.DISTANT),
	//txt("The monster in her closet.", KANA.SADSMILE),
	//txt("...", KME.WAAH),
	
	
	
	
	
	//ptxt(),	
	//txt("To the people of the House of Eternity--", u, u, s_note, function() {textbox_set_type(global.textnvl)}),
	//ptxt(),
	//txt("By the time you read this, I am no longer in Gensokyo."),
	//txt("Right now I ask you... please don't try to find me."),
	//txt("Maybe this is a shock to you, but I've been... tied down, for most of my life."),
	//txt("You have too, each and every one of you. But you've taken strides to move forward, and break your chains."),
	//txt("And now, I must do the same."),
	//ptxt(),
	//txt("I need to do this on my own. Fly away from my cage, find happiness in new places, and relish the wonders of this impure Earth."),
	//txt("Thank you for everything you have done for me. I'm sorry that I couldn't stay with you."),
	//ptxt(),
	//txt("Love, |w0030 # The Little Rabbit Princess),
	
	
	
	
//you know how when you go to a shop room the shopkeeper says somethin
//usually "wass good" or "HEY EVERY    !"
//thats a nonadvancable textbox
//textbox_create() takes three arguments
//so far i only use one, you only use two, but the third governs manual advancability
//textscript, textbox style, advancable
//its true or false (default true)
	
	
	
	//kana and kaguya dont have as much time for kotohime anymore
	
	//kotohime goes home and reminisces
	//even though it is eerily ruined
	//then she sits in front of the fireplace to go to sleep (it is cold enough that you could freeze to death)
	//she looks at kana's hat and goes "hey i remember this"
	//and then goes big sad and tries to burn it in the fire
	//and the hat burns to a crisp, but then the fire gets on a little piece of carpet
	//and then slowly whole rest of the house catches fire
	//kotohime escapes and watches the destruction
	//and cries
	
	//POV switch to kaguya
	//tewi reports seeing lots of smoke in a specific place
	//and kana's all like OH THATS OUR FRIENDS HOUSE
	//so kaguya and kana go check up on kotohime
	//(kaguya has not been to kotohime's place)
	//the house is completely intact
	//eerily ruined still
	//but kana is all like "its just like how i remember it"
	//then kana finds her hat in a little alcove and theres a note under it
	//it basically says "sorry im leaving now love you all goodbye"
	//kaguya is super sad & worried about kotohime
	//kana puts on the hat and is like "...it's fine. i think she'll be okay."
	//then look up at the sky with the moon in the day
	//THE END
	
	
	
	
	

	//ntxt(11, u, u, u, function() {audio_play_sound(snd_firebig1, 0, false)}),
	
	
	
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {while true {}};
}





