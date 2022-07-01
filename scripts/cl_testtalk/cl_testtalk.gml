function cl_testtalk() {
	return new cell(ROOMTYPE.GENERAL, u, u, u, u, function(){textbox_create(txt_bar); global.luying = false});
}
function cl_testtalk2() {
	return new cell(ROOMTYPE.GENERAL, u, u, u, u, function(){textbox_create(txt_begin, global.textnvl); global.luying = true});
}
function cl_testtalk3() {
	return new cell(ROOMTYPE.GENERAL, u, u, u, u, function(){textbox_create(txt_afterword, global.textnvl); global.luying = true});
}
function cl_load() {
	return new cell(ROOMTYPE.GENERAL, u, u, u, u, function(){c_loadvn(); global.luying = false});
}
function cl_end() {
	return new cell(ROOMTYPE.GENERAL, u, u, u, u, function(){textbox_create(txt_bye); global.luying = false});
}

global.luying = false;