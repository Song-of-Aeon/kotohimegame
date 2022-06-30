function c_evidencegen(correctone, wrong, right) {
	var dude = 0;
	var guys = textchoice_make([
		new choice("police badge", function() {textbox_create(myscript)}, "It's quite legitimate."),
		new choice("eientei", function() {textbox_create(myscript)}, "An isolated manor that resides in the Bamboo Forest of the Lost.\nKaguya's home."),
		new choice("imperishable night incident", function() {textbox_create(myscript)}, "An incident caused by Kaguya years ago.\nThe Earth was sealed off from the Moon."),
		new choice("the tale of the bamboo-cutter", function() {textbox_create(myscript)}, "A famous story that chronicles Kaguya's time on Earth,\nliving amongst humans."),
		new choice("impossible requests", function() {textbox_create(myscript)}, "Tasks Kaguya used to drive suitors away,\nthousands of years ago. Most led the men to their deaths."),
		new choice("hourai elixir", function() {textbox_create(myscript)}, "A forbidden drink that is capable of granting\nanyone an unbreakable immortality."),
		new choice("kotohime", function() {textbox_create(myscript)}, "It's me!"),
		new choice("tsukiko", function() {textbox_create(myscript)}, "A persona adopted by Kaguya.\nA commoner Youkai."),
		new choice("elly", function() {textbox_create(myscript)}, "A reaper Kaguya met at the Twilight Bar.\nFrustrated that she can't fight safely."),
	]);
	var i;
	for (i=0; i<array_length(guys); i++) {
		log(guys[i]);
		if i==correctone {
			guys[i].myscript = right;
		} else {
			guys[i].myscript = wrong;
		}
	}
}