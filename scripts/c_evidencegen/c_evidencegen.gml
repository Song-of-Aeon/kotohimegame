function c_evidencegen(correctone, wrong, right) {
	var dude = 0;
	var guys = textchoice_make([
		new choice("police badge", function() {textbox_create(myscript)}),
		new choice("eientei", function() {textbox_create(myscript)}),
		new choice("imperishable night incident", function() {textbox_create(myscript)}),
		new choice("the tale of the bamboo-cutter", function() {textbox_create(myscript)}),
		new choice("impossible requests", function() {textbox_create(myscript)}),
		new choice("hourai elixir", function() {textbox_create(myscript)}),
		new choice("kotohime", function() {textbox_create(myscript)}),
		new choice("tsukiko", function() {textbox_create(myscript)}),
		new choice("elly", function() {textbox_create(myscript)}),
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