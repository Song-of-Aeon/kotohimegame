function txt_begin() {

	global.thecolor = 0xFFFFFF;
	c_additem(ITEMS.HIDE);
	msg = msglang([
	
	
	txt("Hey...", u, u, s_black, function() {music_set(mus.null)}),
	txt("Have you ever wondered if you're really living?"),
	txt("I don't mean having a body of flesh and blood and a beating heart-- we in Gensokyo know you don't need that to live."),
	txt("I mean... LIVING. Whatever that means to you."),
	txt("Funny question, isn't it? For some it's easy as one word, and for others answering it is an impossible request."),
	//the "impossible request" line is probably pretentious
	txt("To many long-lived youkai, life is safety and freedom."),
	txt("To the citizens of the Lunar Capital, life is just continued existence."),
	ptxt(),
	txt("To me... life means movement. Growth. Change."),
	txt("Floating on the wind,#swimming through the seas,#finding patches of shelter and sunlight,#and becoming a part of the world."),
	txt("Even being stomped on and crushed forever is a form of living. Because while you can't see it, the seeds you bore will carry on through the wind, and you will live through them."),
	txt("But when you sink into the shadows, sealing your fate to whither away and leave nothing but ash... you are not living, but slowly dying."),
	ptxt(),
	txt("..."),
	txt("Sometimes I get really scared of death."),
	
	ptxt(),
	txt("But you don't care about all that sad stuff, do you?", ME.DEF, SPRITEPOS.CENTER, s_black, function() {textbox_set_type(global.textdefault)}),
	txt("I certainly don't!", ME.HEHE),
	txt("Today, I'm here to show you a collection of stories where love is everywhere!", ME.HEHE),
	txt("Blooming from the spring trees, falling from the sky, and sneaking up on you when you least expect it!", ME.WINKYHEART),
	txt("These stories aren't exactly mine to tell...", ME.WINKYHEART),
	txt("But I played a part in them, so it's okay.", ME.WINKYHEART),
	txt("I'm a collector, you see... not a mere thief.", ME.WINKYHEART),
	txt("Now, are you ready for some romance?", ME.DEF),
	
	
	//footsteps sound and crickets, fading into kotohime with daytime forest background	
	txt("~~Angel, angel, in the sky,~~#~~Whatever could make you cry?~~", ME.YAYNOTE, SPRITEPOS.RIGHT, s_forest, function() {music_set(mus.ragnarok)}),
	txt("~~For your wings are so bright~~#~~They light up the night~~", ME.YAYNOTE),
	txt("~~And make my own tears wave goodbye!~~", ME.YAYNOTE),

	ptxt(),
	txt("The Little Rabbit Princess, frolicking about in the woods.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	txt("After so long staying cooped up in my castle, I wished to leave."),
	txt("My parents insisted on bringing a bodyguard, but I couldn't stand the idea. How could I appreciate the view with a servant breathing down my neck?"),
	ptxt(),
	txt("And out here, I knew going alone was the right choice."),
	txt("This place had just fallen under a great shower of magic and wonder."),
	txt("The leaves looked like little shards of bent starlight, the morning dew forming little twinkles."),
	txt("Seeing this filled my heart with a song I had never heard before."),
	ptxt(),
	txt("Arms waving about, admiring every sight and sound, I sang with nobody to hear."),
	txt("I was out of tune, out of line, and out of my mind."),
	txt("...But I was happy."),
	
	txt("~~And as the sandcastles melt,~~", ME.YAYNOTE, u, u, function() {textbox_set_type(global.textdefault)}),
	txt("~~Will you see on my face, a much brighter place~~", ME.YAYNOTE),
	txt("~~Than the one--~~ |- ", ME.YAYNOTE, u, u, function() {music_set(mus.null)}),
	//hard cut to a big explosion image thingy with a BOOM and a BONK sound effect
	ntxt(0000, ME.DEF, SPRITEPOS.HIDDEN, s_black),
		
		
	ntxt(30, u, u, u, function() {audio_play_sound(snd_bombtaira, 0, false)}),
	ntxt(60, u, u, u, function() {audio_play_sound(snd_shuriken_ninja_knifes3, 0, false)}),
	ntxt(10, u, u, u, function() {audio_play_sound(snd_shoot1, 0, false)}),
	ntxt(10, u, u, u, function() {audio_play_sound(snd_shoot1, 0, false)}),
	ntxt(10, u, u, u, function() {audio_play_sound(snd_shoot1, 0, false)}),
	
	ptxt(),
	txt("Now get out, and stay away forever!", REIMU.MIFFED, SPRITEPOS.LEFT, s_shrine),//, function() {textbox_set_type(global.textnvl)}),
	//maybe have like continuous BOOM sound effects with each textbox
	txt("Fine, fine! Just stop hitting me with those things!", KANA.SCARED, SPRITEPOS.MIDRIGHT),
	ntxt(0080, KANA.SCARED, SPRITEPOS.HIDDEN),
	//kana slides out of frame
	
	txt("...", REIMU.DEF),
	txt("Gee golly gosh gloriosky, I thought she'd never leave!", REIMU.YAY),
	ntxt(0000, REIMU.DEF, SPRITEPOS.HIDDEN, s_shrine, function() {music_set(mus.dancers5)}),
	ntxt(0040),
	
	ptxt(),
	txt("On that surprisingly cool summer day, a scene from a cartoon played before me.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	txt("I had only come to this shrine to visit an acquaintance, but instead I found two."),
	txt("The shrine maiden Reimu Hakurei|n and... someone else."),
	ntxt(0000, KANA.NEUTRAL, SPRITEPOS.CENTER),
	
	ptxt(),
	txt("A girl covered in blue and gold, floating in the air."),
	txt("She had been blown out the front door, covered in countless little amulets."),
	txt("When she was far away to escape the shrine maiden's wrath, she stopped moving and tried scraping off the dirt and amulets."),
	txt("I only stood in place, watching her closely."),
	ptxt(),
	txt("It took a while for her to notice me, but once she did, she started walking towards the stairs."),	
	txt("She seemed to consider stopping as she approached me, meeting my eyes for only a second. For a moment, I thought I heard muttering."),
	txt("\"Weirdo.\""),
	ntxt(0000, KANA.DEF, SPRITEPOS.HIDDEN),
	txt("Before I could reply, she turned her head and flew right past me."),
	txt("Only then did I finally recognize her,|n but by then it was too late."),
	
	txt("Hey, you! Are you gonna come over here and donate or what?", REIMU.HAHA, SPRITEPOS.LEFT, u, function() {textbox_set_type(global.textdefault)}),
	txt("...Oh, it's you again.", REIMU.DEF),
	txt("Why hello there, Reimu! What brings you here today?", ME.YAYNOTE, SPRITEPOS.RIGHT),
	txt("\(\"What brings you here?\" This is my shrine!\)", REIMU.SWEAT),
	txt("Not much, just taking out the trash.", REIMU.DEF),
	txt("...And the \"trash\" is Kana?", ME.NEUTRAL),
	txt("Yeah, and it was really hard! I needed to get myself some new poltergeist-repellant amulets!", REIMU.HAHA),
	txt("Why did you...?", ME.KAAAY),
	txt("She showed up here a few weeks ago and acted like she owned the place!", REIMU.MIFFED),
	txt("Flying around the shrine, playing with all my stuff, making as much noise as she could!", REIMU.MIFFED),
	txt("I couldn't get in a wink of sleep!", REIMU.MIFFED),

	txt("Really?", ME.POGQMARK),
	txt("That sounds super fun! I'm so jealous!", ME.YAY),
	txt("...If you say so.", REIMU.SWEAT),
	txt("Well, it was fun for her at least.", REIMU.DEF),
	//txt("She kept talking to herself all happylike. Stuff about \"a place to stay\" and \"a human that's always around.\"", REIMU.MIFFED),
	txt("Like I care.", REIMU.MIFFED),
	
	txt("...", ME.DISAPOINT),
	txt("So what do you wanna do? Donate?", REIMU.YAY),
	txt("Nope!", ME.WINKY),
	txt("Drink tea and chat?", REIMU.YAY),
	txt("Nope!", ME.WINKY),
	txt("Ride Genji?", REIMU.YAY),
	txt("Nope!", ME.WINKY),
	txt("Play Shogi?", REIMU.YAY),
	txt("Nope!", ME.WINKY),
	txt("...|w0070 Sweep the shrine for me?", REIMU.HAHA),
	txt("Nope!", ME.WINKY),
	txt("Then what are you here for!?", REIMU.SWEAT),
	txt("Saying hello!", ME.DEF),
	txt("...", REIMU.SWEAT),
	txt("Goodbye!!", ME.YAY),
	
	ntxt(020, u, u, u, function() {music_set(mus.null)}),
	//sound of running footsteps on stone
	ntxt(0000, REIMU.DEF, SPRITEPOS.HIDDEN),
	ntxt(0000, ME.DEF, SPRITEPOS.HIDDEN, u, function() {audio_play_sound(snd_running_in_fall_forest, 0, false)}),
	
	ptxt(),
	txt("I turned around and bolted to the shrine stairs.", u, u, s_steps, function() {textbox_set_type(global.textnvl)}),
	txt("That girl was Kana Anaberal. I had met her while participating in a little fighting tournament. She ended up winning the tournament rather easily, which caught all the participants off-guard."),
	txt("I had expected to never meet her again, but here she was."),
	ptxt(),
	txt("And this time, something about her had caught my attention."),
	txt("Many things, actually. Her eyes, the Western-style clothes, the mirage-like glow around her."),
	txt("I had let many people pass me by before, but something about this girl seemed to call for me."),
	txt("And I knew that if I refused the call, we really would never meet again."),
	ptxt(),
	txt("I ran and ran until finally, I caught a glimpse of Kana."),
	ntxt(0000, ME.NEUTRAL, SPRITEPOS.RIGHT),
	ntxt(0000, KANA.NEUTRAL, SPRITEPOS.MIDLEFT),
	txt("She turned to me, and we simply stood there for... far too long."),
	
	ntxt(60, u, u, u, function() {music_set(mus.summerhill2)}),
	txt("Are you gonna say something or what?", KANA.DEF, u, u, function() {textbox_set_type(global.textdefault)}),
	txt("You're Kana, right?", ME.POG),
	txt("You got it. Kana Anaberal, in the ectoplasm!", KANA.YAY),
	txt("And aren't you that weird girl from that danmaku competition? The really weak one who went down in ten seconds?", KANA.COCKY),	
	txt("Yes, yes! Oh, it's been so long! How are you?", ME.YAY),
	
	txt("Absolutely fantastic! Things couldn't be better!", KANA.WINKY),
	txt("Really?", ME.YAY),
	txt("Of course not! I just got exorcized from my new home!", KANA.MAD),
	txt("I finally had a place to live with a human that was always there, and now it's gone!", KANA.AWW),
	txt("Now I have to find a new place before I fade away forever.", KANA.NEUTRAL),
	txt("...", ME.WAAH),
	txt("If you're not gonna say anything helpful, then leave me alone.", KANA.MAD),
	txt("How aboooout...", ME.HEHE),
	txt("You stay at my place for a while?", ME.WINKYHEART),
	txt("Huh?", KANA.NEUTRAL),
	txt("You're such an interesting person, I'd love to have you around for a while!", ME.YAY),
	txt("Stop joking around. You can't possibly-", KANA.MAD),
	txt("I'm not joking!", ME.MIFFED),
	txt("...You really mean it?", KANA.AWW),
	txt("Of course! I don't lie about these things!", ME.DEF),
	txt("Thank you.", KANA.YAY, u, u, function() {music_set(mus.doll)}),
	ntxt(0000, ME.DEF, SPRITEPOS.HIDDEN),
	ntxt(0000, KANA.DEF, SPRITEPOS.HIDDEN),
	
	ptxt(),
	txt("And just like that, we were friends.", u, u, s_black, function() {textbox_set_type(global.textnvl)}),
	txt("I quickly brought Kana to my home, and went through the necessary rituals to bind her to it."),
	txt("Poltergeists are normally bound to one place of residence, you see. They cannot leave their home for more than three days, or else they will cease to be."),
	ptxt(),
	txt("Somehow she was able to live at Reimu's shrine, which I suspect happened because of her \"reward\" for winning the tournament."),
	txt("For months, Kana lived there in relative happiness. She had to hide from the guards and my parents, on account of her phantomic nature. Though, she did pull pranks on the servants every now and again."),
	
	ptxt(),
	txt("I liked having her there. She brought life to the uptight home, and she turned out to be just as interesting as I had hoped."),
	txt("She originally lived in a western-style house just outside the Human Village, and while she couldn't get out much, she had access to tomes that taught her many things."),
	txt("It was to the point that she knew more about the outside world than Gensokyo."),
	txt("We would often go on walks and talk for hours on incredibly important subjects."),
	txt("Until one night..."),	
	
	ntxt(0, u, u, u, function() {music_set(mus.autmninsects3)}),
	txt("Come on, cookies are infinitely better than mochi!", KANA.WINKY, SPRITEPOS.MIDRIGHT, s_bambooevening, function() {textbox_set_type(global.textdefault)}),
	txt("But they're so dry\~\~. Half the time it's just crumbly bits of flowers.", ME.DISAPOINT, SPRITEPOS.MIDLEFT),
	//the wigglylines look weird ingame. fix it or get rid of em
	txt("That's what the milk is for! You just dip them in the milk, and they're all nice and wet.", KANA.WINKY),
	txt("But you can eat mochi normally, anytime! You don't need to get milk from a cow to enjoy it!", ME.DEF),
	txt("And they just get sweeter when you bite into them, not all bitter and crunchy like cookies.", ME.HEHE),
	txt("Bitter and crunchy!? What kind of cookies have you been eating?", KANA.MAD),
	txt("None.", ME.SMUG),
	txt("What?", KANA.BRUH),
	txt("Not even once!", ME.SMUG),
	txt("How the heck...", KANA.BRUH),
	txt("What do they look like again?", ME.DEF),
	txt("...", KANA.NEUTRAL),
	txt("Okay, Miss Cookie Hater!", KANA.COCKY),
	txt("As soon as we get home, I'm gonna make a hundred chocolate chip cookies, and YOU'RE gonna eat every last one!", KANA.WINKY),
	txt("Sounds great!", ME.YAY),
	ntxt(0000, ME.DEF, SPRITEPOS.HIDDEN),
	ntxt(0000, KANA.DEF, SPRITEPOS.HIDDEN),
	
	ptxt(),
	txt("One evening, we took an especially late stroll through the Bamboo Forest.", u, u, s_crescent2, function() {textbox_set_type(global.textnvl)}),
	txt("It was already dark, and the moonlight was just barely stopping us from walking right into the bamboo shoots. Not to mention, the more nasty fairies were just beginning to come out around this time."),
	txt("We were thinking of going home soon, but..."),
	
	ptxt(),
	txt("Hey, can I say something... kinda silly?", KANA.DEF, u, u, function() {textbox_set_type(global.textdefault)}),
	txt("What else do we do around here?", ME.DEF),
	txt("Alright. Uhm...", KANA.DEF),
	txt("I wanna get a girlfriend.", KANA.DEF),
	
	ntxt(0, KANA.YAY, SPRITEPOS.MIDRIGHT, s_bambooevening),
	
	txt("Oh my!", ME.DEF, SPRITEPOS.MIDLEFT),
	txt("You mean a...|w0060|-", ME.DEF),
	txt("A soulmate. Someone to love romantically.", KANA.DEF),
	txt("I've been thinking about it for a while. Being with you is fun and all... but I can't stay forever.", KANA.DEF), 
	txt("Having someone like that might help me.", KANA.YAY),
	txt("But I don't know a thing about finding a soulmate.", KANA.NEUTRAL),
	txt("Me neither!", ME.HEHE),
			
	//if the Mary story is cut out, put the whole I READ A LOT OF ROMANCE STUFF here
		
	txt("But I do know a few places we could try.", ME.HEHE),
	txt("What's your dream girl like?", ME.DEF),
	txt("My dream girl?", KANA.NEUTRAL),
	txt("Your dream girl!", ME.WINKYHEART),
	txt("The perfect woman for you-- someone who has everything you desire in a lover.", ME.TINYSMIRK),
	txt("Oh, that's easy!", KANA.DEF),
	txt("Soft and caring, with a big smile on her face all the time!", KANA.DEF),
	txt("She'd be the master of a huge mansion full of things to do, and take care of it with the utmost skill.", KANA.DEF),
	txt("Tall and strong, in both mind and body. Always there to reassure me when something goes wrong.", KANA.DEF),
	txt("She'd have long hair that glows like the stars!", KANA.YAY),
	txt("A sense of fashion in her clothing, but not so much it becomes gaudy.", KANA.YAY),
	txt("Oh, and a set of massive honkers!", KANA.YAY),
	txt("...Honkers?", ME.WHAA),
	txt("Honkers! You know, those big metal things that go HONK when you blow into them!", KANA.DEF),
	txt("...Ah. Trumpets.", ME.TINYSMIRK),
	txt("Every night, she would cast a spell for them to magically serenade me to sleep!", KANA.DEF),
	txt("How convenient!|n I know a few people just like that right in this very forest!", ME.YAYNOTE),
	txt("Just follow me.", ME.HEHENOTE),
	ntxt(u, ME.DEF, SPRITEPOS.HIDDEN),
	ntxt(u, KANA.DEF, SPRITEPOS.HIDDEN),

	ptxt(),
	txt("And so, our night out continued.", u, u, s_crescent2, function() {textbox_set_type(global.textnvl)}),
	txt("The people I knew resided in a place completely isolated from the rest of Gensokyo."),
	txt("I had happened upon this place some years ago, and since then it's been a little secret of mine."),
	txt("Past the brook where the frogs do not croak, over the anthill that towers above mountains, and through the eye of a spiderweb... there she was."),
	txt("The white rabbit.", u, u, s_fuckingbnuuy),
	txt("It sat in a clearing, seeming to beckon us closer."),
	
	txt("Looks like her doors are open this time.", ME.DEF, u, u, function() {textbox_set_type(global.textdefault)}),
	txt("What do you mean? It's just a rabbit.", KANA.DEF),
	txt("A rabbit that will show us the way.", ME.DEF),
	txt("It just ran away!", KANA.DEF),
	
	ptxt(),
	txt("One second it was there, and the next it was gone, only leaving a ruffling of bamboo leaves in its wake.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	txt("We ran through the thickets and the trees, past the fairies and their magic lights.", u, u, s_bamboonight),
	txt("Several times, we thought we lost it. But after what felt like hours..."),
	txt("We were there."),
	ntxt(0045, u, u, s_eientei2),
	txt("So tired...", KANA.AWW, u, u, function() {textbox_set_type(global.textdefault)}),
		
	//so im not sure how hard it canonically was to find eientei before IN but
	//who cares
	//not me
	//i never lost control
	//you're face
	//to face
	//with the man who sold canon
	//for now imma just say tewi intentionally leads kotohime and kana to eientei because haha trololololol
	//that seems to sortakinda fit her personality right?
		
	txt("Tewi! What are you doing here?", REISEN.CONFUZZLED, SPRITEPOS.CENTER),
	txt("Aren't you supposed to be fetching the laundry?", REISEN.CONFUZZLED),
	ntxt(0069, REISEN.WOAH, SPRITEPOS.HIDDEN, s_fuckingbnuuy),
	txt("...Tewi?", REISEN.WOAH),
	
	//play a sound of scurrying away here
	
	ntxt(0020, u, u, s_eientei2),
	
	txt("Hey, get back here! Tewi!", REISEN.UGGH, SPRITEPOS.CENTER),
	txt("Good morning!", ME.WINKYHEART, SPRITEPOS.RIGHT),	
	txt("Wha|w0030-|-", REISEN.WOAH),
	txt("You!", REISEN.MAD),
	txt("Me!", ME.YAY),
	txt("I can't believe Tewi led you here again.", REISEN.UGGH),
	
	txt("I'm here too!", KANA.WINKY, SPRITEPOS.LEFT),
	txt("Another one!?", REISEN.WOAH),
		
	txt("\(I'm gonna have a word with that fluffy pain in the tail...\)", REISEN.UGGH),
	//the writing here is uhh
	//rather cliche
	//change it to something more raisin-specific

	txt("For now...", REISEN.LUNATICEYES),
	txt("Gaze into my eyes of madness!", REISEN.LUNATICEYES),
	ntxt(90, u, u, u, function() {audio_play_sound(snd_attack2, 0, false)}),
	txt("What the...", KANA.SCARED),
	
	//screen effect of like red n stuff	for a few secs
	//sound effect of a weird snap, screen flashes white
	
	
	
	ntxt(0000, ME.DEF, SPRITEPOS.HIDDEN),
	ntxt(0000, KANA.DEF, SPRITEPOS.HIDDEN),
	
	
	
	txt("...It's not working!", REISEN.WOAH, SPRITEPOS.CENTER),
	
	
	txt("Fufufu...", KAGUYA.FUFUFU, SPRITEPOS.HIDDEN),
	
	ntxt(0000, REISEN.CONFUZZLED, SPRITEPOS.LEFT),
	//confuzzled might not fit here. dunno
	txt("Little inaba, you have much to learn.", KAGUYA.FUFUFU),
	txt("Powers of insanity won't work on a being born from insanity.", KAGUYA.FUFUFU, SPRITEPOS.CENTER),
	txt("Ah--|w0030 I'm sorry, Princess.", REISEN.DEF),
	txt("I should've shot them instead.", REISEN.DEF),
	txt("Please, you must not be so rude to our \"friends!\"", KAGUYA.DEF),
	
	ntxt(u, REISEN.DEF, SPRITEPOS.HIDDEN),
	ntxt(u, KANA.NEUTRAL, SPRITEPOS.LEFT),
	ntxt(u, ME.NEUTRAL, SPRITEPOS.RIGHT),
	
	
	txt("This red-haired girl has been dear to me ever since she stumbled upon our abode.", KAGUYA.DEF),
	txt("And despite being of the *superior* Lunarian race, I somedays desire visits from earthlings.", KAGUYA.DEF),
	//find a way to do italics or do somethin else	
	txt("For in a place where time stands still, the only thing that grows is boredom.", KAGUYA.FUFUFU),	
	txt("Even an earthling princess like you should understand that.", KAGUYA.FUFUFU),
	txt("...Princess?", KANA.NEUTRAL),
	//HAHA FORESHADOWING
	txt("You're right, I do understand! That's why I've brought you a new plaything!", ME.DEF),
	txt("Her name is Kana.", ME.DEF),
	txt("PLAYTHING!?", KANA.SCARED),
	txt("Oh, don't be so scared, little ghost! You won't be treated differently from any other earthling.", KAGUYA.YAY),
	txt("For some reason, that doesn't raise my spirits at all...", KANA.SCARED),
	
	txt("Now, my \"friends.\" Are you ready to undertake my impossible requests?", KAGUYA.DEF),
	txt("Absolutely not!", ME.MIFFED),
	txt("We're just here for a tour around the house.", ME.NEUTRAL),
	txt("...I see.", KAGUYA.NEUTRAL),
	txt("Come then. The night shall perish if we take too long.", KAGUYA.NEUTRAL),
	
	txt("Princess, this is-|w0033|-", REISEN.CONFUZZLED),
	txt("Reisen, go back to your usual task. There's no need to worry.", KAGUYA.DEF),
	//put in a name for what "usual task" is
	
	txt("...", REISEN.UGGH),
	
	ntxt(0000, REISEN.UGGH, SPRITEPOS.HIDDEN),
	ntxt(0000, ME.DEF, SPRITEPOS.HIDDEN),
	ntxt(0000, KAGUYA.DEF, SPRITEPOS.HIDDEN),
	ntxt(0000, KANA.DEF, SPRITEPOS.HIDDEN),
	ntxt(0250, u, u, u, function() {audio_play_sound(snd_sliding_door_O, 0, false)}),
	ntxt(0164, u, u, s_eienteihall1, function() {audio_play_sound(snd_sliding_door_C, 0, false)}),
	
	txt("Welcome to the House of Eternity.", KAGUYA.DEF, SPRITEPOS.RIGHT, u, function() {music_set(mus.housewalk)}),
	txt("I have lived here for over a thousand years.", KAGUYA.DEF),
	txt("With my powers to manipulate eternity, time has effectively stopped.", KAGUYA.DEF),
	txt("In this house, nothing changes and nothing dies. It is a place void of impurity.", KAGUYA.DEF),

	
	ptxt(),
	txt("...Even though I'd been here many times, this place still felt like another world.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	txt("The air was so unnaturally still, I almost had trouble breathing. There was not a mite of dust, nor a single creak."),
	txt("It was a warm castle of solid ice."),
	//maybe remove the word "solid" from here
	txt("We walked through winding halls that broke the rules of space and time."),
	txt("Kana was in such awe, she did not speak for a while. Kaguya and I simply waited for her, afraid to break the silence ourselves."),
	
	//prob put a bit more description here? or lead up to the question
	
		
	txt("You mentioned \"impossible requests\"...#Are you the legendary Princess Kaguya of the moon?", KANA.DEF, SPRITEPOS.LEFT, u, function() {textbox_set_type(global.textdefault)}),
	txt("Oh? You've heard of me? A mighty well-read one, I see.", KAGUYA.DEF, SPRITEPOS.RIGHT),
	txt("Not really. Your story is still famous, even in the outside world! Everyone knows it!", KANA.DEF),
	txt("Ah.|n That's...", KAGUYA.AWW),
	txt("That's nice.", KAGUYA.AWW),
	//the reason she goes AWW is cuz she secretly wants to not be a NEET but is all like BUT IM A LUNARIAN PRINCESS BWAAH
	txt("Why are you here, though? Weren't you brought to the moon shortly after you arrived?", KANA.BRUH),
	txt("Not quite. The other Lunarians attempted to bring me back... but I wished to stay on Earth.", KAGUYA.DEF),
	txt("My belief is they are still searching for me. So to speak, this house is my hiding place.", KAGUYA.FUFUFU),
	txt("But that's enough about me.", KAGUYA.YAY),	
	txt("Little Rabbit, why have you brought this apparition? Are you certain she would not spoil our time together?", KAGUYA.DEF),
	txt("What do you mean? She's my friend!", ME.YAY, SPRITEPOS.CENTER),
	txt("Really now? You actually like her presence?", KAGUYA.NEUTRAL),
	
	//stop footsteps sound here?
	
	ntxt(0000, ME.DISAPOINT, SPRITEPOS.CENTER, u, function() {music_set(mus.null)}),
	
	txt("Yes, she does!", KANA.MAD),
	txt("We're equals in mind and spirit, and we love each other's company!", KANA.MAD),
	txt("Fufufu. How time has flown. I guess today's humans really are accepting of youkai.", KAGUYA.FUFUFU),
	txt("Not really. Almost everyone else is afraid of her.", ME.DEF),
	txt("So you are strange even among your earthling peers...", KAGUYA.FUFUFU),
	txt("I like that!", KAGUYA.YAY),
	txt("So, Kana. Where are you from?", KAGUYA.DEF, u, u, function() {music_set(mus.housewalk)}),
	txt("Well...", KANA.NEUTRAL),
	
	ptxt(),		
	txt("We chatted like this for a while. Though for the most part, I kept silent.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	txt("Kaguya's eyes lit up as she heard of Kana's old mansion, and soon Kana began asking about life at the House of Eternity. Despite the rocky start, they seemed interested in each other's lives."),
	txt("I had expected this, knowing Kaguya-- her posturing could never fully hide her excitement for the \"earthlings.\""),
	txt("...Did we have something on our hands here?"),
	
	txt("\(Hey, Kana...\)", ME.DEF, u, u, function() {textbox_set_type(global.textdefault)}),
	txt("\(Hm?\)", KANA.DEF),
	txt("\(Isn't Kaguya beautiful?\)", ME.SMUG),
	txt("\(...\)", KANA.NEUTRAL),
	txt("\(She's out of this world.\)", KANA.YAY),
	//probably too on the nose
	txt("\(Do you think... she's the one?\)", ME.SMUG),
	txt("\(...I don't think so. She's lacking that special something.\)", KANA.DEF),
	
	ntxt(0000, KANA.NEUTRAL, SPRITEPOS.LEFT),	
	txt("Why are you whispering? I can hear everything you're saying.", KAGUYA.NEUTRAL),
	txt("It's funner that way.", ME.YAYNOTE),
	txt("Should I pretend not to hear...?", KAGUYA.DEF),
	txt("Hmm...|w076 |-", ME.NEUTRAL),
	txt("No.", ME.DEF),
	txt("Kana, take it away.", ME.DEF),
	txt("Wha-- me? Now?", KANA.SCARED),
	txt("Better to be direct in this case. Kaguya's really understanding.", ME.DEF),
	
	txt("Okay, uhh..|n#I'm looking for a girlfriend.", KANA.NEUTRAL),
	txt("Someone confident and caring. Strong in both mind and body, yet unafraid to open up emotionally. And if something went wrong, she'd be there for me no matter what.", KANA.YAY),
	txt("Even better if she had a huge extravagent home, long shining hair, and a slick sense of fashion!", KANA.YAY),
	txt("And some massive honkers!", ME.WINKYHEART),
	
	txt("That's so sweet!", KAGUYA.YAY),
	txt("In that case, Eirin would be perfect for you!", KAGUYA.YAY),	
	txt("She's the other Lunarian in this house.",KAGUYA.DEF),
	txt("She has accrued a long history as a great sage, and even helped found the Lunar Capital, using her wits and intelligence thousands that of any human or youkai.", KAGUYA.DEF),
	txt("Some have dubbed her \"the brain of the moon.\"", KAGUYA.FUFUFU),
	txt("In the House of Eternity there are no spirits of your kind, so I bet she would fall in love at first sight!", KAGUYA.YAY),
	txt("Or she would just dissect you for research. But that is a form of love from a scientist, is it not?", KAGUYA.FUFUFU),
	txt("...I'll pass, thanks.", KANA.SCARED),
	
	txt("What a shame.", KAGUYA.AWW),
	txt("What about Reisen?", KAGUYA.FUFUFU),
	ntxt(0000, KANA.BRUH, SPRITEPOS.LEFT),
	txt("She fits zero of those descriptors, but she is close by.", KAGUYA.FUFUFU),
	txt("Maybe you two could become closer if given proper tools.", KAGUYA.FUFUFU),
	txt("Tools?", ME.KAAAY),
	txt("Kana, have you ever played Shogi?", KAGUYA.SMUG, u, u, function() {music_set(mus.null)}),

	ptxt(),

	txt("We discussed what to do, brought out the necessary materials, and then called Reisen over.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	txt("As we explained to her, she and Kana would play a friendly game of Shogi together, with only one thing changed."),
	
	ntxt(000, ME.DEF, SPRITEPOS.MIDLEFT),
	ntxt(000, KANA.DEF, SPRITEPOS.HIDDEN),
	ntxt(000, KAGUYA.DEF, SPRITEPOS.HIDDEN),
	
	txt("We're playing Chess too?", REISEN.CONFUZZLED, SPRITEPOS.MIDRIGHT, s_eienteihall2, function() {textbox_set_type(global.textdefault)}),
	txt("Yep! Since I gave you a Chess game not too long ago, we thought it would be perfect for you and Kana to bond over!", ME.YAY),
	txt("But I've never played Chess. How does it work?", REISEN.DEF),
	txt("...You'll figure it out.", ME.HEHE),
	
	ntxt(000, ME.DEF, SPRITEPOS.HIDDEN),
	ntxt(000, REISEN.DEF, SPRITEPOS.HIDDEN),
	ptxt(),
		
	txt("What the...", REISEN.DEF, SPRITEPOS.HIDDEN, s_start, function() {textbox_set_type(global.textnvl)}),
	txt("Like I said. We're playing Chess *and* Shogi.", ME.DEF),
	txt("Kana will be the Chess pieces, and Reisen will be Shogi.", KAGUYA.DEF),
	txt("...|w0030 Fine.", REISEN.DEF),
	txt("Prepare yourself, bunny girl!", KANA.DEF),
	
	txt("Ready, set...", ME.DEF),
	txt("START!!", ME.DEF, u, u, function() {music_set(mus.flight)}),
	
	//ok so for this game
	//all the whole newlines with "..." things are them making moves
	//so use a sound effect of pieces moving for each of them
	
	ptxt(),
	txt("...", u, u, s_01),
	ptxt(),
	
	txt("Wait, why can her pawn move two spaces?!", REISEN.DEF),
	txt("That's just a basic rule of Chess. The first time it moves, a pawn can move two spaces.", ME.DEF),
	txt("Oh, and they only capture diagonally forward.", ME.DEF),
	txt("???", REISEN.DEF),
	
	ptxt(),
	
	txt("...#...#...#...", u, u, s_05),
	ptxt(),
	txt("Okay, so the horse is the knight...", REISEN.DEF),
	txt("Reisen, are you simply moving without thinking ahead?", KAGUYA.DEF),
	txt("How can I think ahead when I don't know the rules?", REISEN.DEF),
	txt("You could just ask us.", KANA.DEF),
	txt("Okay. What's this tall piece with the ball on top?", REISEN.DEF),
	txt("She's the queen!", KANA.DEF),
	txt("And what does the queen do?", REISEN.DEF),
	txt("That's a secret.", KAGUYA.DEF),
	ptxt(),
	
	txt("...#...#...#..."),
	ptxt(),
	txt("...#...#..."),
	ptxt(),
	
	txt("And I move my queen over here...", KANA.DEF, u, s_13),
	txt("What the-", REISEN.DEF),
	txt("Why can she move that many spaces?", REISEN.DEF),
	txt("Fufufu. Didn't you know? The Queen's range is infinite, in any direction.", KAGUYA.DEF),
	txt("...", REISEN.DEF),
	
	txt("Then I'll just move my silver general over here.", REISEN.DEF, u, s_14),
	txt("Now you can't attack me without losing such a powerful unit!", REISEN.DEF),
	txt("Okay! How about I castle now?", KANA.DEF, u, s_15),
	txt("You what?", REISEN.DEF),
	txt("Castle! If there's nothing between them, you can make your king and rook switch places.", ME.DEF),
	
	ptxt(),
	txt("...#...#..."),
	ptxt(),
	txt("There! I finally took a piece!", KANA.DEF, u, s_18),
	txt("Well, at least it's only a pawn. Still, I shouldn't give you the opportunity to drop it...", REISEN.DEF),
	txt("Oh, you can't drop pieces in Chess.", KANA.DEF),
	txt("...Guess it's my lucky day.", REISEN.DEF),
	//something something rabbit's foot haha xd
	
	ptxt(),
	
	txt("...#...#...", u, u, s_20),
	ptxt(),
	txt("I'm on a roll here!", KANA.DEF),
	txt("And then I'll just put my Knight here...", KANA.DEF),
	txt("Finally! Say goodbye to your knight!", REISEN.DEF),
	txt("Wow, she actually fell for it.", KANA.DEF),
	
	ptxt(),
	
	txt("...#...#...#...", u, u, s_27),	
	ptxt(),
	txt("Reisen, don't you moon rabbits play Shogi all the time? Surely you should be better than this.", KAGUYA.DEF),
	txt("Actually, I was so bad at it that everyone made fun of me. Reason number seven-seventy-six why I deserted.", REISEN.DEF),
	txt("But hey, at least I'm fighting against a master here.", REISEN.DEF),
	txt("This is my second time ever playing chess.", KANA.DEF),
	txt("Yeah, she's pretty bad at it.", ME.DEF),
	
	ptxt(),
	
	txt("...", u, u, s_28),
	txt("...", u, u, s_29),
	txt("...", u, u, s_30),
	txt("...", u, u, s_31),
	txt("...", u, u, s_32),
	ptxt(),
	txt("Yes, I got my bishop over there! Now let's just...", REISEN.DEF),
	txt("Wow, you're in trouble now.", ME.DEF),
	txt("Yeah, I know...", KANA.DEF),
	txt("Drop this bishop right here!", REISEN.DEF, u, s_34),
	txt("Fine, then I'll just...", KANA.DEF, u, s_35),
	txt("...", u, u, s_36),
	txt("...", u, u, s_37),
	txt("Yes! The turns are tabling now!", REISEN.DEF),
	
	ptxt(),
	
	txt("...#...#...#..."),	
	ptxt(),
	txt("Oh no, I forgot to promote that bishop!", REISEN.DEF),
	txt("My, my...", KAGUYA.DEF),
	txt("Okay, and then... let's drop that Queen.", REISEN.DEF),
	txt("And she has the exact same moves that your Queens have, right?", REISEN.DEF),
	txt("Sure, that sounds fun.", ME.DEF),
	txt("Oh, my rabbit's foot is finally paying off!", REISEN.DEF),
	txt("Hmph.", KANA.DEF),
	txt("In that case...", KANA.DEF, u, s_41),
	txt("I'll exchange your four pawns for another Queen!", KANA.DEF),
	txt("What the-- you can do that!?!", REISEN.DEF),
	txt("It's one of the most basic rules of Chess!", KANA.DEF),
	
	ptxt(),
	txt("...#...#...#...#...", u, u, s_45_1),
	ptxt(),
	txt("Now that my pawn is in the promotion zone...", KANA.DEF),
	txt("They'll become a Queen!", KANA.DEF, u, s_45_2),
	txt("And, of course, I can place it wherever I want.", KANA.DEF),	
	txt("This game has some very silly rules...", REISEN.DEF),
	
	ptxt(),
	txt("Then I'll move here...", REISEN.DEF, u, s_46),
	txt("And I'll move here...", KANA.DEF, u, s_47),
	txt("Fufufu. Kana, give Reisen that Queen.", KAGUYA.DEF),
	txt("What--", KANA.DEF, u, s_48),
	txt("She fell of a cliff. It only happens under very specific circumstances.", KAGUYA.DEF),
	txt("What the heck are you talking about, that makes no sense!", KANA.DEF),
	txt("It's a very old rule. Many of the more *unfaithful* editions omit it.", KAGUYA.DEF),
	txt("...Fine.", KANA.DEF),
	txt("\(I guess it's only fair for her to lie, when I'm doing the same thing.\)", KANA.DEF),
	
	ptxt(),
	txt("...#...#...", u, u, s_51),
	ptxt(),
	txt("And here's another Queen for you to deal with.", KANA.DEF),
	txt("Oh Reisen, you're fleeing? How fitting.", KAGUYA.DEF),
	//okay maybe kaguya is being a bit too mean
	//or you could say shes trying to motivate reisen to play even harder
	//and by that i mean cheat
	txt("Please, Princess. My heart can't take much more of this.", REISEN.DEF),
	txt("I believe you. But there is another option...", KAGUYA.DEF),
	
	ptxt(),
	txt("Then we go there, and...", KANA.DEF, u, s_53_1),
	txt("There!", KANA.DEF, u, s_53_2),
	txt("Hey! Why did that rook move twice!?!?", REISEN.DEF),
	txt("I can't believe you're so unknowledgeable about Chess, Reisen.", KANA.DEF),
	txt("A rook that's castled can move twice in one turn.", KANA.DEF),
	txt("...", REISEN.DEF),
	ptxt(),
	txt("Ah, I see now.", REISEN.DEF),
	txt("Well, Kana. Did you know of this incredibly obscure rule in Shogi?", REISEN.DEF),
	txt("If you've captured an enemy knight *and* an enemy bishop, your promoted bishop can do...", REISEN.DEF),
	
	ptxt(),
	
	txt("THIS!", REISEN.DEF),
	ntxt(0030, u, u, s_54_1),
	ntxt(0030, u, u, s_54_2),
	ntxt(0030, u, u, s_54_3),
	ntxt(0030, u, u, s_54_4),
	ntxt(0200, u, u, s_54_5),
	
	ntxt(0000, KANA.NEUTRAL, SPRITEPOS.LEFT, u, function() {music_set(mus.null)}),
	ntxt(0000, REISEN.SMUG, SPRITEPOS.CENTER),
	
	ntxt(0050, u, u, s_eienteihall2, function() {textbox_set_type(global.textdefault)}),
	
	txt("And there we have it. I've won.", REISEN.SMUG),
	
	txt("Good game!", KANA.YAY),
	txt("Even though I lost fair and square, I had a lot of fun!", KANA.YAY),
	txt("...Are you serious?", REISEN.CONFUZZLED),
	txt("Yeah. I don't get to do these things often, and playing with you was a real treat.", KANA.WINKY),
	txt("To be totally honest, that was the funnest thing I've done in years!", KANA.WINKY),
	txt("...", REISEN.HEH),
	txt("To be totally honest, I hated every second of it.", REISEN.HEH),
	txt("But... you seem fun to be around.", REISEN.YAY),
	txt("How about we play again sometime?", REISEN.YAY),
	txt("Preferably with the *same* pieces.", REISEN.UGGH),
	txt("Deal!", KANA.DEF),
	
	ntxt(000, KANA.DEF, SPRITEPOS.HIDDEN),
	ntxt(000, REISEN.DEF, SPRITEPOS.HIDDEN),
	ntxt(000, ME.YAY, SPRITEPOS.LEFT),
	
	txt("Bravo, you two! Bravo!", KAGUYA.YAY, SPRITEPOS.RIGHT, u, function() {audio_play_sound(snd_clapping_alone1, 0, false)}),
	txt("I've never seen such a splendid battle of wits!", KAGUYA.WINKY),
	txt("If you say so.", REISEN.CONFUZZLED, SPRITEPOS.CENTER),
	txt("*YAWNNNN*", REISEN.DEF),
	txt("Woof... I'm so tired...", REISEN.UGGH),
	txt("Princess, may I please go to bed now?", REISEN.UGGH),
	txt("Yes, I think so. You've done enough today.", KAGUYA.DEF),
	txt("Thankzzz...", REISEN.UGGH, SPRITEPOS.HIDDEN),
	//probably an abrupt way to have reisen leave but WHO CARES GO GO GO WE GOT A DEADLINE
	
	txt("Oh yeah, it's really late.", ME.NEUTRAL),
	ntxt(0000, KANA.YAY, SPRITEPOS.CENTER),
	txt("We should be going home soon, or my parents will get extra mad.", ME.DEF),
	txt("Your...?", KANA.NEUTRAL),
	txt("Well, do you think Reisen is the one?", ME.WINKYHEART),
	txt("Uh-- maybe, but it's hard to tell when I'm clobbering her so bad.", KANA.DEF),
	txt("For now, I wanna find at least one more person to go for.", KANA.DEF),
	
	txt("Hmm...", ME.HEHE),
	txt("What about Mokou?", ME.POGQMARK),
	txt("She fits most of your description.", ME.POGQMARK),
	txt("Though I've never been to her house. And she certainly doesn't have massive honkers.", ME.KAAAY),
	txt("Oh, that would be a *wonderful* idea.", KAGUYA.FUFUFU),
	
	txt("Who's Mokou?", KANA.NEUTRAL),
	txt("She's a very good \"friend\" of mine.", KAGUYA.FUFUFU),
	txt("I'm surprised you know her, Little Rabbit.", KAGUYA.FUFUFU),
	txt("She sometimes escorts lost humans out of the Bamboo Forest. I've come across her many times while trying to see you.", ME.DEF),
	txt("She's not a big talker and she doesn't come out too often, but she looks just your type!", ME.HEHE),
	txt("My type?", KAGUYA.SHOCKED),
	txt("She's... not that kind of friend.", KAGUYA.AWW),
	//maybe have the AWW be NEUTRAL instead
	txt("I was talking to Kana, silly!", ME.WINKY),
	txt("Ah. How silly of me.", KAGUYA.YAY),	
	txt("Dunno about you, but I'll stay up all night if I have to!", KANA.COCKY),
	txt("Let's go see her!", KANA.COCKY),
	txt("Oh, if you're seeing her tonight...", KAGUYA.DEF),
	
	//running footstep sounds
	ntxt(0180, KAGUYA.DEF, SPRITEPOS.HIDDEN, u, function() {audio_play_sound(snd_running_in_a_house, 0, false)}),
	ntxt(0010, KAGUYA.DEF, SPRITEPOS.RIGHT),
	
	txt("Take this gift to her, will you? And remember, it is for Fujiwara no Mokou ONLY, understand? Don't go opening others' presents!", KAGUYA.DEF),
	txt("Understood.", ME.NEUTRAL),
	txt("What is this?", KANA.BRUH),
	txt("Only a box of tea leaves. It should be of no concern to you.", KAGUYA.DEF),	
	txt("Oh, and don't let her know it's from me, okay?", KAGUYA.WINKY),
	
	ntxt(00, KAGUYA.DEF, SPRITEPOS.HIDDEN),
	ntxt(00, ME.DEF, SPRITEPOS.HIDDEN),
	ntxt(00, KANA.DEF, SPRITEPOS.HIDDEN, u, function() {music_set(mus.doll)}),
			
	ptxt(),
	
	txt("With some directions and a wave goodbye, we were off.", u, u, s_bamboonight, function() {textbox_set_type(global.textnvl)}),
	txt("Our walk through the forest was serene. The light wind made all our troubles simply fly off our shoulders."),
	txt("We talked a little bit about the House of Eternity and its residents. The whole time, Kana couldn't keep the huge grin off her face. I can't blame her-- she had seen so many new things. I was the same way when I first found the place."),
	txt("There was a bit of planning for Mokou too, but we didn't have too much info to go off of."),
	ptxt(),
	txt("But then, we reached a clearing with the moon in full view.", u, u, s_crescent2),
	txt("And without anything to prompt it... Kana began to sing."),
	
	txt("~~At just a glance~~#~~It's only us two~~", KANA.DEF, u, u, function() {textbox_set_type(global.textdefault)}),
	txt("~~But our lives are full~~#~~Of the people we see every day on the street~~", KANA.DEF),
	txt("~~Though yesterday~~#~~Was forever dark~~", KANA.DEF),
	txt("~~Forever is only a moment too~~", KANA.DEF),
	//hey if youre feeling extra pretentious
	//reincorporate that "forever is only a moment too" line into the scene where Kaguya and Mokou go all kissy kissy
	
	//find a way to format this so its more obviously singing
	
	ptxt(),
	txt("This was the first time I had heard her sing.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	txt("For a second, I thought of making a joke about it. But... it was just too beautiful to interrupt."),
	txt("Her voice was one with the wind, and she floated along it like a white veil."),
	ptxt(),
	txt("We arrived at Mokou's house far too soon.", u, u, s_mkhsnt, function() {music_set(mus.wind1)}),
	txt("It was far smaller than I had expected. But thinking back, it was definitely more fitting for her."),
	txt("I approached the front door with the smallest steps, while Kana floated close behind."),
	
	txt("What if she's sleeping now? Wouldn't it be rude to wake her up?", KANA.NEUTRAL, SPRITEPOS.LEFT, u, function() {textbox_set_type(global.textdefault)}),
	txt("Absolutely.", ME.SMUG, SPRITEPOS.CENTER),
	txt("HEY, MOKOU! COME ON OUT!", ME.YAY),
	ntxt(00147, KANA.BRUH, SPRITEPOS.LEFT),
	ntxt(00169, u, u, u, function() {audio_play_sound(snd_running_in_a_house, 0, false)}),
	//sound effect of door sliding open
	
	txt("...", MOKOU.NEUTRAL, SPRITEPOS.RIGHT),
	txt("Who are you?", MOKOU.BRUH),
	txt("Don't you remember me? We've met several times.", ME.WINKY),
	//rewrite this line, its not kotohime-y enough
	txt("I've walked alongside hundreds of lost humans. I don't think I should have to remember every single one.", MOKOU.HMPH),
	txt("But hey, I'll take your word for it. What do you want?", MOKOU.NEUTRAL),
	txt("Tea, words, and a gift.", ME.HEHE),
	txt("I see.", MOKOU.SADSMILE),
	txt("That's fine by me. It's been a while since I've had visitors.", MOKOU.DEF),
	ntxt(00, ME.DEF, SPRITEPOS.HIDDEN),
	ntxt(00, KANA.DEF, SPRITEPOS.HIDDEN),	
	ntxt(00, MOKOU.DEF, SPRITEPOS.HIDDEN, u, function() {audio_play_sound(snd_bath_door_O, 0, false)}),
	
	ptxt(),
	txt("Mokou's house was... bare.", u, u, s_mkinntdk, function() {textbox_set_type(global.textnvl)}),
	txt("It didn't seem like a home one could even survive in. There was no furniture, no light source, nothing resembling a bed."),
	txt("Simply walls, floor, and a couple cabinets."),
	txt("Walking through the house, I could only think one thing."),
	txt("\"I would love to live here.\""),
	
	txt("Sorry, there's not much here. I live a simple life, you see.", MOKOU.DEF, u, u, function() {textbox_set_type(global.textdefault)}),	
	txt("...Hang on just a second. Don't want you stumbling around in the dark.", MOKOU.DEF),
	
	ptxt(),	
	
	txt("Mokou grabbed a big kettle full of water off the floor. She held it up with one hand and the other under it.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	ntxt(60, u, u, s_mkinnt, function() {audio_play_sound(snd_snapping3, 0, false)}),
	txt("And then, with only the snap of her fingers, the room was lit up.", u, u, u, function() {music_set(mus.kitchen_gas_switch)}),
	txt("A flame had appeared right over her free hand."),
	txt("It was both a lantern and a stove."),
	
	txt("Woah, that's so cool!", KANA.DEF, SPRITEPOS.LEFT, u, function() {textbox_set_type(global.textdefault)}),
	txt("How do you do that?", KANA.YAY),
	txt("Heh, I'm glad you like it.", MOKOU.YAY, SPRITEPOS.RIGHT),
	txt("It's just your ordinary magic. Learned it a long time ago.", MOKOU.YAY),
	txt("I'd say it's pretty hot.", ME.SMUG, SPRITEPOS.CENTER),
	txt("Wow, never heard that one before.", MOKOU.HMPH),
	//probably too on the nose, even for an intentionally terrible joke
		
	txt("Alright, I'll ask again. Who are you?", MOKOU.DEF),
	
	txt("Kana Anaberal. I'm a poltergeist that's just been freed from her original home.", KANA.DEF),
	txt("I like tea and crumpets, playing harmless pranks, and warm days under the shade.", KANA.DEF),
	txt("My friend here wants to help me find someone.", KANA.YAY),	
	txt("...And who's this someone?", MOKOU.NEUTRAL),
		
	txt("She wants a girlfriend. Someone to love romantically.", ME.WINKY),
	txt("I don't know who yet, but... I do have an idea. A \"dream girl,\" you could say.", KANA.DEF),
	txt("Someone strong and sweet,", KANA.DEF),
	txt("Lovey-dovey and responsible,", ME.HEHE),
	txt("With long hair that shines like the stars,", KANA.DEF),
	txt("A good sense of style,", ME.YAY),
	txt("And massive honkers!", KANA.WINKY),
	//the honkers bit might be stale by the third use of it
	ntxt(0000, MOKOU.YAY, SPRITEPOS.RIGHT),
	ptxt(),
	txt("Mokou was silent for a second, then broke into a hearty laugh.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	txt("I couldn't tell if she was laughing with us or at us, but it was so contagious that I didn't care."),
	ntxt(0000, KANA.DISTANT, SPRITEPOS.LEFT),
	ntxt(0000, ME.NEUTRAL, SPRITEPOS.CENTER),
	txt("At least, until I saw Kana. She looked... deeply upset."),
	
	txt("That's amazing. You chose me, of all people.", MOKOU.YAY, u, u, function() {textbox_set_type(global.textdefault)}),
	txt("I'm flattered, really.", MOKOU.YAY),
	
	txt("Sorry, it's probably stupid.", KANA.DISTANT),
	txt("No no, you're fine.", MOKOU.DEF),
	txt("It's good to know what you want. And I've seen plenty worse goals in my days.", MOKOU.DEF),
	
	ntxt(0070, u, u, u, function() {music_set(mus.null)}),
	
	txt("I don't think I can take you up on that, though. I haven't been in the mood for romance in a *long* time.", MOKOU.SADSMILE),
	txt("Sorry 'bout that.", MOKOU.SADSMILE),
	txt("...Oh.", KANA.DISTANT),
	txt("I'm still up for a chat, though!", ME.DEF),
	txt("It's getting late, but I can stay up all night if I want to.", ME.DEF, u, u, function() {audio_play_sound(snd_pouring_hot_tea, 0, false)}),
	txt("I don't need much sleep either.", KANA.NEUTRAL),
	txt("Sure!", MOKOU.YAY),
	txt("The tea's ready now.", MOKOU.DEF),
	
	//sound effect is water_heater1
	//sound of tea being poured into a cup
	
	txt("Can we have some?", KANA.DEF, u, u, function() {music_set(mus.null)}),
	txt("Sure. Just--|w050  let me drink it first.", MOKOU.DEF),	
	
	ntxt(200, u, u, u, function() {audio_play_sound(snd_drinking_a_hot_one2, 0, false)}),
	ntxt(222, MOKOU.HMPH, SPRITEPOS.RIGHT, u, function() {audio_play_sound(snd_woman_coughing3, 0, false)}),
	
	txt("Oh man, that's... really strong...", MOKOU.NEUTRAL),
	
	//sounds of more coughing and then slump over
	
	ntxt(0100),
	ntxt(060, MOKOU.DEF, SPRITEPOS.HIDDEN, s_mkinntdk, function() {audio_play_sound(snd_heartbeats, 0, false)}),
	ntxt(000, KANA.SCARED, SPRITEPOS.LEFT),
	ntxt(000, ME.WHAA, SPRITEPOS.CENTER),
	
	ptxt(),
	txt("The room went dark.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	txt("Mokou kept coughing and just wouldn't stop."),
	txt("We both froze for only a second... but that was enough."),
	txt("By the time the coughing ended, all we could see was the outline of a collapsed body on the floor, unmoving.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	txt("Oh my gosh...", KANA.SCARED, u, u, function() {textbox_set_type(global.textdefault)}),
	txt("Is she...", ME.WHAA),
	
	ntxt(0069, MOKOU.HMPH, SPRITEPOS.RIGHT, s_mkinnt, function() {audio_play_sound(snd_game_explosion4, 0, false)}),
	//big sound effect of magic RESSURECTION BWAAHM
	//game_explosion4
	
	txt("Holy macaroni, that hurt.", MOKOU.HMPH, u, u, function() {music_set(mus.dancers5)}),
	txt("Sorry you had to see that.", MOKOU.NEUTRAL),	
	txt("Wha...", ME.WHAA),
	txt("No worries, I'm all fine now.", MOKOU.YAY),
	txt("Tell me... did you get this from Kaguya?", MOKOU.HMPH),
	txt("Y-yes...", KANA.SCARED),
	txt("Was that your reason for coming here? Poisoning me?", MOKOU.MAD),
	txt("N-no! We promise!", KANA.SCARED),
	txt("We're not assassins or anything like that!", KANA.SCARED),
		
	txt("...", MOKOU.MAD),
	txt("You seem sincere enough.", MOKOU.HMPH),
	txt("Just... don't do any more favors for her, okay?", MOKOU.NEUTRAL),
	txt("She does this sort of thing every time. We kind of hate each other.", MOKOU.DEF),	
	txt("That's awful!", KANA.SCARED),
	txt("Yeah, a little. None of it does any real damage, though.", MOKOU.DEF),
	txt("Since, you know... I can't die.", MOKOU.NEUTRAL),
	
	txt("You...", ME.NEUTRAL),
	txt("Every time I die, I just come right back.", MOKOU.DEF),
	txt("That's how it's been, and that's how it'll always be.", MOKOU.DEF),
	txt("Forever.", MOKOU.SAD),
	txt("...But that's enough about me.", MOKOU.HMPH),
	txt("How the heck do you know Kaguya? She never lets visitors in.", MOKOU.HMPH),
	txt("Especially not \"impure earthlings.\"", MOKOU.HMPH),
	//probably abrupt but GO GO GO WE NEED THIS DONE ASAP
	ntxt(0000, KANA.NEUTRAL, SPRITEPOS.LEFT),
	txt("I just stumbled upon her house many moons ago.", ME.HEHE),
	txt("But she welcomed Kana and I with open arms!", ME.HEHE),
	txt("Really now? That selfish, stuck-up lunatic?", MOKOU.COCKY),
	txt("Are you sure you didn't just meet a lookalike?", MOKOU.COCKY),
	txt("...Yes, she is a selfish stuck-up lunatic.", ME.HEHE),
	txt("But she's a really nice selfish stuck-up lunatic if you get to know her!", ME.WINKYHEART),
	txt("Really.", MOKOU.BRUH),
	txt("Really!", ME.YAY),
	txt("...Heh.", MOKOU.DEF),
	txt("You're lucky I'm in a good mood right now, or you'd be finding out what a fifth-degree burn feels like.", MOKOU.SMUG),
	ntxt(0000, KANA.SCARED, SPRITEPOS.LEFT),
	ntxt(0030, ME.WHAA, SPRITEPOS.CENTER),
	txt("Kidding, kidding!", MOKOU.YAY),
	txt("Only third-degree.", MOKOU.SMUG),
	//should we continue the conversation word for word or skip over it? dunno
	ntxt(0000, KANA.DEF, SPRITEPOS.LEFT),
	ntxt(0000, ME.DEF, SPRITEPOS.CENTER),
	ptxt(),	
	txt("Our conversation continued like that for a while. Kana described her old mansion and family, while Mokou kept a light flame above her hand, occassionally replying. Along the way, we learned... an amount of things about her.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	txt("She lives mostly as a hermit, in the company of fairies more than humans. Though she sometimes visits the human village for supplies or talking to friends."),
	txt("She runs a yakitori stand, which is how she can afford her few worldly possessions; clothes, books, and the occassional snack."),
	
	txt("When you can't die, it's hard to care about food or comfort.", MOKOU.DEF, u, u, function() {textbox_set_type(global.textdefault)}),
	txt("...By the way, keep the whole immortality thing between us, alright?", MOKOU.DEF),
	txt("You saw it, but that ain't supposed to be a public thing.", MOKOU.DEF),
	txt("Right!", ME.YAY),
	
	txt("And what about you? You've been awfully quiet about yourself.", MOKOU.DEF),
	txt("Me?", ME.POGQMARK),
	txt("I'm a princess!", ME.YAY),
	txt("Really now?", MOKOU.BRUH),
	//since its kotohimes normal outfit in the 2nd draft, have mokou be all like "i thought you were cosplaying or somethin"
	txt("Do I not act like one?", ME.YAY),
	txt("Not particularly.", MOKOU.NEUTRAL),
	txt("That's not a bad thing to me, though. I hate those snooty types.", MOKOU.DEF),
	txt("Wow, I could never have guessed!", KANA.WINKY),
	txt("Really, I spend most of my time collecting stuff. Random nicknacks, spells, games, and stories. Lots of stories.", ME.HEHE),
	//awkwardly phrased. dont feel like fixing it yet
	txt("Interesting. And you're allowed to go out with only a poltergeist by your side?", MOKOU.DEF),
	txt("No.", ME.DEF),
	txt("Thought so.", MOKOU.SMUG),
	//should there be another line or two here? you decide!
	txt("By the way, what's your name?", MOKOU.DEF),
	ntxt(000, KANA.NEUTRAL, SPRITEPOS.LEFT),
	txt("...", ME.DISAPOINT),
	txt("What's in a name? That which we call a rose#By any other name would smell as sweet.", ME.TINYSMIRK),
	txt("...", MOKOU.BRUH),
	txt("I gotta go to the bathroom now.", ME.YAY),
	txt("Have fun talking, you two!", ME.YAY),
	txt("Er... do you even have a bathroom?", ME.NEUTRAL),
	txt("There's a hole in the ground outside. Just look around for a minute, you'll find it.", MOKOU.DEF),
	txt("Sorry, that's probably a total disgrace for a princess.", MOKOU.NEUTRAL),
	//does this line fit?
	txt("Nah, it's fine. I've went in worse.", ME.DEF),
	ntxt(0, ME.DEF, SPRITEPOS.HIDDEN),
	
	ptxt(),
	txt("In truth, I didn't have to go right then. This was all part of my master plan.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	txt("Despite Mokou's earlier insistence, I wasn't quite convinced that things couldn't work between them."),
	txt("Mokou seemed friendly the both of us, and Kana had a little twinkle in her eye as they talked."),
	txt("But at the very least, these two needed to be alone for something special to take place."),
	txt("That was certainly my only reason for leaving."),
	
	ptxt(),
	ntxt(00, MOKOU.DEF, SPRITEPOS.HIDDEN),
	ntxt(00, KANA.DEF, SPRITEPOS.HIDDEN),
	
	txt("By the time I got done with my business, they were already midway through their conversation.", u, u, s_mkhsnt, function() {music_set(mus.wind1)}),
	txt("They sounded... oddly serious."),
	txt("I decided to wait, and simply pressed my ear against the door."),
	
	ptxt(),
	txt("So this girl dreamt you into existence?", MOKOU.DEF),
	txt("Yeah, basically.", KANA.DEF),
	txt("She was going through a lot of horrible things. Her family said they loved her, but...", KANA.DEF),
	ptxt(),
	txt("Anyways, I was the monster in her closet. Something to project all the fear and sadness onto.", KANA.DEF),
	txt("I had horrible red spots all over me, disfigured legs, long claws and black eyes.", KANA.DEF),
	txt("To be honest, I was okay with that. That's just what a poltergeist was to me.", KANA.DEF),
	txt("But as time passed, she became less afraid of me. I went from an imaginary monster to an imaginary friend.", KANA.DEF),
	txt("Or, maybe she was still afraid of me... just less so than the other things.", KANA.DEF),
	
	ptxt(),
	
	txt("...Did you like her?", MOKOU.DEF),
	txt("Yes.", KANA.DEF),
	txt("We had a lot of fun in those days.", KANA.DEF),
	txt("I became more humanlike in mind, body, and spirit.", KANA.DEF),
	txt("We played games, read together, and talked about our lives.", KANA.DEF),
	//should there be another line or two here? you decide!
	txt("And then she left.", KANA.DEF),
	
	ptxt(),
	
	txt("The mansion was totally empty for a while, until a new family moved in.", KANA.DEF),
	txt("And when they got there... just like my mother, they were terrified of me. But they left before I could befriend them.", KANA.DEF),
	txt("Years later, a new family moved in. And they were a little less scared of youkai. They put seals on the house to keep me from coming out.", KANA.DEF),
	txt("It went on like this until the princess and I met.", KANA.DEF),
	txt("I'm living at her place now, but she's the only one there that likes me. Everyone else is just like the other families.", KANA.DEF),
	txt("It makes sense, of course. I'm a poltergeist.", KANA.DEF),
	
	ptxt(),	
	txt("...", MOKOU.DEF),
	txt("Being unwanted is hard.", MOKOU.DEF),
	txt("When your own creator deems you a mistake. Your very existence is a thing to fear, a thing to hide away. Even when given food or shelter, you're being starved.", MOKOU.DEF),
	txt("By instinct, you search for some way to get that nourishment, through any means necessary.", MOKOU.DEF),
	txt("At first you cry and beg. That doesn't work, so you try to earn it. That doesn't work, and you start to believe that you've done something wrong.", MOKOU.DEF),
	txt("...That you *are* something wrong.", MOKOU.DEF),
	txt("Then you either wither away, believing they are right... or you do something stupid.", MOKOU.DEF),
	//kinda awkwardly phrased
	
	ptxt(),
	txt("You can leave that place, bask in the sunlight, and eat the most delicious food in the world...", MOKOU.DEF),
	txt("But those days stick with you.", MOKOU.DEF),	
	txt("...|w064 |- ", KANA.DEF),
	txt("Uhm...", KANA.DEF),
	txt("Is it possible to move on from something like that? Find a new family, or make peace with your old one?", KANA.DEF),
	txt("Can you become truly happy despite it?", KANA.DEF),
	txt("...|w0108 |- ", MOKOU.DEF),
	txt("Beats me.", MOKOU.DEF),
	
	ptxt(),
	
	txt("They both went silent."),
	txt("The wind laid heavy on my shoulders, its song only a hollow whisper."),
	txt("I couldn't stand hiding there for even another second."),
	//maybe another line here?
	ntxt(0, u, u, u, function() {audio_play_sound(snd_bath_door_O, 0, false)}),
	ntxt(0, KANA.DISTANT, SPRITEPOS.RIGHT),
	ntxt(0, MOKOU.SAD, SPRITEPOS.CENTER),
	
	txt("Hey, I'm back!", ME.YAY, SPRITEPOS.LEFT, s_mkinnt, function() {textbox_set_type(global.textdefault)}),
	txt("Oh, hey.", MOKOU.DEF),
	txt("Hi.", KANA.DISTANT),
	txt("Kana, let's go home. It's getting SUPER early.", ME.DEF),
	txt("Ah, you're right. The sun's going to come out soon, isn't it?", MOKOU.NEUTRAL),
	txt("Sorry for keeping you so long. Time really flies.", MOKOU.DEF),
	txt("It's fine. I had a good time talking.", KANA.YAY),
	txt("Same here.", MOKOU.DEF),
	//even the phoenix of the forest cannot melt this glacial pacing
	
	ntxt(00, MOKOU.DEF, SPRITEPOS.HIDDEN),
	ntxt(00, KANA.DEF, SPRITEPOS.HIDDEN),
	ntxt(00, ME.DEF, SPRITEPOS.HIDDEN),
	ptxt(),
	txt("We bid farewell and promised to come back soon.", u, u, s_bamboonight, function() {textbox_set_type(global.textnvl)}),
	txt("On our way out of the Bamboo Forest, we tried talking about Mokou. It was fun, but neither of us had the same spark as before. Something about her demeanor had rubbed off on us."),
	txt("As we left the forest, Kana requested a detour to the Misty Lake."),
	txt("Since the sun was rising so soon... we might as well watch it."),
	ptxt(),	
	txt("When we got there, it was far too silent. There should've been birds singing or fairies playing, but only the flow of water welcomed us.", u, u, s_mistylakesunrise, function() {music_set(mus.autumn)}),
	txt("We sat on the side of a rock, watching the sun appear."),
	txt("Normally I would be exhausted, but I had slept through the whole afternoon that day."),
	txt("So watching the sun rise felt no different from seeing it set."),
	txt("We kept silent the whole time, but that was okay."),
	
	txt("You know... I think I'm ready to give up on our search.", KANA.AWW, SPRITEPOS.RIGHT, u, function() {textbox_set_type(global.textdefault)}),
	txt("Really? We only just started!", ME.POGQMARK, SPRITEPOS.LEFT),
	txt("Yeah. It's just... maybe the whole \"dream girl\" thing isn't helping.", KANA.AWW),
	txt("What do you mean?", ME.KAAAY),
	txt("It's too specific. Everyone we've met has some things I like, and some things I don't.", KANA.NEUTRAL),
	txt("Maybe I should get to know them more. All we've even done is introductions.", KANA.DEF),
	txt("Hmm...", ME.DISAPOINT),
	txt("You're right.", ME.TINYSMIRK),
	txt("...|w0132 |- ", KANA.LOVEYSHY),	
	txt("You alright?", ME.NEUTRAL),
	txt("Yeah, yeah!", KANA.YAY),
	txt("Just... you know.", KANA.DEF),
	txt("I don't.", ME.NEUTRAL),
	txt("...", KANA.AWW),
	txt("I thought about it on our way here. All the things we've done together.", KANA.AWW),
	txt("And... it really means a lot to me, you know?", KANA.AWW),
	txt("...Thanks.", ME.HEHE),	
	txt("We made a big deal out of finding a girlfriend before, but...", KANA.YAY),
	txt("I think I already know who I like most.", KANA.YAY),
	txt("Really? That's amazing!", ME.YAY),
	txt("Who is it?", ME.YAY),
	txt("...Can you close your eyes? I need to get something.", KANA.WINKY),
	txt("O-kaaaaay...", ME.HEHE),
	ntxt(00, KANA.DEF, SPRITEPOS.HIDDEN),
	ntxt(00, ME.DEF, SPRITEPOS.HIDDEN),
	ptxt(),
	txt("In that moment, I was racking my brain trying to think of what she had.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	txt("Had she brought a souvenir? Did she want to write a love letter for one of our friends?"),
	txt("Oh, in that case, it was probably Reisen! That's the one she looked the most happy with."),
	txt("Then again, Kaguya and Mokou each had very strong points. Maybe Kana saw through Kaguya's princess-like attitude-- or did she secretly like it?"),
	txt("Ooh, maybe she found Mokou's angst attractive! Lone wolves are pretty cool, even to me!"),
	ptxt(),
	txt("I closed my eyes and waited for Kana to say something.", u, u, s_black),
	txt("And waited..."),
	txt("And waited..."),
	
	ptxt(),
	txt("And then I felt it."),
	txt("A little peck on the lips. Soft and light."),
	txt("By the time I even realized what it was, it was gone."),
	//yes this kiss aint consensual
	//im kinda going off romance mango logic here
	//(and also having kotohime's eyes closed makes for a great way to save on assets!!!)
	ntxt(00, KANA.LOVEY, SPRITEPOS.RIGHT, s_mistylakesunrise),
	ntxt(80, ME.NEUTRAL, SPRITEPOS.LEFT),
	
	//should she say "i love you"?? you decide!
	txt("You're my dream girl.", KANA.LOVEY, u, u, function() {textbox_set_type(global.textdefault)}),
	//ha ha super cheesy and dumb
	//keep it or dont
	txt("And I wouldn't have it any other way.", KANA.LOVEY),
	txt("So...", KANA.LOVEY),
	txt("Will you be my girlfriend?", KANA.LOVEY),
	
	txt("...", ME.DISTANT),
	txt("?", KANA.LOVEYSHY),
	txt("Sorry.", ME.DISTANT),
	txt("...", KANA.DISTANT),
	txt("Do you... not like me?", KANA.DISTANT),
	txt("No, no, I do like you!", ME.NEUTRAL),
	txt("Just... as a friend.", ME.DISTANT),
	txt("Ah... I...", KANA.AWW),
	txt("It's not you, it's me. I'm not a girlfriend-having kind of person.", ME.NEUTRAL),
	txt("...You don't swing that way?", KANA.AWW),
	txt("I don't swing in the first place.", ME.DISAPOINT),
	txt("Oh...", KANA.DISTANT),
	txt("S-sorry...", KANA.SADSMILE),
	txt("...", ME.DISTANT),
	
	txt("The sun is up now.", ME.DISTANT),
	txt("Wanna go home?", ME.DISTANT),
	txt("...Yeah.", KANA.DISTANT),
		
	//maybe this scene should play out differently?
	//its an okay idea on its own
	//but it might be kinda dumb that kotohime being aro ace is exclusively used as a source of sadness and introspection
	//but that may be excusable for this story
	//in part because a LOT of things are used as a source of sadness and introspection
	//dunno
	
	ntxt(00, KANA.DEF, SPRITEPOS.HIDDEN),
	ntxt(00, ME.DEF, SPRITEPOS.HIDDEN),
	
	ptxt(),	
	txt("As the fairies came out and sang their songs, we walked in silence, gazing at anything but each other.", u, u, s_black, function() {textbox_set_type(global.textnvl)}),
	txt("The wind bit at us, and the beautiful water of the Misty Lake looked ice-cold."),
	ptxt(),
	txt("When we got home, we were met with exactly what should've happened."),
	txt("My parents yelled at me for leaving so long, but I didn't mind much. I was far more furious with myself than they could ever be."),
	txt("The next couple days were silent too. We didn't do much together, and each time I looked into Kana's eyes, they looked farther and farther away.", u, u, s_kotohimehall),
	txt("Something had to be done about this."),
	
	txt("Hey, Kana?", ME.NEUTRAL, SPRITEPOS.MIDRIGHT, u, function() {textbox_set_type(global.textdefault)}),
	txt("Yeah?", KANA.NEUTRAL, SPRITEPOS.LEFT),
	txt("What if you moved into the House of Eternity?", ME.DEF),
	txt("...Why?", KANA.AWW),
	txt("You liked playing games with Reisen. You liked Kaguya and Mokou alright, and I think you'll take a fancy to Eirin.", ME.TINYSMIRK),
	txt("Any of them would be great to get to know.", ME.HEHE),
	txt("And... it seems to me like you're looking for a family.", ME.TINYSMIRK),
	txt("I can't give that to you on my own, but maybe Kaguya and her friends can.", ME.DISTANT),
	txt("I want to be with you, though...", KANA.LOVEYSHY),
	txt("I promise I'll visit as much as possible!", ME.YAY),
	txt("And maybe it'll be easier this way. If we're not living together, we'll feel more like friends.", ME.DEF),
	txt("You'll get to meet tons of new people who all welcome you.", ME.HEHE),
	txt("You'll get to learn tons of new things about Gensokyo, the moon, and youkai.", ME.HEHE),
	txt("And whenever you wish, you can come over to my house, and we'll finally make those chocolate-chip cookies together!", ME.WINKYHEART),
	txt("...", KANA.LOVEYSHY),
	txt("Okay.", KANA.LOVEY),

	ptxt(),
	txt("At the time, I couldn't tell if Kana was totally happy with it.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	txt("Even so, we visited the House of Eternity to work it out."),
	txt("Kaguya was on board with it, and so were Reisen and Eirin."),
	txt("And before we knew it, Kana had been magically transferred to the House of Eternity."),
	
	ntxt(00, KANA.NEUTRAL, SPRITEPOS.MIDLEFT),
	ntxt(00, ME.TINYSMIRK, SPRITEPOS.LEFT),
	ntxt(00, KAGUYA.FUFUFU, SPRITEPOS.RIGHT),
	txt("Good afternoon, Miss Anaberal.", REISEN.HEH, SPRITEPOS.MIDRIGHT, s_eienteiday, function() {textbox_set_type(global.textdefault)}),
	txt("What's with the formality?", KANA.NEUTRAL),
	txt("There's no reason to treat you like an outsider anymore. You're here to stay, aren't you?", REISEN.HEH),
	txt("As long as I'm allowed to.", KANA.DEF),
	txt("You'll need to do about 5000 menial tasks per day to stay. Cooking, cleaning, directing the youkai rabbits, laundry...", REISEN.SMUG),
	txt("Okay!", KANA.YAY),
	txt("If that's what you need, I'm ready to take on all the chores you got!", KANA.COCKY),
	txt("Oh my gosh, you'll actually help me out? I was just joking!", REISEN.YAY),
	txt("Of course! Better to make myself useful to my new family!", KANA.WINKY),
	txt("Oh, I can't wait! Come on, let's get you introduced to life here!", REISEN.YAY),
		
	ntxt(00, KANA.DEF, SPRITEPOS.HIDDEN),
	ntxt(30, REISEN.DEF, SPRITEPOS.HIDDEN),
	
	txt("Thank you so much for doing this.", ME.DEF),
	txt("Oh, it's my pleasure.", KAGUYA.FUFUFU, SPRITEPOS.CENTER),
	txt("Even as a *pure and noble Lunarian princess,* I simply adore this ghost's company.", KAGUYA.FUFUFU),
	txt("I promise we'll take good care of her.", KAGUYA.YAY),
	txt("...I'm glad.", ME.HEHE),
	txt("Well, I must go now. It's about time to water the bonsai tree.", KAGUYA.DEF),
	txt("The bonsai tree? That won't ever grow, will it? Due to your spell and all.", ME.KAAAY),
	txt("Oh, it's just an old habit of mine. It gives me something to do every day.", KAGUYA.FUFUFU),
	txt("Even something so small alleviates much of my boredom.", KAGUYA.FUFUFU),
	txt("I'll leave you to it, then.", ME.HEHE),
	ntxt(40, KAGUYA.DEF, SPRITEPOS.HIDDEN),
	
	//sound effect of a bit of running for just a sec
	
	txt("...", ME.DISAPOINT),
//	ntxt(0333, u, u, u, function() {audio_play_sound(snd_running_in_fall_forest, 0, false)}),
	txt("--one more thing!", KANA.DEF),
	
	ptxt(),
	txt("Just as I turned around to leave, Kana rushed back to me with something in her hand.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	ntxt(00, ME.DEF, SPRITEPOS.HIDDEN),
	txt("Her little straw hat.", u, u, s_hat),	
	txt("Here you go. Take it.", KANA.LOVEY, SPRITEPOS.RIGHT, u, function() {textbox_set_type(global.textdefault)}),
	//kana has no hat on	
	txt("...Really?", ME.NEUTRAL, SPRITEPOS.LEFT, s_eienteiday),
	txt("Yeah. I don't want it anymore. So... you can keep it.", KANA.LOVEY, SPRITEPOS.RIGHT),
	txt("It might look nice on you.", KANA.LOVEY),
	txt("...", ME.DISTANT),
	txt("Thanks.", ME.TINYSMIRK),
	txt("...", KANA.LOVEYSHY),
	txt("Have fun over there, okay?", ME.DEF),
	txt("I'll try.", KANA.YAY),
	txt("...That's good enough for me.", ME.HEHE),
	txt("See you tomorrow!", ME.WINKY),
	txt("See ya!", KANA.WINKY),
	
	ntxt(0030, KANA.DEF, SPRITEPOS.HIDDEN),
	
	ntxt(0190, ME.TINYSMIRK, SPRITEPOS.LEFT),
	ntxt(090, ME.TINYSMIRK, SPRITEPOS.HIDDEN),
	ntxt(0040, u, u, s_black),
	
	txt("#END OF KANA STORY|w0300 |- "),
	
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {textbox_create(txt_kagumoku)};
}





