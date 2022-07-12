function txt_afterword() {

	global.thecolor = 0xFFFFFF;
	c_additem(ITEMS.HIDE);
	msg = msglang([
	
	
	txt("CREDITS |w0128 |- ", u, u, s_stars, function() {music_set(mus.credits)}),
	txt("#LUYUU - WRITING, SOME CODING & ART |w0128 |- "),
	txt("AEON - MOST OF THE CODING, GFX |w0128 |- "),
	txt("TAMI - MUSIC |w0128 |- "),
	txt("YUNEVII - ART |w0128 |- "),
	txt("AQWA - ART |w0128 |- "),
	txt("ANUMANIA - TECHNICAL SUPPORT |w0128 |- "),
	txt("TAIRA KOMORI - SOUND EFFECTS |w0128 |- "),
	txt("SPRONKLESSS - UNUSED ART & MORAL SUPPORT |w0128 |- "),
	txt("YOU - PLAYER"),

	
	
	
	ptxt(),
	txt("Hey!"),
	txt("This is Luyuu-- the writer of The Little Rabbit Princess and the House of Eternity."),	
	txt("First off, thank you so much for reading this \"game.\" It really means a lot to me."),
	txt("This thing is a lot of firsts for me-- first time participating in a game jam, first time participating in a team, first time writing a Touhou fanwork, first time using Game Maker, first time working on a Visual Novel, first time finishing something longer than 15 minutes, first time writing something with any focus on romance, first time posting my writing on the internet..."),
	txt("A lot."),
	ptxt(),
	txt("I've kinda been writing in the dark, without too much idea of what works and what doesn't. So comments, reviews, criticism, etc. would be greatly appreciated."),
	txt("At the moment I can think of lots of possible flaws with the writing... but helping make this was fun, and I'm looking forward to doing more things like it."),
	
	ptxt(),
	txt("As you may have been able to tell, the production was far from perfect."),
	txt("One of the artists on our team dropped out before they could make much, and another had a *lot* of other things on their plate."),
	txt("Most of the writing was done in the last two weeks-- the first two were spent reading official print works for research, and writing a big section that got thrown out because we didn't have time to make art for it."),	
	txt("And pretty much all of the gameplay segment was made the last few days, featuring me trying to code patterns with Aeon's danmaku system even though I have virtually no knowledge of programming."),
	txt("But overall, I'm happy with this."),
	ptxt(),
	txt("And really, I can't thank the other team members enough for their contributions. It's honestly a little intimidating seeing such amazing work associated with my writing."),
	txt("Hopefully all these elements have come together in two entertaining packages."),
	txt("--Oh, yeah. In case you didn't know, there are two Visual Novels in this little project. One written by me, the other written by Aeon. They both star Kotohime and share much of the same art and music, but feature different stories, minigames, and casts."),
	txt("Aeon's game is called The Endless and Kotohime. Go check it out if you haven't already."),
	ptxt(),
	txt("On a slightly more personal note... for this story, I really tried to make something emotionally resonant."),
	txt("Focusing on aspects of Touhou that seem to often get underemphasized in fanworks, and a few things that just personally really matter to me."),
	txt("No matter how amateurish it is, this story was made from the heart, and I hope that shows."),
//	txt("Hopefully that can continue with future projects."),
//	txt("It may sound lofty, but... I think my greatest dream is for someone to honestly tell me, \"Your work saved my life.\""),

	ptxt(),		
	txt("There's lots more I could say here, but in this case, I think less is more."),
	txt("So... yeah."),
	txt("Byebye."),

	
	
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {room_goto(TITLE)};
}





