function cl_testtalk() {
	return new cell(ROOMTYPE.GENERAL, u, u, u, u, function(){textbox_create(txt_hajime)});
}
function cl_testtalk2() {
	return new cell(ROOMTYPE.GENERAL, u, u, u, u, function(){textbox_create(txt_begin, global.textnvl); global.suoting = true});
}

global.suoting = false;