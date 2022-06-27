function txt_return() {
	
	msg = msglang([
	
	txt("|c160160160Kotohime and Kaguya re-enter the Twilight Bar."),
	txt("|c160160160Elly perks her head up at the sound of the door opening."),
	txt("Oh?", ELLY.CONFUSED),
	txt("|c160160160The two return to their seats across from Elly."),
	txt("Didn't you say you weren't coming back?"),
	txt("Yes...#Before that, Elly, I must apologize."),
	txt("Sure?", ELLY.CONFUSED),
	txt("When Kotohime and I first came to this place together, it was because she had evaluated that it would be one where I was not immediately recognized."),
	txt("I am fairly well-known throughout Gensokyo these days."),
	txt("For the sake of socialization without such preconceptions, I adopted the false identity of \"Tsukiko\"."),
	txt("Oh. Okay. Who are you, then?", ELLY.SURPRISED),
	txt("I am Kaguya Houraisan, of Eientei."),
	txt("Wow. That's, uh, unexpected. I guess I can see why you would want to keep that hidden.", ELLY.FAKELAUGH),
	txt("So, are you, like, from the moon?", ELLY.FAKELAUGH),
	txt("Yes, I-"),
	txt("Elly, Elly, hear this, though.", KOTOHIME.HAPPY),
	txt("She's not just any famous moon-princess, Kaguya here is a bona-fide immortal.", KOTOHIME.EXCITED),
	txt("Well, yeah. The only ones who aren't here are humans."),
	txt("You misunderstand. I mean a deeper, truly everlasting immortality.", KOTOHIME.SMUG),
	txt("So, really immortal?", ELLY.CONFUSED),
	txt("Really really immortal.", KOTOHIME.SMUG),
	txt("Really??", ELLY.SURPRISED),
	txt("Yes. I created and consumed the Hourai Elixir over a thousand years ago."),
	txt("That's incredible! Even Sariel and Lady Yuuka aren't quite to that level.", ELLY.HAPPY),
	txt("You two would be perfect sparring partners!! Kaguya could show you how to use magic, and you can practice fighting with your scythe without killing her!", KOTOHIME.LMAO),
	txt("It's great, right?", KOTOHIME.HAPPY),
	txt("You know, that sounds pretty fun. Are you up for it?", ELLY.FAKELAUGH),
	txt("Certainly."),
	txt("An honor, then.", ELLY.FAKELAUGH),
	txt("Please don't treat it as special. I wanted to come here as a commoner, and..."),
	txt("I believe I'll be coming back again as one, as well."),
	txt("Yay!", KOTOHIME.EXCITED),
	txt("I'll be looking forward to it.", ELLY.BLUSH),
	txt("For the moment, however, I ought to be returning home."),
	txt("I do not want my house searching too hard and finding this place."),
	txt("Fair enough. When will you be back?", ELLY.SURPRISED),
	txt("I couldn't quite say. Typically, I may let a hundred years pass before remembering..."),
	txt("But now, I have a human or two to worry about. It may be within the moon."),
	txt("Okay! I'll probably be around here.", ELLY.HAPPY),
	txt("Good eve, Elly."),
	txt("Bye!", ELLY.BLUSH),
	txt("I'm leaving too!", KOTOHIME.HAPPY),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {
		var guy = file_text_open_write("you've won.kotohime");
		file_text_write_string(guy, "congrats!");
		file_text_close(guy);
		room_goto(TITLE);
	};
}