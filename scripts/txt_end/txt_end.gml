function txt_end() {

	global.thecolor = 0xFFFFFF;
	c_additem(ITEMS.HIDE);
	msg = msglang([
	
	ntxt(0, u, u, u, function() {music_set(mus.null)}),
	
	ptxt(),
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
	txt("Guh--!!", REISEN.DEF, u, s_ke4),
	txt("And I win once again.", ME.DEF),
	
	ntxt(0, KANA.AWW, SPRITEPOS.LEFT),
	ntxt(0, REISEN.MAD, SPRITEPOS.CENTER),
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
	ntxt(0, ME.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(0, KANA.NEUTRAL, SPRITEPOS.HIDDEN),
	
	
	ptxt(),
	txt("The bamboo forest was so quiet tonight.", u, u, s_bambooevening, function() {textbox_set_type(global.textnvl)}),
	txt("It seemed as if the fairies had stopped coming out. Or, maybe I just wasn't noticing them."),

//	txt("It's nothing.", ME.DISTANT),
	
//	txt("I'm really happy for you.", ME.YAY),
	ntxt(0050, u, u, u, function() {audio_play_sound(snd_walking_on_the_earth, 0, false)}),
		
	txt("Hey, Princess.", MOKOU.NEUTRAL, u, u, function() {textbox_set_type(global.textzpix)}),
	txt("Hm?", ME.NEUTRAL, SPRITEPOS.RIGHT),	
	txt("Oh hey. What are you doing here?", ME.DEF),
	txt("Just coming over to visit. Are you...?", MOKOU.NEUTRAL, SPRITEPOS.MIDLEFT),
	txt("Leaving.", ME.DISTANT),
	txt("Ah.", MOKOU.SAD),
	txt("...You've been leaving earlier and earlier lately. You okay?", MOKOU.NEUTRAL),
	txt("Not at all.", ME.HEHE),
	txt("Thought so.", MOKOU.SMUG),
	txt("Can I help in any way?", MOKOU.NEUTRAL),
	txt("No.", ME.DISAPOINT),
	txt("I caused the problem myself. Someone else fixing it for me wouldn't be fair.", ME.DISTANT),
	txt("...", MOKOU.SAD),
	txt("Little Rabbit... life is short.", MOKOU.SADSMILE),	
	txt("Please, take what you can get, and treasure it.", MOKOU.SADSMILE),
	txt("Okay?", MOKOU.YAY),
	txt("...", ME.DISAPOINT),
	txt("I'll try.", ME.TINYSMIRK),
	txt("If you need anything, I'll be here.", MOKOU.DEF),
	txt("...", ME.DISAPOINT),
	ntxt(0, ME.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(0, MOKOU.NEUTRAL, SPRITEPOS.HIDDEN),
	
	ptxt(),
	txt("Without another word, I turned away and headed for home.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	ptxt(),
	txt("Ever since I first discovered the House of Eternity, I could see a glimmer of light through a door that was never meant to open.", u, u, s_black),
	txt("And I wanted nothing more than to break that door down."),
	txt("But years later, it was still there."),
	txt("Something invisible was stopping me from leaving."),
	
	ptxt(),
	txt("It wasn't a long walk to my home. The place laid just outside the Bamboo Forest, in a clearing.", u, u, s_home),
	txt("The front door didn't open easily, so I went through the back.", u, u, s_homeentrance),
	txt("That place led to the kitchen first. I was glad to have eaten at The House of Eternity earlier-- preparing a meal was out of the question tonight.", u, u, s_kitchen),
	ptxt(),
	txt("For now, I only had one place to be."),
	txt("I brushed past several cobwebs on my way. Each strand stuck to my hands, whispered in my ear, asked me to join them. It took a lot more effort than usual to reject them.", u, u, s_homein1),

	ptxt(),
	txt("Soon, I had arrived. at the collection room.", u, u, s_black),
	txt("Dozens of items from Muenzuka littered the floor. Dolls with missing limbs, books with half the pages ripped out, toys with the paint fallen."),
	txt("On top of a big pile was a little box of matchsticks. I grabbed it, trying to keep my eyes off the other items."),	
	
	//she goes past her bed; its all broken and hasnt been slept on in years
	
	//kotohime's all like OH MY PARENTS ARENT HOME AND I DONT WANNA INTERACT WITH THEM SO LETS GO STRAIGHT TO BED
		
	txt("My bed sat in the corner.", u, u, s_homebed),
	txt("Part of the ceiling had collapsed on it a while ago, but I hadn't slept in the thing in years, so I never bothered to clean it up."),
	txt("My real destination was through a door right next to this bed.", u, u, s_closet),
	ptxt(),	
	//CREEEAK sound effect
	txt("I walked through the door and entered the Fire Room."),
	txt("A tiny area, barely bigger than a closet. Nothing occupied this space, except a dresser, a hearth, and a futon."),
	txt("...This was where Kana used to stay."),
	ptxt(),
	txt("With only muscle memory, I took a few pieces of wood out of the dresser, and dropped them near the hearth."),
	txt("But then something on the top of the dresser caught my eye."),
	txt("An old straw sun hat, sitting clear as day.", u, u, s_hat),
	txt("Each time I'd come here, my eyes glossed over it. But this time, it practically glowed."),
	ptxt(),
	txt("She said it would look good on me, didn't she?"),
	txt("But... I never put it on. It just became another item in my collection."),
	txt("For some reason, that thought hurt."),
	txt("...But I couldn't wear it. This was Kana's hat, not mine."),
	txt("And unlike the trinkets from Muenzuka, it may not have truly been forgotten."),	
	txt("With that thought, I laid it back down on the dresser.", u, u, s_black),
	txt("Now it was time to start the fire."),
	txt("Kneeling in front of the fireplace, I struck a match. Then another, and another."),
	
	ptxt(),
	txt("As the first sparks shone, my whole body felt like it was being pricked-- I had finally noticed the cold. Even in Autumn, the coming night was cold enough to kill."),
	//fire lighting sounds
	txt("Finally... warmth.", u, u, s_fireplace, function() {music_set(mus.campfire)}),
	ptxt(),
	txt("I laid into the futon and closed my eyes. This floor wasn't too comfortable, but I had gotten used to it."),
	txt("The crackle of the fire was comforting, at least. It was all I had for fun at the moment-- all of my collectibles laid in another room, far from the fire."),
	txt("I could bring something from over there, of course... but I was just exhausted after such a long day."),
	
	ptxt(),
	txt("... |w0100 |- "),
	
//CREEEEAK sound effect

	txt("!!", ME.WHAA, SPRITEPOS.MIDLEFT, s_closet, function() {textbox_set_type(global.textzpix)}),
	txt("Ah, sorry. Did I scare ya?", MOKOU.NEUTRAL, SPRITEPOS.MIDRIGHT),
	txt("No.", ME.KAAAY),
	txt("Come on. I know a liar when I see one.", MOKOU.SMUG),

	ntxt(0, ME.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(400, MOKOU.NEUTRAL, SPRITEPOS.HIDDEN, s_fireplace),
	
	txt("Hey, Mokou?", ME.NEUTRAL, SPRITEPOS.LEFT),	
	txt("I don't want to be here anymore.", ME.DISAPOINT),
	txt("...Well, I don't blame ya.", MOKOU.DEF, SPRITEPOS.RIGHT),
	txt("You've been living in this dump for-- how long?", MOKOU.DEF),
	txt("Too long.", ME.NEUTRAL),
	txt("...", ME.DISTANT),	
	txt("Can you burn this place down for me?", ME.DISTANT),
	txt("What!?", MOKOU.SURPRISED),
	txt("If I don't do this now, it'll never happen. Tonight, let this house go up in smoke.", ME.DISTANT),
	txt("...You sure?", MOKOU.NEUTRAL),
	txt("We've talked about it so much-- it's time to follow through.", ME.DISTANT),
	txt("All of it must go.", ME.DISTANT),
	
	txt("W-wait a sec. Aren't you gonna vanish? That's what happens to your kind when they lose their home, right?", MOKOU.SURPRISED),
	txt("Mokou, what are you talking about?", ME.HEHE),
	txt("I'm a human, just like you.", ME.DEF),
	txt("...", MOKOU.SADSMILE),
	txt("Are you totally sure you should do this?", MOKOU.NEUTRAL),
	txt("...Yes.", ME.DISTANT),
	
	ntxt(0, ME.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(300, MOKOU.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(0060, u, u, s_black, function() {music_set(mus.null)}),
		
	
	
	ntxt(500, u, u, s_fire, function() {audio_play_sound(snd_firebig1, 0, false)}),
	
	ntxt(100, u, u, s_black),

	ntxt(0, KANA.NEUTRAL, SPRITEPOS.RIGHT),
	ntxt(0, KAGUYA.NEUTRAL, SPRITEPOS.MIDLEFT),
	ntxt(0, REISEN.DEF, SPRITEPOS.CENTER),
	
	ntxt(0200, u, u, s_home, function() {audio_play_sound(snd_walkin_on_leafs, 0, false)}),

	txt("...Do you think she's okay?", REISEN.DEF, SPRITEPOS.LEFT),
	txt("Of course!", KANA.DEF),
	txt("She's come over to our place so many times, we're just returning the favor.", KANA.YAY),
	txt("You sure those parents of hers are gonna welcome us?", MOKOU.NEUTRAL),
	txt("Oh, they won't be a problem.", KANA.DEF),
	txt("Wait a second... none of you have been to her place, have you?", KANA.NEUTRAL),
	txt("Nope.", MOKOU.SAD),
	txt("Not even once.", REISEN.DEF),
	txt("I had wished to, but she always went home by herself.", KAGUYA.NEUTRAL),
	txt("Huh. Then you'll be getting a guided tour of the place!", KANA.YAY),
	
	
	
	//txt("This is just like how I remember it.", KANA.AWW),
	
	
	
	
	//txt("What of Little Rabbit's parents? And the servants?", KAGUYA.NEUTRAL),
	//txt("Her \"parents\"...", KANA.DISTANT),
	//txt("Back then, I never saw them once. There were no \"servants\" either.", KANA.DISTANT),
	//txt("But... how?", KAGUYA.AWW),
	//txt("Did they simply not live here?", KAGUYA.NEUTRAL),
	//txt("No, that wasn't it.", KANA.DISTANT),
	//txt("I think... they were like me. Or, like what I was to my mother.", KANA.DISTANT),
	//txt("The monster in her closet.", KANA.SADSMILE),
	//txt("...", KAGUYA.WAAH),
	
	
	
	
	
	//ptxt(),	
	//txt("To the people of the House of Eternity--", u, u, s_note, function() {textbox_set_type(global.textnvl)}),
	//ptxt(),
	//txt("By the time you read this, I am no longer in Gensokyo."),
	//txt("Right now I ask you... please don't try to find me."),
	//txt("Maybe this is a shock to you, but I've been... tied down, for most of my life."),
	//txt("You have too, each and every one of you. But you've taken strides to move forward, and break your chains."),
	//ptxt(),
	//txt("And now, I must do the same."),
	//txt("Leave my cage, find happiness in new places, and relish the wonders of this impure Earth."),
	//txt("I don't know when I'll come back. It may be in a year, ten years, or a thousand."),
	//txt("I will come back, though. And when I do, I'll have countless stories to tell you."),
	//txt("Thank you all. For everything."),
	//ptxt(),
	//txt("Love, |w0030 # The Little Rabbit Princess),
	
	
	
	
	
	
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
	//so kaguya and kana and mokou and reisen go check up on kotohime
	//(only kana has been to kotohime's place)
	//the house is completely intact
	//eerily ruined still
	//but kana is all like "its just like how i remember it"
	//then kana finds her hat in a little alcove and theres a note under it
	//it basically says "sorry im leaving now love you all goodbye"
	//kaguya is super sad & worried about kotohime
	//kana puts on the hat and is like "...it's fine. i think she'll be okay."
	//then look up at the sky with the moon in the day
	//THE END
	
	
	//OKAY
	//MOKOU COMES ALONG WITH KOTOHIME AND SHE'S THE ONE WHO BURNS DOWN THE HOUSE
	//AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
	
	
	
	
	
	
	
	
	
	

	
	
	
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {while true {}};
}





