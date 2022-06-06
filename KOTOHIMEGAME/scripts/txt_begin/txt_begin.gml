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
	txt("Right now, I'm here to show you a collection of stories where love is everywhere!"),
	txt("Blooming from the spring trees, falling from the sky, and sneaking up on you when you least expect it!", KODOHIMEY.WINKYHEART),
	txt("These stories aren't exactly mine to tell..."),
	txt("But I played a part in them, so it's okay."),
	txt("I'm a collector, you see... not a mere thief."),
	txt("At least, not most of the time.", KODOHIMEY.HEHENOTE),
	txt("Now, are you ready for some romance?", KODOHIMEY.DEF),
	txt("..."),
	txt("Good!|w0050#Our first story concerns a little moon who became a shooting star.", KODOHIMEY.YAY),
	
	//footsteps sound and crickets, fading into kotohime with forest background
	
	
	
	
	],[
	
	txt(""),
	
	])
	
	endevent = c_null;
}





