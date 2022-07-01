function txt_afterword() {

	global.thecolor = 0xFFFFFF;
	c_additem(ITEMS.HIDE);
	msg = msglang([
	
	
	txt("CREDITS#LUYUU - WRITING, PROGRAMMING, SOME ART #AEON - MOST OF THE PROGRAMMING, SOME ART #TAMI - MUSIC#YUNEVII - ART#AQWA - ART#ANUMANIA - TECHNICAL SUPPORT#SPRONKLESS - SOME ART#TAIRA KOMORI - SOUND EFFECTS", u, u, s_black),
	
	
	
	
	ptxt(),
	txt("Hey!"),
	txt("This is Luyuu-- the writer of this story."),	
	txt("First off, thank you so much for reading this \"game.\" It really means a lot to me."),
	
	ptxt(),
	txt("This thing is a lot of firsts for me-- first time participating in a game jam, first time participating in a team, first time writing a Touhou fanwork, first time using Game Maker, first time working on a Visual Novel, first time writing anything that took more than 15 minutes to read, first time posting my writing on the internet..."),
	txt("A lot."),
	ptxt(),
	txt("I've kinda been writing in the dark, without too much idea of what works and what doesn't. So comments, reviews, criticism, etc. would be greatly appreciated."),
	txt("At the moment I can think of lots of possible flaws with the writing-- the themes may be a little on the nose, the characters out-of-character, the pace too slow, and the ending abrupt and overly confusing."),
	txt("But making this was fun, and I'm looking forward to doing more things like it."),
	
	ptxt(),
	txt("That's not to say production was perfect. One of the artists on our team got really sick and had to drop out."),
	txt("...You may have been able to tell."),
	ptxt(),
	txt("And pretty much all of the writing was done in the last two weeks-- the first two were spent reading official print works for research, and writing a big section that got thrown out because we didn't have the time to make art for it."),	
	txt("...You may have been able to tell."),
	ptxt(),
	txt("We had to crunch a little to get this one done in time... but overall, I'm happy with this."),
	txt("And really, I can't thank the other team members enough for their contributions. It's honestly a little intimidating seeing such amazing work associated with my writing."),
	txt("Hopefully all these elements have come together in two entertaining packages."),
	
	ptxt(),
	txt("--Oh, yeah. In case you didn't know, there are two Visual Novels in this little project. One written by me, the other written by Aeon. They both star Kotohime and share much of the same art and music, but feature different stories, minigames, and casts."),
	txt("Aeon's game is called The Endless and Kotohime. Go check it out if you haven't already."),
	ptxt(),
	txt("And with that, I'm off."),

	
	
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {while true {}};
}





