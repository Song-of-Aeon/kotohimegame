function c_evidencegen(correctone, wrong, right) {
	var dude = 0;
	var guys = textchoice_make([
		new choice("Police Badge", function() {textbox_create(myscript, global.textcourt)}, "It's quite legitimate."),
		new choice("Eientei", function() {textbox_create(myscript, global.textcourt)}, "An isolated manor that resides in the Bamboo Forest of the Lost.\nKaguya's home."),
		new choice("Imperishable Night Incident", function() {textbox_create(myscript, global.textcourt)}, "An incident caused by Kaguya years ago.\nThe Earth was sealed off from the Moon."),
		new choice("The Tale of the Bamboo-cutter", function() {textbox_create(myscript, global.textcourt)}, "A famous story that chronicles Kaguya's time on Earth,\nliving amongst humans."),
		new choice("Impossible Requests", function() {textbox_create(myscript, global.textcourt)}, "Tasks Kaguya used to drive suitors away,\nthousands of years ago. Most led the men to their deaths."),
		new choice("Hourai Elixir", function() {textbox_create(myscript, global.textcourt)}, "A forbidden drink that is capable of granting\nanyone an unbreakable immortality."),
		new choice("Kotohime", function() {textbox_create(myscript, global.textcourt)}, "It's me!"),
		new choice("Tsukiko", function() {textbox_create(myscript, global.textcourt)}, "A persona adopted by Kaguya.\nA vague, common Youkai."),
		new choice("Elly", function() {textbox_create(myscript, global.textcourt)}, "A reaper Kaguya met at the Twilight Bar.\nFrustrated that she can't fight safely."),
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