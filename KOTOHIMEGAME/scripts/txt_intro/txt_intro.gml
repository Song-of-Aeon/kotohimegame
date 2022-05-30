function txt_intro() {
	
	msg = msglang([
	
	txt("Hello!#Dev here.", "", 0, function() {ISAAC.state = c_null o_miscdraw.image = s_tutorial o_miscdraw.x = 10 o_miscdraw.y = 10}),
	txt("The game is kinda simple right now.#Sell stats for items for abilities.", "", 0),
	txt("It's a bit scuffed in some places,#isn't very long,#doesn't have much for graphics,", "", 0),
	txt("But we're hopeful that we can make#some cool stuff with the systems we set up.", "", 0),
	txt("This demo is more of a simple#proof of concept, but I hope you'll#find it neat.", "", 0),
	txt("Check out our Twitter or Discord if#you're interested in following development.", "", 0),
	txt("", "", 0, function() {o_textbox.y = 9999}),
	
	],[
	
	txt("", "", 0),
	
	])
	
	endevent = function() {/*c_generatestage(c_getstage().generation)*/ o_miscdraw.drawdec = true ISAAC.state = st_standard music_set(mus.thurs1)};
}

