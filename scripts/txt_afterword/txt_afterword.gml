function txt_afterword() {

	global.thecolor = 0xFFFFFF;
	c_additem(ITEMS.HIDE);
	msg = msglang([
	
	ntxt(0, u, u, u, function() {music_set(mus.null)}),
	
	ptxt(),
	txt("Hey!", u, u, s_black, function() {textbox_set_type(global.textnvl)}),
	txt("This is Luyuu speaking-- the writer of this game."),	
	txt("First off, thank you so much for reading this \"game.\""),

	
	
	ptxt(),
	txt("This is a lot of firsts for me-- first time participating in a game jam, first time participating in a team, first time writing a Touhou fanwork, first time using Game Maker, first time working on a Visual Novel, first time writing anything that took more than 15 minutes to read, first time posting my writing on the internet..."),
	
	
	
	ptxt(),
	 
	txt("I can't thank the other team members enough for their amazing work."),
	txt("...Honestly, it's a little intimidating seeing their work associated with my writing."),

	
	
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {while true {}};
}





