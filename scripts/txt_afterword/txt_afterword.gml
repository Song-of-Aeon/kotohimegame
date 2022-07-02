function txt_afterword() {

	global.thecolor = 0xFFFFFF;
	c_additem(ITEMS.HIDE);
	msg = msglang([
	
	
	txt("CREDITS#LUYUU - WRITING, SOME CODING & ART#AEON - MOST OF THE CODING, GFX#TAMI - MUSIC#YUNEVII - ART#AQWA - ART#ANUMANIA - TECHNICAL SUPPORT#TAIRA KOMORI - SOUND EFFECTS#SPRONKLESSS - MORAL SUPPORT#YOU - PLAYER", u, u, s_stars, function() {music_set(mus.glossary)}),

	
	
	
	ptxt(),
	txt("Hey!"),
	txt("This is Luyuu-- the writer of The Little Rabbit Princess and the House of Eternity."),	
	txt("First off, thank you so much for reading this \"game.\" It really means a lot to me."),
	
	ptxt(),
	txt("This thing is a lot of firsts for me-- first time participating in a game jam, first time participating in a team, first time writing a Touhou fanwork, first time using Game Maker, first time working on a Visual Novel, first time writing anything that took more than 15 minutes to read through, first time posting my writing on the internet..."),
	txt("A lot."),
	ptxt(),
	txt("I've kinda been writing in the dark, without too much idea of what works and what doesn't. So comments, reviews, criticism, etc. would be greatly appreciated."),
	txt("At the moment I can think of lots of possible flaws with the writing... but helping make this was fun, and I'm looking forward to doing more things like it."),
	
	ptxt(),
	txt("As you may have been able to tell, the production was far from perfect."),
	txt("Two of the artists on our team had to drop out before they could make much."),
	txt("Most of the writing was done in the last two weeks-- the first two were spent reading official print works for research, and writing a big section that got thrown out because we didn't have the time to make art for it."),	
	txt("And pretty much all of the gameplay segment was made the last few days, featuring me trying to code patterns with Aeon's danmaku system even though I have virtually zero knowledge of programming."),

	ptxt(),
	txt("We had to crunch a little to get this one done in time... but overall, I'm happy with this."),
	txt("And really, I can't thank the other team members enough for their contributions. It's honestly a little intimidating seeing such amazing work associated with my writing."),
	txt("Hopefully all these elements have come together in two entertaining packages."),
	
	ptxt(),
	txt("--Oh, yeah. In case you didn't know, there are two Visual Novels in this little project. One written by me, the other written by Aeon. They both star Kotohime and share much of the same art and music, but feature different stories, minigames, and casts."),
	txt("Aeon's game is called The Endless and Kotohime. Go check it out if you haven't already."),
	ptxt(),
	txt("There's lots more I could say here, but we're kinda running out of time."),
	txt("So... yeah."),
	txt("Byebye."),

	
	
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {room_goto(TITLE)};
}





