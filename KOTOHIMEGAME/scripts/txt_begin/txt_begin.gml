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
	txt("But when you sink into the shadows, whither away and leave nothing but ash... THAT is dying."),	
	txt("..."),
	txt("Sometimes I get really scared of death."),
	
	ptxt(),
	
	

	txt("But you don't care about all that sad stuff, do you?", ME.DEF, SPRITEPOS.CENTER, s_black, function() {textbox_set_type(global.textdefault)}),
	txt("I certainly don't!", ME.HEHE),
	txt("Right now, I'm here to show you a collection of stories where love is everywhere!", ME.HEHE),
	txt("Blooming from the spring trees, falling from the sky, and sneaking up on you when you least expect it!", ME.WINKYHEART),
	txt("These stories aren't exactly mine to tell...", ME.WINKYHEART),
	txt("But I played a part in them, so it's okay.", ME.WINKYHEART),
	txt("I'm a collector, you see... not a mere thief.", ME.WINKYHEART),
	txt("At least, not most of the time.", ME.HEHE),
	txt("Now, are you ready for some romance?", ME.DEF),
	txt("Good!|w0050#This one is the story of how a twinkle in the sky became a shooting star.", ME.YAY),
	
	//footsteps sound and crickets, fading into kotohime with daytime forest background
	//ADV textbox
	
	
	
	txt("Angel, angel, in the sky--", ME.YAYNOTE, SPRITEPOS.RIGHT, u, function() {music_set(mus.ragnarok)}),
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
	txt("Than the one--|w0060", ME.YAYNOTE),
	
	//loud stick cracking sound effect
	
	txt("...", ME.WHAA, u, u, function() {music_set(mus.null)}),
	txt("What was that?", ME.WHAA),

	ptxt(),
	
	txt("In the distance, among the thickets and trees... was a girl.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	txt("Suspended in the air and tangled up in vines and branches, frozen in place with a look of terror."),
	txt("Large multicoloured orbs laid on the ground around her, emitting a glowing light."),
	txt("In a moment, the lively forest had frozen, though it was only her and I that stood still."),
	txt("It was not the first time I had been in a situation like this, but this felt... different."),
	
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

	//ntxt(0000, GIRL.DEF, SPRITEPOS.HIDDEN),
	
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
	//ntxt(0000, GIRL.WAAH, SPRITEPOS.HIDDEN),
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
	txt("She's strong, so she'll definitely come back.", MARY.HUH),
	txt("But right now, all I can do is wait around and train myself.", MARY.HUH),
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
	txt("Lady Mima's gone, right? So before she comes back, I'll set up a date with you two, and give you a few tips and pointers.", ME.TINYSMIRK),
	txt("You two will be a couple in no time.", ME.HEHE),
	txt("And when \"Lady Mima\" finally comes back, she'll see how lovey-dovey you are together and forgive the both of you!", ME.YAY),
	txt("Really? You know how to do all that? Dating and confessing and romance?", MARY.OOH),
	txt("Not at all!", ME.WINKYHEART),
	txt("But I have a few books on it.", ME.DEF),
	txt("Besides, it's just a little crush! How hard can that be?", ME.SMUG),
	//txt("No need to pay me back, by the way. Helping out a friend in need is reward enough!", ME.TINYSMIRK),
	txt("...|n#Okay.", MARY.AWW),
	txt("Deal.", MARY.DEF),
	
	
	
	
	//ntxt(000, MARY.DEF, SPRITEPOS.HIDDEN),
	//ntxt(0000, ME.DEF, SPRITEPOS.HIDDEN),
	
	
	ptxt(),
	
	txt("We arranged a time and place, and met up the next day. It was at the base of a long staircse near the forest.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	txt("Of course, I didn't tell anyone at home. If my parents knew what I was up to, they would certainly throw a fit."),
	txt("But for the whole night, I kept my face buried in romance books. I needed to know how this stuff worked as soon as possible!"),
	txt("My favorite source was comics from the outside world. I had picked them up from Muenzuka, but never quite gotten around to reading them until now."),
	txt("Stories from the outside world always taught me so much, and these were no exception."),
	txt("By the next afternoon, I was all ready to take on the challenge."),
	
	ptxt(),
	
	//begin "music" track of footstep sounds on stone
	
	
	txt("HEY, MARY! GREAT TO-", ME.YAY, SPRITEPOS.CENTER, u, function() {textbox_set_type(global.textdefault)}),
	txt("D-don't be so loud...!", MARY.UHH, SPRITEPOS.RIGHT),
	txt("She might hear us.", MARY.UHH),
	txt("Whoopsies!", ME.YAYNOTE),
	txt("She's at the top of these steps right now. We're supposed to think of a plan first, right?", MARY.HUH),
	txt("Correct.", ME.HEHE),

		
	txt("So, what's this girl like?", ME.DEF),
	txt("She's...|n wonderful.", MARY.HUH, u, u, function() {music_set(mus.sunrise)}),
	
	//marisa nerds out about leimu
	//writing this has me sliiiightly stumped
	//is what's here right now enough?
	
	//ntxt(0000, ME.TINYSMIRK),
	
	txt("She has this feeling about her that's so carefree, but so mature too.", MARY.AHHH),
	txt("The way she talks, the way she moves, the way she looks at you with those beautiful eyes...", MARY.AHHH),
	txt("Everything about her is just...", MARY.AHHH),
	//ntxt(0000, ME.POG),
	txt("There she is!", MARY.OOH),
	
	ptxt(),
	
	txt("A shrine maiden in the distance swept the grounds, oblivious to our presence.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	txt("Looking at her, I could see what Mary meant. Something about her felt... different from most people."),
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
	//ntxt(0000, ME.DEF, SPRITEPOS.HIDDEN),
	//ntxt(0000, MARY.DEF, SPRITEPOS.HIDDEN),
	
	
	txt("Oh, hey.", LEIMU.DEF, SPRITEPOS.LEFT),
	txt("You here to donat---", LEIMU.DEF),
	txt("Hey, I know you!", LEIMU.SWEAT),
	txt("You're that girl that tried to kill me!", LEIMU.SWEAT),
	txt("...", MARY.AWW, SPRITEPOS.MIDRIGHT),
	txt("Are you lookin for a rematch already?", LEIMU.HAHA),
	txt("...Come on, Marisa. You can do this. Just...|w0030 say it.", MARY.AWW),	
	txt("No, that's not it. I don't want to fight you at all.", MARY.HUH),
	txt("Huh?", LEIMU.DEF),
	txt("I never did, in fact.", MARY.HUH),
	txt("When we first fought, I was just following orders from Lady Mima.", MARY.HUH),
	txt("But right now, I'm only here with good intentions!", MARY.YAY),
	txt("Oh.", LEIMU.DEF),
	txt("Well, that's nice.", LEIMU.YAY),
	txt("...You wanna help me sweep the shrine?", LEIMU.YAY),
	txt("Uh... sure.", MARY.UHH),
	txt("But just one more thing first.", MARY.DEF),	
	txt("Now that the battle is all over, I just want to tell you...", MARY.HUH),
	txt("?", LEIMU.DEF),
	txt("I really,|n really,|n like y|-", MARY.AHHH),
	
	//|-
	
	//ntxt(0100, LEIMU.DEF, SPRITEPOS.HIDDEN, u, function() {music_set(mus.null)}),
	//ntxt(0200, MARY.DEF, SPRITEPOS.HIDDEN, u, function() {music_set(mus.graving)}),
	
	


	//meira appears all like HEY HAKUREI GIRL IM BACK TO TAKE YOU FOR MYSELF and kotohime goes all HEY WHO IS THAT and reimu goes "oh yeah thats my wife" and marisa is super shocked (sound effect of thunder, the screen shakes and the background turns to a lighting strike)
	//m_graving plays for maximum WTF mood
	//theres a bit of banter between meira and leimu and then kotohime goes all GANBATTE
	//FAITO OH NANODESU
	//and then marisa engages in epic danmaku battle with meira to save leimu
	//(even though leimu clearly does not need saving)
	//meira leaves for the last time and there they are in the epic confession mode
	//then kotohime whispers some really cheesy speech in marisa's ear and marisa says it to leimu with fireworks surrounding them
	//and then leimu is like "sure why not"
	//happily ever after
	//kotohime and marisa and leimu occassionally had conversations and friendly sparring matches
	//HEY DID YOU KNOW THAT NONE OF THE DIALOGUE WITH LEIMU AND MARISA AND KOTOHIME INDICATES THAT THEY HAVE NOT PREVIOUSLY MET
	//SOMEHOW THIS SHIT FITS IN CANONICALLY WOW
	
	
	//txt("By the way, what's your name?", MARY.DEF),
	//txt("...", ME.DISAPOINT),
	//txt("What's in a name? That which we call a rose#By any other name would smell as sweet.", ME.TINYSMIRK),
	//txt("Uh...", MARY.CONFUZED),
	//txt("I gotta go now. See you later, Mary!", ME.DEF),
	
	
	],[
	
	txt(""),
	
	])
	
	endevent = c_null;
}





