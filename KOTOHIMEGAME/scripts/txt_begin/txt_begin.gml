function txt_begin() {

	msg = msglang([
	
	
	txt("Hey...", u, u, s_black,),
	txt("Have you ever wondered if you're really living?"),
	txt("I don't mean having a body of flesh and blood and a beating heart-- we in Gensokyo know you don't need that to live."),
	txt("I mean... LIVING. Whatever that means to you."),
	txt("Funny question, isn't it? It's so much easier or harder depending on how you look at it."),
	txt("To many long-lived youkai, life is safety and freedom."),
	txt("To the citizens of the Lunar Capital, life is just continued existence."),
	ptxt(),
	txt("To me... life means movement. Growth. Change."),
	txt("Floating on the wind,#swimming through the oceans,#finding patches of shelter and sunlight,#and becoming a part of the world."),
	txt("Even being stomped on and crushed forever is a form of living. Because while you can't see it, the seeds you bore will carry on through the wind, and you will live through them."),
	txt("But when you slink into the shadows, whither away and leave nothing but ash... THAT is dying."),	
	txt("..."),
	txt("Sometimes I get really scared of death."),
	ptxt(),
	
	
//NEW TEXTBOX


	txt("But you don't care about all that sad stuff, do you?", KODOHIMEY.DEF, SPRITEPOS.CENTER, s_black, function() {textbox_set_type(global.textdefault)}),
	txt("I certainly don't!", KODOHIMEY.HEHE),
	txt("Right now, I'm here to show you a collection of stories where love is everywhere!", KODOHIMEY.HEHE),
	txt("Blooming from the spring trees, falling from the sky, and sneaking up on you when you least expect it!", KODOHIMEY.WINKYHEART),
	txt("These stories aren't exactly mine to tell...", KODOHIMEY.WINKYHEART),
	txt("But I played a part in them, so it's okay.", KODOHIMEY.WINKYHEART),
	txt("I'm a collector, you see... not a mere thief.", KODOHIMEY.WINKYHEART),
	txt("At least, not most of the time.", KODOHIMEY.HEHE),
	txt("Now, are you ready for some romance?", KODOHIMEY.DEF),
	txt("..."),
	txt("Good!|w0050#This one is the story of how a twinkle in the sky became a shooting star.", KODOHIMEY.YAY),
	
	//footsteps sound and crickets, fading into kotohime with daytime forest background
	//ADV textbox
	
	txt("Angel, angel, in the sky--", KODOHIMEY.YAYNOTE, SPRITEPOS.RIGHT),
	txt("Whatever could have made you cry?", KODOHIMEY.YAYNOTE),
	txt("For your wings are so bright", KODOHIMEY.YAYNOTE),
	txt("They light up the night", KODOHIMEY.YAYNOTE),
	txt("And make my own tears wave goodbye!", KODOHIMEY.YAYNOTE),
	
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
	
	txt("And as the sandcastles melt,", KODOHIMEY.YAYNOTE, u, u, function() {textbox_set_type(global.textdefault)}),
	txt("Will you see on my face, a much brighter place", KODOHIMEY.YAYNOTE),
	txt("Than the one--|w0060", KODOHIMEY.YAYNOTE),
	
	//loud stick cracking sound effect
	
	txt("...", KODOHIMEY.WHAA),
	txt("What was that?"),

	ptxt(),
	
	txt("In the distance, among the thickets and trees... was a girl.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	txt("Covered in vines and branches, frozen in place with a look of terror."),
	txt("In a moment, the lively forest had frozen, though it was only her and I that stood still."),
	txt("It was not the first time I had been in a situation like this, but this felt... different."),
	txt("Momentus."),
	
	ptxt(),
	
	txt("...", MARY.UHH, SPRITEPOS.MIDLEFT, u, function() {textbox_set_type(global.textdefault)}),
	txt("Hey. Are you okay?", KODOHIMEY.DEF),
	txt("Lady Mima says not to accept help from strangers. So...", MARY.HUH),
	txt("But I'm not a stranger! You know my name, don't you?!", KODOHIMEY.MIFFED),
	txt("I don't...", MARY.UHH),
	txt("Oh, I forgot! You're absolutely correct!", KODOHIMEY.POG),
	txt("Well, if you still don't want help, I can leave you here in this pickle. Or more like a cucumber. A really tasty one that a wandering kappa would gobble right up!", KODOHIMEY.WAAH),
	txt("...", MARY.WAAH),
	txt("okay...", MARY.WAAH),
	txt("I rip the vines off of her with ease. How did she even get caught in these?"),
	txt("With little more than a stumble, the girl gets up and reluctantly thanks me."),

	txt("So who are you?", KODOHIMEY.DEF),
	txt("Uh...|w0060 I'm a witch. My name is Mari--", MARY.DEF),
	txt("Mary?! What a great name!", KODOHIMEY.YAY),
	txt("That's not...", MARY.UHH),
	txt("So Mary, what are you here for?", KODOHIMEY.DEF),
	txt("I'm, uh... training my magic power. I need to beat someone in a fight.", MARY.HUH),
	txt("Whoah!", KODOHIMEY.POG),
	txt("Are you one of those youkai exterminators?", KODOHIMEY.POGQMARK),
	txt("Not really. I sorta... work for a youkai.", MARY.AWW),
	txt("That's even cooler!", KODOHIMEY.POG),


	ptxt(),

	txt("We talked like this for a while. I didn't know many witches, so I couldn't help but bombard her with questions.", u, u, u, function() {textbox_set_type(global.textnvl)}),
	txt("\"Student of a Lady Mima, the vengeful ghost,\"#\"Novice in everything but starlight magic,\"#\"Lives in a mighty palace in another world.\""),
	txt("Or... lived in one. This \"Lady Mima\" had recently disappeared after being badly beaten. Mary was confident that her teacher would return, but she had little to do in the meantime."),

	txt("Hey, can you... help me with something else?", MARY.AWW, u, u, function() {textbox_set_type(global.textdefault)}),
	txt("Sure! What is it?", KODOHIMEY.DEF),
	txt("There's... there's this girl I really like. Like, LIKE like.", MARY.HUH),
	txt("Like, friend like?", KODOHIMEY.DEF),
	txt("Like, LOVE like.|n But I don't think she likes me back.", MARY.AWW),
	txt("Really? How do you know?", KODOHIMEY.DEF),
	txt("She beat the crud outta me.", MARY.AWW),
	txt("Oh.", KODOHIMEY.KAAAY),
	txt("I just couldn't fight back properly! Every time I looked into her eyes, my heart would beat really fast and I'd just want to run up and hug her!", MARY.HAAHH),
	txt("But Lady Mima wouldn't want that.", MARY.AWW),			
	txt("I just don't know what to do!", MARY.HAAHH),
	txt("Sure, I can help you!", KODOHIMEY.HEHE),
	txt("Really? You know how to do all that? Dating and confessing and romance?", MARY.OOH),
	txt("Not at all!", KODOHIMEY.WINKYHEART),
	txt("...|n#Okay.", MARY.AWW),

	
	],[
	
	txt(""),
	
	])
	
	endevent = c_null;
}





