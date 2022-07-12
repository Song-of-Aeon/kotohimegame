function txt_end() {

	global.thecolor = 0xFFFFFF;
	c_additem(ITEMS.HIDE);
	msg = msglang([
	
	
	txt("Life went on in the House of Eternity.", u, u, s_stars, function() {music_set(mus.intermission)}),
	txt("Ever since that rainy night, Kaguya and Mokou seemed closer. Though neither of them mentioned it in front of me, it was clear that my plan had been a success."),
	txt("With that success came growth."),
	txt("Mokou came over a lot more, playing games, chatting, and helping out."),
	txt("Kana and Reisen had a bit more time to spend together, and they always looked happy."),
	
	ptxt(),
	txt("We were all happy..."),
	txt("Yet something was missing."),
	
	ntxt(0, u, u, u, function() {music_set(mus.vidya2)}),
	
	txt("Come on, come on...", REISEN.DEF, u, s_ke1, function() {textbox_set_type(global.textzpix)}),
	txt("You can do it, Reisen! I believe in you!", KAGUYA.DEF),
	txt("Are you sure about that? I still have all my health.", ME.DEF, u, s_ke2),
	txt("Not particularly. It's simply fun to say.", KAGUYA.DEF),
	txt("*Real* motivational.", REISEN.DEF),
	txt("I believe in you, Reisen!", KANA.DEF),
	txt("Thanks, Ka-- |w0020 |- ", REISEN.DEF),
	txt("Guh--!!", REISEN.DEF, u, s_ke4),
	txt("And I win once again.", ME.DEF),
	
	ntxt(0, KANA.AWW, SPRITEPOS.LEFT),
	ntxt(0, REISEN.MAD, SPRITEPOS.CENTER),
	txt("Bravo, you two! Absolutely beautiful show of gaming skill!", KAGUYA.YAY, SPRITEPOS.RIGHT, s_eienteihall2, function() {music_set(mus.eientei)}),
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
	txt("Well, if you need anything, I'll be here.", MOKOU.SADSMILE),
	txt("...", ME.DISAPOINT),
	ntxt(0, ME.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(0, MOKOU.NEUTRAL, SPRITEPOS.HIDDEN),
	
	ptxt(),
	txt("Without another word, I turned away and headed for home.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	txt("It was a strange feeling that I had then-- I should have been fine, but..."),
	
	ntxt(0, u, u, u, function() {music_set(mus.alone)}),
	
	ptxt(),
	txt("It wasn't a long walk to my home. The place laid just outside the Bamboo Forest, in a clearing.", u, u, s_home),
	txt("The front door didn't open easily, so I went through the back.", u, u, s_homeentrance),
	txt("That place led to the kitchen first. I was glad to have eaten at The House of Eternity earlier-- preparing a meal was out of the question tonight.", u, u, s_homekitchen),
	ptxt(),
	txt("For now, I only had one place to be."),
	txt("I brushed past several cobwebs on my way. Each strand stuck to my hands, whispered in my ear, asked me to join them. It took a lot more effort than usual to reject them.", u, u, s_homein1),
	txt("Soon, I had arrived at the Collection Room."),
	txt("Dozens of items from The Mound of the Nameless littered the floor. Dolls with missing limbs, books with half the pages ripped out, toys with the paint fallen."),
	txt("On top of a big pile was a little box of matchsticks. I grabbed it, trying to keep my eyes off the other items."),	
	
	ptxt(),
	txt("My bed sat in the corner.", u, u, s_homebed),
	txt("Part of the ceiling had collapsed on it a while ago, but I hadn't slept in the thing in years, so I never bothered to clean it up."),
	txt("My real destination was through a door right next to this bed.", u, u, s_closet),
	ptxt(),	
	//CREEEAK sound effect
	txt("I walked through the door and entered the Fire Room."),
	txt("A tiny area, barely bigger than an average closet. Nothing occupied this space, except a dresser, a hearth, and a futon."),
	ptxt(),
	txt("With only muscle memory to guide me, I took a few pieces of wood out of the dresser, and dropped them near the hearth."),
	txt("But then something on the top of the dresser caught my eye."),
	txt("An old sun hat, sitting clear as day.", u, u, s_hat),
	txt("Each time I'd come here, my eyes glossed over it. But this time, it practically glowed."),
	ptxt(),
	txt("She said it would look good on me, didn't she?"),
	txt("But... I never put it on. It just became another item in my collection."),
	txt("For some reason, that thought hurt."),
	txt("...But I couldn't wear it. This was Kana's hat, not mine. And unlike the other objects here, it may not have truly been forgotten."),	
	txt("With that thought, I laid it back down on the dresser.", u, u, s_black),
	ptxt(),
	txt("Now it was time to start the fire."),
	txt("Kneeling in front of the fireplace, I struck a match. Then another, and another."),
	txt("As the first sparks shone, my whole body felt like it was being pricked-- I had finally noticed the cold. Even in Autumn, the coming night was cold enough to kill."),
	txt("After a few more tries..."),

	ntxt(0080, u, u, u, function() {music_set(mus.null)}),
	
	ntxt(0450, u, u, u, function() {audio_play_sound(snd_lighting_a_match2, 0, false)}),

	ptxt(),
	//fire lighting sounds
	txt("Finally... warmth.", u, u, s_fireplace, function() {music_set(mus.campfire)}),
	ptxt(),
	txt("I laid into the futon and closed my eyes. This floor wasn't too comfortable, but I had gotten used to it."),
	txt("The crackle of the fire was comforting, at least. It was all I had at the moment-- all of my collectibles laid in another room, far from the fire."),
	txt("I could bring something from over there, of course... but I was far too exhausted."),
	
	ptxt(),
	txt("... |w0100 |- "),
	
	ntxt(050, u, u, u, function() {audio_play_sound(snd_bath_door_O, 0, false)}),

	txt("!!", ME.WHAA, SPRITEPOS.MIDLEFT, s_closet, function() {textbox_set_type(global.textzpix)}),
	txt("Ah, sorry. Did I scare ya?", MOKOU.NEUTRAL, SPRITEPOS.MIDRIGHT),
	txt("No.", ME.KAAAY),
	txt("Come on. I know a liar when I see one.", MOKOU.SMUG),

	ntxt(0, ME.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(220, MOKOU.NEUTRAL, SPRITEPOS.HIDDEN, s_fireplace),	
	
	txt("Isn't it pretty?", ME.SMUG, SPRITEPOS.LEFT),
	txt("Yeah. Though this place is still chilly even with it. You want it bigger?", MOKOU.DEF, SPRITEPOS.RIGHT),
	txt("You'll do that for me? I can't believe it!", ME.DEF),
	txt("Just looking out for ya.", MOKOU.DEF),
	txt("...Actually, I don't want it changed. This cold is alright to me.", ME.DISAPOINT),
	txt("Do you like it, or are you just used to it?", MOKOU.SADSMILE),
	txt("It's nostalgic.", ME.HEHE),
	
	ntxt(0, ME.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(130, MOKOU.NEUTRAL, SPRITEPOS.HIDDEN, s_fireplace),
	ntxt(0, ME.NEUTRAL, SPRITEPOS.LEFT),

	txt("How'd your little gaming session go?", MOKOU.NEUTRAL, SPRITEPOS.RIGHT),
	txt("I kicked Reisen's butt.", ME.DEF, SPRITEPOS.LEFT),
	txt("Tell me something I don't know.", MOKOU.SMUG),
	txt("Hmmmm...", ME.SMUG),
	txt("OOOH! Yesterday Kana defeated Kaguya in a danmaku fight. In real life!", ME.POG),
	txt("Wait, WHAT!?", MOKOU.SURPRISED),
	txt("Yep! A victory seven years in the making!", ME.WINKY),
	txt("I dunno if Kaguya went easy on her, or if she was just super smart about it. But it looks like all her determination and training paid off!", ME.DEF),
	
	txt("Damn.", MOKOU.SMUG),
	txt("That girl's goin' places.", MOKOU.SMUG),
	txt("...She is.", ME.NEUTRAL),
	txt("How about you? Did you go to that festival in the Human Village?", ME.POG),
	
	txt("Oh, yeah!", MOKOU.DEF),
	txt("I actually helped out a little. Keine wanted to put on a show for her students, so she got me to make some fireworks.", MOKOU.NEUTRAL),
	txt("It was supposed to just be for the kids, but soon the whole village was cheering for us. Though, I kinda feel bad for stealing the spotlight from everyone else.", MOKOU.DEF),
	txt("That sounds really fun.", ME.NEUTRAL),
	txt("It was. You should come next time.", MOKOU.DEF),
	txt("Nah... I don't think I'd fit in.", ME.DISAPOINT),
	txt("...", MOKOU.NEUTRAL),
	txt("If you say so.", MOKOU.SAD),
	
	ntxt(0, ME.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(190, MOKOU.NEUTRAL, SPRITEPOS.HIDDEN, s_fireplace),
	ntxt(0108, u, u, u, function() {music_set(mus.isnight)}),
	
	ntxt(0, ME.NEUTRAL, SPRITEPOS.LEFT),
	
	txt("Little Rabbit...", MOKOU.SAD, SPRITEPOS.RIGHT),
	txt("I don't think this is good for you.", MOKOU.SAD),
	txt("Coming back here every night, all alone...", MOKOU.SAD),
	txt("Why don't you find someplace else to be? Move in with the House of Eternity if you gotta.", MOKOU.NEUTRAL),
	txt("Sure, we'd have to do those steps, but I looked into it and those seem pretty quick.", MOKOU.DEF),
	txt("Steps?", ME.DISAPOINT, SPRITEPOS.LEFT),
	txt("You know, spells to bind you to the House of Eternity. That's what your kind has to do when they lose their old home, right?", MOKOU.NEUTRAL),
	txt("Mokou, what are you talking about?", ME.HEHE),
	txt("I'm a human, just like you.", ME.WINKY),
	txt("...Ah.", MOKOU.SADSMILE),
	txt("Either way, this is my home. It's where I've lived, and where I'll always live.", ME.DEF),
	txt("No matter what... every road I take just brings me back here.", ME.SMUG),
	txt("I don't think you've taken too many roads, Little Rabbit.", MOKOU.SMUG),
	
	txt("... |w0150 |- ", ME.MIFFED),
	txt("Weren't you going to sleep over at the House of Eternity?", ME.MIFFED),
	txt("Yeah.", MOKOU.NEUTRAL),
	txt("Why are you here?", ME.DISAPOINT),
	txt("Because you're here.", MOKOU.DEF),
	txt("So?", ME.NEUTRAL),
	txt("Come on, do I really need another reason?", MOKOU.SMUG),
	txt("I think so.", ME.MIFFED),
	txt("I'm just a mayfly in the winter, clinging on to a dying cherry tree. Being with me instead of your loved ones... isn't that just wasting your time?", ME.MIFFED),
	txt("Little Rabbit, you're the one who's wasting her time here.", MOKOU.HMPH),
	txt("I think my reasons for caring about you are pretty darn obvious. But if you don't understand, then at least don't totally dismiss it.", MOKOU.HMPH),
	txt("...", ME.DISTANT),
	txt("...", MOKOU.SAD),
	txt("Just telling you to get better won't help much, will it?", MOKOU.SAD),
	txt("...", ME.DISAPOINT),
	txt("I'm tired. Can we just...", ME.DISAPOINT),
	txt("Ah, yeah. Sorry to keep you up so late.", MOKOU.NEUTRAL),
	
	
	ntxt(0, ME.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(99, MOKOU.NEUTRAL, SPRITEPOS.HIDDEN, s_closet),
	
	txt("See you around.", MOKOU.DEF, SPRITEPOS.LEFT),
	txt("Yeah.", ME.DISAPOINT, SPRITEPOS.MIDRIGHT),
	
	txt("...", MOKOU.SAD), 
	txt("Little Rabbit, life is short.", MOKOU.NEUTRAL),
	txt("So please... take what you can get, and treasure it.", MOKOU.SADSMILE),
	txt("Okay?", MOKOU.YAY),
	txt("I'll try.", ME.DISTANT),
	txt("...", MOKOU.SAD),
	txt("That's good enough for me.", MOKOU.DEF),
	
	ntxt(0, ME.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(099, MOKOU.NEUTRAL, SPRITEPOS.HIDDEN, s_fireplace),
	ntxt(0123, MOKOU.NEUTRAL, SPRITEPOS.HIDDEN, s_fireplace, function() {music_set(mus.campfire)}),
	
	
	ptxt(),	
	txt("My body could barely function at this point.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	txt("I doubted sleep would help, but I physically couldn't do anything else."),
	txt("But, while struggling to keep my eyes open, I made a decision."),
	txt("Tomorrow, I would leave."),
	txt("Tomorrow, I would go to the House of Eternity, and ask to live there."),
	txt("Tomorrow, I would promise help Kana and Reisen out every day."),
	txt("Then, just maybe, I could become an irreplaceable part of their lives."),
	txt("It might not be easy, but... neither was this."),
	ptxt(),
	txt("With that thought, I let my eyes close."),
	
	ptxt(),
	ntxt(70, ME.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(360, u, u, s_black, function() {music_set(mus.null)}),
	
	
	ntxt(500, u, u, s_fire, function() {audio_play_sound(snd_firebig1, 0, false)}),
	
	txt("Smoke clouds obscured the faint moon. Embers rose from the blazing building, as if trying to escape the destruction. Wooden walls collapsed into each other, their own weight proving too much."),
	txt("I stood alone in front of the burning remains, for... far too long."),
	txt("In only minutes, everything had disappeared. Everything that I had here, all that I loved and hated."),
	txt("I should've been happy. My cage had burst open, and I was free."),	
	ptxt(),
	txt("So..."),
	txt("Why couldn't I stop crying?"),
	ptxt(),
	
	ntxt(0044),
	ntxt(0088, u, u, s_black),
	
	ntxt(100, u, u, u, function() {music_set(mus.epilogue)}),
//this is epilogue track
	
	ntxt(0200, u, u, s_bambooday, function() {audio_play_sound(snd_walkin_on_leafs, 0, false)}),
	
	ntxt(0, REISEN.DEF, SPRITEPOS.LEFT),
	ntxt(0, KANA.NEUTRAL, SPRITEPOS.MIDLEFT),
	ntxt(0, KAGUYA.NEUTRAL, SPRITEPOS.MIDRIGHT),
	ntxt(0, MOKOU.SAD, SPRITEPOS.RIGHT),

	txt("...Do you think she's okay?", REISEN.DEF, u, u, function() {textbox_set_type(global.textzpix)}),
	txt("Of course!", KANA.DEF),
	txt("She's come over to our place so many times, we're just returning the favor.", KANA.YAY),
	txt("You sure those parents of hers are gonna welcome us?", MOKOU.NEUTRAL),
	txt("Oh, they won't be a problem.", KANA.DEF),
	txt("Wait a second... none of you have been to her place, have you?", KANA.NEUTRAL),
	ntxt(0, KANA.NEUTRAL, SPRITEPOS.MIDLEFT),
	txt("Nope.", MOKOU.SAD),
	txt("Not even once.", REISEN.DEF),
	txt("I had wished to, but she always went home by herself.", KAGUYA.NEUTRAL),
	txt("...", KANA.NEUTRAL),
	txt("So this is the first time you'll be seeing it.", KANA.AWW),
	
	ntxt(0, REISEN.DEF, SPRITEPOS.HIDDEN),
	ntxt(0, KANA.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(0, KAGUYA.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(111, MOKOU.SAD, SPRITEPOS.HIDDEN),
	
	
	
	txt("Mokou, are you alright?", KAGUYA.AWW, SPRITEPOS.MIDLEFT),
	txt("Huh? Of course.", MOKOU.NEUTRAL, SPRITEPOS.MIDRIGHT),
	txt("You seem to have a lot on your mind.", KAGUYA.NEUTRAL),
	txt("Just a little nervous, that's all. Visiting her place for the first time... somehow it puts me on edge.", MOKOU.DEF),
	txt("Dramatic as always, Mokou.", KAGUYA.FUFUFU),
	
	ntxt(0, KAGUYA.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(200, MOKOU.SAD, SPRITEPOS.HIDDEN, s_black),
	
	txt("Here we are.", KANA.NEUTRAL, SPRITEPOS.MIDRIGHT, s_home),
	txt("It looks like it's in total shambles...", REISEN.DEF, SPRITEPOS.RIGHT),
	txt("*This* place is Little Rabbit's home?", KAGUYA.SHOCKED, SPRITEPOS.LEFT),	
	txt("...", MOKOU.SAD, SPRITEPOS.MIDLEFT),
	
	ntxt(00, KAGUYA.AWW, SPRITEPOS.LEFT),
	ntxt(0120, u, u, s_homeentrance, function() {audio_play_sound(snd_walking_on_the_earth, 0, false)}),
	
	txt("What the heck happened here?", REISEN.DEF),
	txt("...Nothing, to my knowledge.", KANA.AWW),
	txt("This is just like how I remember it.", KANA.DISTANT),
	txt("Isn't Little Rabbit a princess? One who lives in an extravagant home?", KAGUYA.NEUTRAL),
	txt("Sorry.", KANA.DISTANT),
	txt("She told me to keep it a secret, but...", KANA.AWW),	
	txt("What of her parents?", KAGUYA.AWW),
	txt("Her \"parents\"--", KANA.DISTANT),
	txt("I never saw them once.", KANA.SADSMILE),
	txt("But... how?", KAGUYA.WAAH),
	txt("Do they simply... not exist?", KAGUYA.NEUTRAL),
	txt("No, they exist-- I think so, at least. Just... in the same way I used to exist.", KANA.DISTANT),
	txt("...As the monster in her closet.", KANA.DISTANT),
	txt("...", KAGUYA.WAAH),
		
	ntxt(0, REISEN.DEF, SPRITEPOS.HIDDEN),
	ntxt(0, KANA.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(0, KAGUYA.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(80, MOKOU.SAD, SPRITEPOS.HIDDEN, s_homelivingroom),
	
	txt("Nothing here... she must be asleep.", KANA.AWW, SPRITEPOS.CENTER),
	txt("Wh-why does she live here? This place looks like it's been abandoned for decades!", REISEN.DEF, SPRITEPOS.LEFT),
	txt("...It's her home.", KANA.DISTANT),
	txt("I hate this place. Can we just find her and get out?", MOKOU.SAD, SPRITEPOS.RIGHT),
	txt("Yeah. She's probably close by.", KANA.DISTANT),
	
	ntxt(0, REISEN.DEF, SPRITEPOS.HIDDEN),
	ntxt(0, KANA.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(0, KAGUYA.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(160, MOKOU.SAD, SPRITEPOS.HIDDEN, s_closet),
	
	txt("There's so much stuff here...", MOKOU.NEUTRAL, SPRITEPOS.LEFT),
	txt("Yeah. This is where she keeps all her collectibles. A lot of it was taken from The Mound of the Nameless, or dropped by wandering youkai.", KANA.NEUTRAL, SPRITEPOS.RIGHT),
	txt("Just a bunch of forgotten objects.", KANA.AWW),
	txt("...", MOKOU.SAD),
	
	txt("The Fire Room...", KANA.DEF),
	txt("This is where I stayed all those years ago. We'd go outside in the day, spend evening playing with all the trinkets littered around, and then sleep together in this closet.", KANA.YAY),
	
	ntxt(0, KANA.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(134, MOKOU.SAD, SPRITEPOS.HIDDEN, s_black),
	
	txt("...Hey, look!", KANA.DEF, SPRITEPOS.HIDDEN, s_hat),
	txt("It's my hat!", KANA.DEF),
	txt("I haven't seen this in so long!", KANA.DEF),
	txt("Honestly... I've missed it.", KANA.DEF),
	txt("...", KANA.DEF),
	
	//sound of putting on hat
	txt("...There we go!", KANAHAT.YAY, SPRITEPOS.MIDRIGHT, s_closet),
	txt("Heh... it looks great on you.", REISEN.YAY, SPRITEPOS.MIDLEFT),
	txt("Thanks.", KANAHAT.LOVEY),
	txt("So... she's not here?", REISEN.DEF),
	txt("Doesn't look like it. She must be taking a stroll right now.", KANAHAT.AWW),
	txt("How about we try again tonight?", KANAHAT.DEF),
	txt("Alright.", REISEN.DEF),
	
	ntxt(0, REISEN.DEF, SPRITEPOS.HIDDEN),
	ntxt(0, KANAHAT.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(0, KAGUYA.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(108, MOKOU.SAD, SPRITEPOS.HIDDEN, s_home),
	
	ntxt(0, REISEN.DEF, SPRITEPOS.LEFT),
	ntxt(0, KANAHAT.DISTANT, SPRITEPOS.MIDLEFT),
	ntxt(0, KAGUYA.NEUTRAL, SPRITEPOS.MIDRIGHT),
	ntxt(30, MOKOU.SAD, SPRITEPOS.RIGHT),

	txt("So that's Little Rabbit's home...", KAGUYA.NEUTRAL),
	txt("Guess so. I kinda feel bad for her, living in a place like that.", REISEN.DEF),	
	txt("I do hope we can see her soon. When we next meet, I'm convincing her to move in with us. No question.", KAGUYA.AWW),

	ntxt(0030),

	txt("What the--", MOKOU.SURPRISED),
	txt("...?", REISEN.DEF),
	txt("Oh, there's something in my pocket.", MOKOU.NEUTRAL),
	txt("\(Feels like it just appeared out of nowhere...\)", MOKOU.SAD),
	txt("Really? What is it?", KANAHAT.NEUTRAL),
	txt("A note...", MOKOU.SADSMILE),
	txt("What does it say?", KAGUYA.NEUTRAL),
	txt("...", MOKOU.SAD),
	ntxt(50),
	
	ptxt(),	

	ntxt(0, REISEN.DEF, SPRITEPOS.HIDDEN),
	ntxt(0, KANAHAT.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(0, KAGUYA.NEUTRAL, SPRITEPOS.HIDDEN),
	ntxt(108, MOKOU.SAD, SPRITEPOS.HIDDEN, s_black),
	ntxt(108, u, u, s_stars, function() {textbox_set_type(global.textnvl)}),
	
	ptxt(),	
	txt("To the people of the House of Eternity--"),
	ptxt(),
	txt("By the time you read this, I will no longer be in The Land of Fantasy."),
	txt("Maybe this is a shock to you, but I've been... tied down, for most of my existence."),
	txt("You have too, each and every one of you. But by now, you all have broken your chains."),
	ptxt(),
	txt("And now, I must do the same."),
	txt("Leave my cage, find happiness in new places, and relish the wonders of this impure Earth."),
	txt("Sadly, I know in my heart that I can't find happiness here. Not how I am now."),
	txt("Please, don't try to find me. This is something I must do alone."),
	txt("Maybe I'll come back. It might be a year from now, or ten years, or a thousand."),
	txt("But if I don't, then please remember... this isn't your fault."),
	txt("Thank you all. For everything."),
	ptxt(),
	txt("Love, |w0030 #        The Little Rabbit Princess."),
	
	
	
	
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {room_goto(TITLE)
		var dude = file_text_open_write("you've won again again.kotohime2");
		file_text_write_string(dude, "these files brought to you by aeon")
		file_text_close(dude);
	};
}





