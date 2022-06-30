function txt_afterword() {

	global.thecolor = 0xFFFFFF;
	c_additem(ITEMS.HIDE);
	msg = msglang([
	
	ntxt(0, u, u, u, function() {music_set(mus.null)}),
	
	ptxt(),
	txt("Hey!", u, u, s_black, function() {textbox_set_type(global.textnvl)}),
	txt("This is Luyuu-- the writer of this story."),	
	txt("First off, thank you so much for reading this \"game.\""),

	
	ptxt(),
	
	txt("Production had a few issues. One of the artists on our team got really sick and had to drop out."),
	txt("...You may have been able to tell with a couple characters."),
	ptxt(),
	txt("And pretty much all of the writing was done in the last two weeks-- the first two were spent reading official print works for research, and writing a big section that got thrown out because we didn't have the time to make art for it."),	
	txt("...You may have been able to tell with the epilogue."),
	txt("We had to crunch little to get this one done in time... but overall, I'm happy with this."),
	
	ptxt(),
	txt("This thing is a lot of firsts for me-- first time participating in a game jam, first time participating in a team, first time writing a Touhou fanwork, first time using Game Maker, first time working on a Visual Novel, first time writing anything that took more than 15 minutes to read, first time posting my writing on the internet..."),
	txt("A lot."),
	txt("It was fun though, and I'm looking forward to doing more things like it."),
	
	
	
	ptxt(),
	 
	txt("I can't thank the other team members enough for their amazing work."),
	txt("...Honestly, it's a little intimidating seeing their work associated with my writing."),
	txt("Hopefully all these elements have come together in an entertaining package."),
	ptxt(),
	txt("And comments, reviews, criticism, etc. would be greatle appreciated."),

	
	
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {while true {}};
}





