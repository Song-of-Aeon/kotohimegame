function txt_begin() {

	msg = msglang([
	
	
	txt("Hey...", u, u, s_black, function() {music_set(mus.null)}),
	txt("Have you ever wondered if you're really living?"),
	txt("I don't mean having a body of flesh and blood and a beating heart-- we in Gensokyo know you don't need that to live."),
	txt("I mean... LIVING. Whatever that means to you."),
	txt("Funny question, isn't it? It's simple for some, and for others it's nigh-impossible."),
	txt("To many long-lived youkai, life is safety and freedom."),
	txt("To the citizens of the Lunar Capital, life is just continued existence."),
	ptxt(),
	txt("To me... life means movement. Growth. Change."),
	txt("Floating on the wind,#swimming through the seas,#finding patches of shelter and sunlight,#and becoming a part of the world."),
	txt("Even being stomped on and crushed forever is a form of living. Because while you can't see it, the seeds you bore will carry on through the wind, and you will live through them."),
	txt("But when you sink into the shadows, sealing your fate to whither away and leave nothing but ash... you are not living, but slowly dying."),
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
	txt("At least, not most of the time.", ME.HEHE),
	txt("Now, are you ready for some romance?", ME.DEF),
	txt("Good!|w0050#This one is the story of how a twinkle in the sky became a shooting star.", ME.YAY),
	
	//footsteps sound and crickets, fading into kotohime with daytime forest background
	//ADV textbox
	
	
	
	txt("Angel, angel, in the sky--", ME.YAYNOTE, SPRITEPOS.RIGHT, s_forest, function() {music_set(mus.ragnarok)}),
	txt("Whatever could have made you cry?", ME.YAYNOTE),
	txt("For your wings are so bright", ME.YAYNOTE),
	txt("They light up the night", ME.YAYNOTE),
	txt("And make my own tears wave goodbye!", ME.YAYNOTE),
	
	//NVL textbox
	
	ptxt(),
	
	txt("The princess Kotohime, frolicking about in the woods.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	txt("After so long staying cooped up in my castle, I wished to leave."),
	txt("My parents insisted on bringing a bodyguard, but I couldn't stand the idea. How could I appreciate the view with a servant breathing down my neck?"),
	ptxt(),
	txt("And out here, I knew going alone was the right choice."),
	txt("This place had just fallen under a great shower of magic and wonder."),
	txt("The leaves looked like little shards of bent starlight, the morning dew forming little twinkles."),
	txt("Seeing this filled my heart with a song I had never heard before."),
	txt("Arms waving about, admiring every sight and sound, I sang with nobody to hear."),
	txt("I was out of tune, out of key... out of my mind."),
	txt("...But that turned out to be a good thing."),
	
	//ADV textbox
	
	txt("And as the sandcastles melt,", ME.YAYNOTE, u, u, function() {textbox_set_type(global.textdefault)}),
	txt("Will you see on my face, a much brighter place", ME.YAYNOTE),
	txt("Than the one--|-", ME.YAYNOTE),
	
	//loud stick cracking sound effect
	
	txt("...", ME.WHAA, u, u, function() {music_set(mus.null)}),
	txt("What was that?", ME.WHAA),

	ptxt(),
	
	txt("In the distance, among the thickets and trees... was a girl.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	txt("Suspended in the air and tangled up in vines and branches, frozen in place with a look of terror."),
	txt("Large multicoloured orbs laid on the ground around her, emitting a glowing light."),
	txt("In a moment, the lively forest had frozen, though it was only her and I that stood still."),
	
	ptxt(),
	
	txt("...", GIRL.UHH, SPRITEPOS.MIDLEFT, u, function() {textbox_set_type(global.textdefault)}),
	txt("Hey. Are you okay?", ME.DEF),
	txt("Yeah! I'm... fine.", GIRL.UHH),
	txt("Are you sure? I can help you out of there if you'd like.", ME.DEF),
	txt("Lady Mima says not to accept help from strangers. So...", GIRL.HUH),
	txt("But I'm not a stranger! You know my name, don't you!?", ME.MIFFED),
	txt("I don't...", GIRL.UHH),
	txt("Oh, I forgot! You're absolutely correct!", ME.POG),
	txt("Well, if you still don't want help, I can leave you here in this pickle. Or more like a cucumber. A really tasty one that some wandering kappas would gobble right up!", ME.WAAH),
	txt("...", GIRL.WAAH),
	txt("Okay...", GIRL.AWW),
	
	//use |l0.5 when mary says "okay..."

	ntxt(0000, GIRL.DEF, SPRITEPOS.HIDDEN),
	ntxt(0000, ME.TINYSMIRK, SPRITEPOS.MIDRIGHT),
	
	ptxt(),
	
	txt("Looking closely, I saw spikes on the vines. Each one was covered in them, and each ended with a sharp needle that clawed at every part of the girl.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	txt("Yet somehow, they could not pierce her clothes or her skin."),
	txt("I had seen these in countless books before. These were the vines of a jubokko, a youkai tree that would snatch its prey and suck their blood dry."),
	txt("With that, I came to the conclusion that only a massive explosion could take out these vines."),
	txt("Thinking back, they could definitely be cut up with a knife. But at the time, my mind was looking for any excuse to blow things up."),
	
	ptxt(),
	
	txt("With a fingersnap and a flash of light, a bomb sat in my hand. A little black ball the size of a dumpling, holding enough power to destroy a castle."),
	txt("Don't worry, don't worry! It was a magic bomb that could only damage what I wanted it to."),
	//sound effect BOOM and screen shake, <WAI of a couple seconds before starting the text again
	txt("I probably scared her half to death, but it was totally harmless in the end."),
	txt("With little more than a stumble, the girl got up and reluctantly thanked me.", u, u, u, function() {music_set(mus.flower)}),
	
	
	ptxt(),
	
	//function() {music_set(mus.flower)}
	
	//

	txt("So who are you?", ME.DEF, SPRITEPOS.LEFT, u, function() {textbox_set_type(global.textdefault)}),
	txt("Uh...|w0060 I'm a witch. My name is Mari... uhm, Maris-", GIRL.DEF, SPRITEPOS.CENTER),
	txt("Mary?! What a great name!", ME.YAY),
	ntxt(0000, GIRL.WAAH, SPRITEPOS.HIDDEN),
	txt("That's not...", MARY.UHH, SPRITEPOS.CENTER),
	txt("So Mary, why are you in such a dangerous place?", ME.DEF),
	txt("I'm, uh... training my magic power. I need to beat someone in a fight.", MARY.HUH),
	txt("Whoah!", ME.POG),
	txt("Are you one of those youkai exterminators?", ME.POGQMARK),
	txt("Not really. I sorta... work for a youkai.", MARY.AWW),
	txt("That's even better!", ME.POG),

	ptxt(),

	txt("We talked like this for a while. I didn't know many witches, so I couldn't help but bombard her with questions.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	txt("\"Student of Lady Mima, the vengeful ghost,\"#\"Novice in everything but starlight magic,\"#\"Lives in a mighty palace in another world.\""),
	txt("Every word she uttered made her seem even cooler."),
	
	
	txt("I don't actually live in the palace right now. It was my home for a while, but then Lady Mima was... exterminated.", MARY.HUH, u, u, function() {textbox_set_type(global.textdefault)}),
	txt("Lady Mima is strong, so I know she'll come back.", MARY.HUH),
	txt("But in the meantime, all I can do is wait around and train myself.", MARY.HUH),
	txt("That must be such fun! I'm so jealous!", ME.YAYNOTE),
	txt("If you say so.", MARY.HUH),
	txt("Lady Mima isn't what I'm worried about, though. It's... something else.", MARY.AWW),
	txt("Hmm?", ME.DEF),
	txt("There's... there's this girl I really like. Like, LIKE like.", MARY.HUH),
	txt("Like, friend like?", ME.DEF),
	txt("Like, LOVE like.", MARY.HUH),
	txt("Yeah, that's it... I'm in love with her.", MARY.DEF),
	txt("Aww, that's so sweet!", ME.YAYNOTE),
	txt("If you say so.|n#But I don't think she likes me back.", MARY.AWW),
	txt("Really? How do you know?", ME.DEF),
	txt("She beat the crud outta me.", MARY.HUH),
	txt("Oh.", ME.KAAAY),
	txt("I just couldn't fight back properly! Every time I looked into her eyes, my heart would beat really fast and I'd just want to run up and hug her!", MARY.HAAHH),
	txt("But Lady Mima would be so mad if I said anything. Because that girl... she's the one who exterminated Lady Mima!", MARY.AWW),			
	txt("I just don't know what to do!", MARY.HAAHH),
	txt("How about I help you out?", ME.TINYSMIRK),
	txt("I'll set up a date with you two, and give you a few tips and pointers.", ME.TINYSMIRK),
	txt("You two will be a couple in no time.", ME.HEHE),
	txt("And when \"Lady Mima\" finally comes back, she'll see how lovey-dovey you are together and forgive the both of you!", ME.YAY),
	txt("Really? You know how to do all that? Dating and confessing and romance?", MARY.OOH),
	txt("Not at all!", ME.WINKYHEART),
	txt("But I have a few books on it.", ME.DEF),
	txt("Besides, it's just a little crush! How hard can that be?", ME.SMUG),
	//txt("No need to pay me back, by the way. Helping out a friend in need is reward enough!", ME.TINYSMIRK),
	txt("...|n#Okay.", MARY.AWW),
	txt("Deal.", MARY.DEF),
	
	
	
	
	ntxt(000, MARY.DEF, SPRITEPOS.HIDDEN),
	ntxt(0000, ME.DEF, SPRITEPOS.HIDDEN),
	
	
	ptxt(),
	
	txt("We arranged a time and place, and met up the next day. It was at the base of a long staircse near the forest.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	txt("Of course, I didn't tell anyone at home. If my parents knew what I was up to, they would certainly throw a fit."),
	txt("But for the whole night, I kept my face buried in romance books. I needed to know how this stuff worked as soon as possible!"),
	txt("My favorite source was comics from the outside world. I had picked them up from Muenzuka, but never quite gotten around to reading them until now."),
	txt("Stories from the outside world always taught me so much, and these were no exception."),
	txt("By the next afternoon, I was all ready to take on the challenge."),
	
	ptxt(),
	
	//begin "music" track of footstep sounds on stone
	
	
	txt("HEY, MARY!|n GREAT TO-|-", ME.YAY, SPRITEPOS.CENTER, s_steps, function() {textbox_set_type(global.textdefault)}),
	txt("D-don't be so loud...!", MARY.UHH, SPRITEPOS.RIGHT),
	txt("She might hear us.", MARY.UHH),
	txt("Whoopsies!", ME.YAYNOTE),
	txt("She's probably at the top of these steps. We're supposed to think of a plan first, right?", MARY.HUH),
	txt("Correct.", ME.HEHE),

		
	txt("So, what's this girl like?", ME.DEF),
	txt("She's...|n wonderful.", MARY.HUH), //, u, u, function() {music_set(mus.sunrise)}),
	
	//marisa nerds out about reimu
	//writing this has me sliiiightly stumped
	//is what's here right now enough?
	
	ntxt(0000, ME.TINYSMIRK, SPRITEPOS.CENTER),
	
	txt("She has this feeling about her that's so carefree, but so mature too.", MARY.AHHH),
	txt("The way she talks, the way she moves, the way she looks at you with those beautiful eyes...", MARY.AHHH),
	txt("Everything about her is just...", MARY.AHHH),
	ntxt(0000, ME.POG, SPRITEPOS.CENTER),
	txt("There she is!", MARY.OOH),
	
	ptxt(),
	
	txt("A shrine maiden in the distance swept the grounds, oblivious to our presence.", u, u, s_shrine, function() {textbox_set_type(global.textnvl)}),
	txt("Looking at her, I could see what Mary meant. Something about her felt... different from most people."),
	txt("Her name was \"Reimu.\" As far as Mary knew, she was the only inhabitant of the shrine, besides a large turtle she kept around. Despite the responsibility of caring for herself, the turtle, and the shrine, she was happy as could be."),
	txt("Mary and I talked for a minute about what to do."),
	txt("It was a simple plan."),
	
	//the plan involves kotohime exploderizing a huge magic that creates fireworks
	//the rest is just marisa doing a little confession speech
	
	
	
	
	//maybe i should actually show the talking and planning between kotohime and marisa to build their characters but ugg that would slow down the paciiingggggg even moreeeeeeeeee
	//txt("All she had to do was walk up and say \"I really like you. Will you please go out with me?\""),
	//txt("Oh, and create a huge shower of fireworks. Can't do a confession without a little spectacle!"),
	
	ptxt(),
	
	txt("Okay...|n#I'm ready.", MARY.HUH, u, u, function() {textbox_set_type(global.textdefault)}),
	
	//sound of footsteps
	ntxt(0000, ME.DEF, SPRITEPOS.HIDDEN),
	ntxt(0000, MARY.DEF, SPRITEPOS.HIDDEN),
	
	
	txt("Oh, hey.", REIMU.DEF, SPRITEPOS.LEFT),
	txt("You here to donat--|w0030|-", REIMU.DEF),
	txt("Hey, I know you!", REIMU.SWEAT),
	txt("You're that girl that tried to kill me!", REIMU.SWEAT),
	txt("...", MARY.AWW, SPRITEPOS.MIDRIGHT),
	txt("Are you lookin for a rematch already?", REIMU.HAHA),
	txt("...Come on, Marisa. You can do this. Just...|w0030 say it.", MARY.AWW),	
	txt("No, that's not it. I don't want to fight you at all.", MARY.HUH),
	txt("Huh?", REIMU.DEF),
	txt("I never did, in fact.", MARY.HUH),
	txt("When we first fought, I was just following orders from Lady Mima.", MARY.HUH),
	txt("But right now, I'm only here with good intentions!", MARY.YAY),
	txt("Oh.", REIMU.DEF),
	txt("Well, that's nice.", REIMU.YAY),
	txt("...You wanna help me sweep the shrine?", REIMU.YAY),
	txt("Uh... sure.", MARY.UHH),
	txt("But just one more thing first.", MARY.DEF),	
	txt("Now that the battle is all over, I just want to tell you...", MARY.HUH),
	txt("?", REIMU.DEF),
	txt("I really,|n really,|n like y|-", MARY.AHHH),
	
	//|-
	
	ntxt(0000, REIMU.DEF, SPRITEPOS.HIDDEN, u, function() {music_set(mus.null)}),
	
	ntxt(0000, MARY.DEF, SPRITEPOS.HIDDEN, u, u,), //PLAY A SWORD SWING SOUND EFFECT HERE
	
	ntxt(0070),
	
	//txt("The air shook, vibrating with motion", u, u, u, function() {textbox_set_type(global.textnvl)}),
	
	
	
	ntxt(0100, MEIRA.DEF, SPRITEPOS.CENTER, u, function() {music_set(mus.graving)}),
	

	
	txt("Halt your foolish pleasantries, children!|n#It is I, Meira, the Samurai of Darkness!", MEIRA.DEF, SPRITEPOS.LEFT),
	txt("What the...", MARY.WAAH, SPRITEPOS.RIGHT),
	txt("You again?", REIMU.DEF, SPRITEPOS.CENTER),
	txt("Do you wanna sweep the shrine too?", REIMU.HAHA),
	txt("No, you dimwit! I am here for a rematch!", MEIRA.DEF),
	txt("...Really? You're trying again?", REIMU.SWEAT),
	txt("Sorry, uh...|n who are you?", MARY.HUH),
	txt("Oh, her?", REIMU.DEF),
	txt("She's my wife!", REIMU.YAY),
	
	
	//ntxt(0000, MARY.WAAH, SPRITEPOS.CENTER),
	
	
	
	
	
	ntxt(0000, MARY.SHOCKED, SPRITEPOS.RIGHT),
	
	//txt("I am NOT your wife, fool! We never agreed on such a thing!", MEIRA.ANGERY),
	
	txt("\(She's still keeping up this foolish act?\)", MEIRA.SWEAT),
	txt("She proposed to me right when we first met! I had never met someone so dashing before, so I just had to say yes!", REIMU.HAHA),
	txt("...Oh.", MARY.SHOCKED),

	txt("SILENCE!", MEIRA.ANGERY),
	txt("You disgust me, Hakurei child!", MEIRA.ANGERY),
	txt("I am a WOMAN, not a ten-year-old girl!", MEIRA.ANGERY),
	txt("If you do not stop this tomfoolery this instant, I will make the extraction of your powers especially painful!", MEIRA.ANGERY),
	txt("Our marriage is a little rocky.", REIMU.DEF),
	
	txt("That's it. Prepare yourself!", MEIRA.DEF),
	txt("I, Meira, shall take what is mine once and for all!", MEIRA.DEF),
	
	txt("WAIT!", ME.POG, SPRITEPOS.HIDDEN, u, function() {music_set(mus.null)}),
	
	ntxt(100, REIMU.DEF, SPRITEPOS.HIDDEN),
	
	txt("Aren't you ignoring somebody, Miss Meira?", ME.MIFFED, SPRITEPOS.CENTER),
	txt("Wh-who are you?", MEIRA.SWEAT),
	txt("Just a passerby here to help a friend in love.", ME.WINKY),
	txt("You see, this witch here has fallen head-over-heels for the girl you wish to take for yourself!", ME.HEHE),
	txt("It seems we have a love triangle on our hands!", ME.HEHE),

	txt("I told you, I'm not--", MEIRA.SWEAT),
	
	txt("As we all know, love triangles are one of the most dangerous kinds of conflicts.", ME.DEF),
	txt("So, I propose we take the most civil way two maidens in love can resolve this battle...", ME.HEHE),
	txt("Danmaku!!", ME.WINKYHEART),
	txt("Meira the Samurai and Mary the Witch shall fight to the \(near\) death to their utmost efforts!", ME.WINKYHEART),
	txt("If Mary loses, she cannot interrupt you in any way.", ME.DEF),
	txt("If she wins, you must break up with this shrine maiden forever!", ME.SMUG),
	
	ntxt(142, MARY.AWW, SPRITEPOS.RIGHT, u, function() {music_set(mus.flight)}),
	
	txt("Alright.", MARY.AWW),
	txt("I may not know how to do love yet...", MARY.AWW),
	txt("But a danmaku battle is my best shot here!", MARY.YAY),
	txt("Bring it on, sword-lady!", MARY.YAY),
	ntxt(0000, ME.YAYSWEAT, SPRITEPOS.CENTER),
	txt("No matter. Whether I must fight two children or two-thousand, I WILL become stronger!", MEIRA.DEF),
//	txt("That's... a little concerning.", ME.YAYSWEAT),


	//BIG BATTLE THING
	//IF WE DONT DO THE SHMUP SECTION THEN LETS JUST DESCRIBE THE BAMBAMWOOSHYPOW ACTION OKAY????

	ntxt(0, ME.DEF, SPRITEPOS.HIDDEN),
	ntxt(0, MARY.DEF, SPRITEPOS.HIDDEN),
	ntxt(0, MEIRA.DEF, SPRITEPOS.HIDDEN),

	ntxt(100),
	
	
	
	txt("Haah... haah...", MEIRA.DEF, SPRITEPOS.RIGHT),
	txt("You're stronger than I thought.", MEIRA.DEF),
	txt("You're weaker than I thought!", MARY.YAY, SPRITEPOS.CENTER),
	txt("Well?|n Are you going to keep your promise?", ME.DEF, SPRITEPOS.LEFT),
	txt("I didn't even promis-|w0040|-", MEIRA.ANGERY),
	txt("Whatever. This Hakurei girl is far more trouble than she's worth.", MEIRA.DEF),
	txt("Farewell.", MEIRA.DEF),
	
	ntxt(0050, MEIRA.DEF, SPRITEPOS.HIDDEN, u, function() {music_set(mus.flower)}),
	
	ptxt(),
	
	txt("Finally, it was over.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	txt("The afterglow from thousands of magic stars had covered the air around us in a purple hue."),
	
	txt("Mary stood in place and gazed at the shadow of Meira fading into the distance."),
	txt("In an instant, a huge grin appeared on her face, and she turned towards me."),
	txt("reimu, who was sitting on the sidelines with a huge smile, got up and started walking towards us."),
	txt("In that moment, I knew we could still salvage this."),
	txt("I beckoned Mary to me and whispered in her ear."),
	txt("Mary nodded, and turned to face Reimu."),	
	
	ntxt(0000, ME.DEF, SPRITEPOS.HIDDEN),
	ntxt(0000, MARY.HUH, SPRITEPOS.MIDLEFT),
	
	ptxt(),
	
	txt("Thanks for beating her up there! That was really fun to watch!", REIMU.YAY, SPRITEPOS.MIDRIGHT, u, function() {textbox_set_type(global.textdefault)}),
	
	
	ptxt(),
	
	txt("Mary held her hand above her head, and in an instant, we were surrounded by a starry night sky.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	txt("It was an illusion, of course. With mine and Marisa's powers combined, such a thing was elementary."),
	txt("Yet reimu's eyes lit up at the sight."),
	
	txt("It's so pretty!", REIMU.YAY, u, u, function() {textbox_set_type(global.textdefault)}),
	
	txt("...Thank you.", MARY.DEF),	
	txt("Hey, reimu?", MARY.HUH),
	txt("Yeah?", REIMU.DEF),
	txt("I know we got off on the wrong foot at first... all that stuff with Lady Mima.", MARY.AWW),
	txt("But I hope I've made it up to you now.", MARY.AWW),
	txt("Of course you have! You were really cool back there!", REIMU.YAY),
	txt("Way cooler than Meira, even!", REIMU.HAHA),
	txt("Really?", MARY.OOH),
	txt("Totally!", REIMU.HAHA),
	ntxt(0000, REIMU.DEF, SPRITEPOS.MIDRIGHT),
	
	
	txt("Then...", MARY.HUH),
	txt("I promise to be way better to you than Meira ever was.", MARY.HUH),
	txt("Even though she only wanted you for your powers...", MARY.AWW),
	txt("I want you... for you.", MARY.AHHH),
	txt("I've... never met someone so dashing before.", MARY.AHHH),
	txt("Everything you say, everything you do...", MARY.AHHH),
	txt("You radiate a beautiful light all the time.", MARY.AHHH),
	txt("I guess, to put it another way...", MARY.AHHH),
	
	//couple-second-long pause as the sound of fireworks exploding happens
	//maybe image of firework exploding?
	
	
	//CG HERE (or description if we cant do that)
	//basically marisa has her arms outstretched and smiling with fireworks behind her
	//yeah
	
	txt("I really, really like you!", MARY.YAY),
	txt("Will you please go out with me?", MARY.YAY),
	txt("...", REIMU.DEF),
	txt("Sure!", REIMU.HAHA),






	
	
	//txt("So when are we gonna meet up again?", ME.DEF),
	//txt("You know what? I think I'm okay for now.", MARY.DEF),
	
	
	
	
	
	//kotohime and marisa and reimu occassionally had conversations and friendly sparring matches
	//HEY DID YOU KNOW THAT NONE OF THE DIALOGUE WITH reimu AND MARISA AND KOTOHIME INDICATES THAT THEY HAVE NOT PREVIOUSLY MET
	//SOMEHOW THIS SHIT FITS IN CANONICALLY WOW
	
	
	//txt("By the way, what's your name?", MARY.DEF),
	//txt("...", ME.DISAPOINT),
	//txt("What's in a name? That which we call a rose#By any other name would smell as sweet.", ME.TINYSMIRK),
	//txt("Uh...", MARY.CONFUZED),
	//txt("I gotta go now. See you later, Mary!", ME.DEF),
	
	
	
	
	
	
	//OKAY SO THERE SHOULD BE AN EPILOGUE TO THIS BUT EEHHH ITS FIIIINE
	//PUT IT IN LATER CUZ IMMA WRITE THE BEGINNING OF THE KANA STORY NOW BECAUSE THATS EXCITING
	
	
	
	
	
	//OKAY THIS IS THE SECOND STORY
	//ALL THE CLEANUP AND SEPARATING OF TEXT DOCUMENTS AND STUFF SHALL BE DNOE AFTER THE FIRST DRAFT BECAUSE UGUU WHO KAREZ
	
	
	
	
	
	ntxt(000, REIMU.DEF, SPRITEPOS.HIDDEN, s_black, function() {music_set(mus.null)}),
	ntxt(000, MARY.DEF, SPRITEPOS.HIDDEN),
	
	
	txt("Our second story comes not long after the first.", ME.HEHE, SPRITEPOS.CENTER),
		
	txt("This is the story of a wandering ghost who wished for a soulmate.", ME.TINYSMIRK),
	
	ntxt(0000, ME.DEF, SPRITEPOS.HIDDEN),
	
	//OKAY SO IF YOU'RE REMOVING THE MARY STORY
	//THEN PUT THE WHOLE "SINGING IN THE FOREST AGAINST THE WISHES OF PARENTS" HERE
	//CUZ INTRODUCTION AND ALL THAT
	
	
	
	//hard cut to a big explosion image thingy with a BOOM and a BONK sound effect
	
	txt("Now get out, and stay away forever!", REIMU.MIFFED, SPRITEPOS.LEFT),
	
	//maybe have like continuous BOOM sound effects with each textbox

	txt("Fine, fine! Just stop hitting me with those things!", KANA.SCARED, SPRITEPOS.MIDRIGHT),
	
	ntxt(0080, KANA.SCARED, SPRITEPOS.HIDDEN),
	
	//kana slides out of frame
	
	txt("...", REIMU.DEF),
	txt("Gee golly gosh gloriosky, I thought she'd never leave!", REIMU.YAY),
	
	ntxt(0000, REIMU.DEF, SPRITEPOS.HIDDEN, s_shrine, function() {music_set(mus.dancers5)}),
	ntxt(0080),
	
	ptxt(),
	
	txt("On a surprisingly cool summer day, a scene from a cartoon played before me.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	txt("I had only come to this shrine to visit an acquaintance, but instead I found two."),
	txt("The shrine maiden Reimu Hakurei|n and... someone else."),
	
	ntxt(0000, KANA.NEUTRAL, SPRITEPOS.CENTER),
	
	ptxt(),
	
	txt("A girl covered in blue and gold, floating in the air."),
	txt("She had been blown out the front door, covered in countless little amulets."),
	txt("When she was far away to escape the shrine maiden's wrath, she stopped moving and tried scraping off the dirt and amulets."),
	txt("I only stood in place, watching her closely."),
	txt("It took a while for her to notice me, but once she did, she started walking towards the stairs."),	
	txt("She seemed to consider stopping as she approached me, meeting my eyes for only a second. For a moment, I thought I heard muttering."),
	txt("\"Weirdo.\""),
	
	ptxt(),
	
	ntxt(0000, KANA.DEF, SPRITEPOS.HIDDEN),
	txt("Before I could reply, she turned her head and flew right past me."),
	txt("Only then did I finally recognize her,|n but by then it was too late."),
		

	
	txt("Hey, you! Are you gonna come over here and donate or what?", REIMU.HAHA, SPRITEPOS.LEFT, u, function() {textbox_set_type(global.textdefault)}),
	txt("...Oh, it's you again.", REIMU.DEF),
	txt("Why hello there, Reimu! What brings you here today?", ME.YAYNOTE, SPRITEPOS.RIGHT),
	txt("\(\"What brings you here?\" This is my shrine!\)", REIMU.SWEAT),
	txt("Not much, just taking out the trash.", REIMU.DEF),
	txt("...And the \"trash\" is Kana?", ME.NEUTRAL),
	
	//txt("Oh, that's her name?", REIMU.DEF),
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
	txt("...|w0070Sweep the shrine for me?", REIMU.HAHA),
	txt("Nope!", ME.WINKY),
	txt("Then what are you here for!?", REIMU.SWEAT),
	txt("Saying hello!", ME.DEF),
	txt("...", REIMU.SWEAT),
	txt("Goodbye!!", ME.YAY),
	
	ntxt(090, u, u, u, function() {music_set(mus.null)}),
	//sound of running footsteps on stone
	
	
	ntxt(0000, REIMU.DEF, SPRITEPOS.HIDDEN),
	ntxt(0000, ME.DEF, SPRITEPOS.HIDDEN, u, function() {music_set(mus.summerhill2)}),
	
	ptxt(),
	
	txt("I turned around and bolted to the shrine stairs.", u, u, s_steps, function() {textbox_set_type(global.textnvl)}),
	txt("Something about Kana had caught my attention."),
	txt("Many things, actually. Her eyes, the Western-style clothes, the mirage-like glow around her."),
	txt("I had let many people pass me by before, but something about this girl seemed to call for me."),
	txt("And I knew that if I refused the call, we would never meet again."),
	txt("I ran and ran until finally, I caught a glimpse of Kana."),
	ntxt(0000, ME.NEUTRAL, SPRITEPOS.RIGHT),
	ntxt(0000, KANA.NEUTRAL, SPRITEPOS.MIDLEFT),
	txt("She turned to me, and we simply stood there for... far too long."),
	
	
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
	txt("Somehow she was able to live Reimu's shrine, which I suspect happened because of what she discovered in the ruins."),
	txt("For weeks, Kana lived there in relative happiness. She had to hide from the guards and my parents, on account of her phantomic nature. Though, she did pull pranks on the servants every now and again."),
	txt("I liked having her there. She brought life to the uptight home, and she turned out to be just as interesting as I had hoped."),
	
	ptxt(),
		
	txt("She originally lived in a western-style house just outside the human village, and while she couldn't get out much, she had access to tomes that taught her many things."),
	txt("It was to the point that she knew more about the outside world than Gensokyo."),
	txt("We would often go on walks and talk for hours on incredibly important subjects."),
	txt("Until one night..."),	
	
	//play ambient sounds of like insects and stuff
	
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
	
	ptxt(),
	
	ntxt(0000, ME.DEF, SPRITEPOS.HIDDEN),
	ntxt(0000, KANA.DEF, SPRITEPOS.HIDDEN),
	
	
	txt("One evening, we took an especially late stroll through the bamboo forest.", u, u, s_crescent2, function() {textbox_set_type(global.textnvl)}),
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
	txt("She'd have long, white hair that glows like the stars!", KANA.YAY),
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
		
	txt("\(I'm gonna have a word with that fluffy pain in the ears...\)", REISEN.UGGH),
	//the writing here is uhh
	//rather cliche
	//change it to something more raisin-specific

	txt("For now...", REISEN.LUNATICEYES),
	txt("Gaze into my eyes of madness!", REISEN.LUNATICEYES),
	//BOWAMP WAPOOSH sound effect

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
	txt("Ah--|w0030 I'm sorry, Princess.", REISEN.NEUTRAL),
	txt("I should've shot them instead.", REISEN.NEUTRAL),
	txt("Please, you must not be so rude to our \"friends!\"", KAGUYA.DEF),
	
	ntxt(u, REISEN.NEUTRAL, SPRITEPOS.HIDDEN),
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
	txt("We're just here to be walked around the house.", ME.NEUTRAL),
	txt("...I see.", KAGUYA.NEUTRAL),
	txt("Come then. The night shall perish if we take too long.", KAGUYA.NEUTRAL),
	
	txt("Princess, this is-|w0033|-", REISEN.CONFUZZLED),
	txt("Reisen, go make us a meal. The usual.", KAGUYA.DEF),
	//put in a name for what "the usual" is
	
	txt("...", REISEN.UGGH),
	
	ntxt(0000, REISEN.UGGH, SPRITEPOS.HIDDEN, u, function() {music_set(mus.null)}),
	ntxt(0000, ME.DEF, SPRITEPOS.HIDDEN),
	ntxt(0000, KAGUYA.DEF, SPRITEPOS.HIDDEN),
	ntxt(0000, KANA.DEF, SPRITEPOS.HIDDEN),

	ntxt(0075),
	
	//footsteps sound
	
	ptxt(),
	
	txt("Before we knew it, we were in the House of Eternity.", u, u, s_eienteihall1, function() {textbox_set_type(global.textnvl)}),
	txt("The air was so unnaturally still, I almost had trouble breathing. There was not a mite of dust, nor a single creak."),
	txt("It was a castle of warm ice that never melted."),
	txt("We walked through winding halls that broke the rules of space and time."),
	txt("Kana was in such awe, she did not speak for a while. Kaguya and I simply waited for her, afraid to break the silence ourselves."),
	
	//prob put a bit more description here? or lead up to the question
	
	
		
	txt("You mentioned \"impossible requests\"...#Are you the legendary Princess Kaguya?", KANA.DEF, SPRITEPOS.LEFT, u, function() {textbox_set_type(global.textdefault)}),
	
	txt("Oh? You've heard of me? A mighty well-read one, I see.", KAGUYA.DEF, SPRITEPOS.MIDRIGHT),
	txt("Not really. Your story is still famous, even in the outside world! Everyone knows it!", KANA.DEF),
	txt("Ah.", KAGUYA.AWW),
	txt("That's quite quaint. Queer, even. Quirky and quizzical indeed. Mayhaps questionable.", KAGUYA.FUFUFU),
	//the reason she goes AWW is cuz she secretly wants to not be a NEET but is all like BUT IM A LUNARIAN PRINCESS BWAAH
	
		
	txt("In here, nothing changes and nothing dies. It is a place void of impurity.", KAGUYA.DEF),
	
	
	
	/*
	txt("...And see Eirin Yagokoro.", ME.HEHE),
	txt("Are you sure she's not gonna tear me apart and eat my insides?", KANA.NEUTRAL),
	txt("Not at all!", ME.DEF),
	txt("Good to know.", KANA.AWW),
	*/
	
	
	
	//kodohimey goes SHE LIKES GALS WITH MASSIVE HONKERS contextless to (insert person here)
	//prob mokou
	
	
	
	
	],[
	
	txt(""),
	
	])
	
	endevent = c_null;
}





