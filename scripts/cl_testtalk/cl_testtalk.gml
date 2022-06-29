function cl_testtalk() {
	return new cell(ROOMTYPE.GENERAL, u, u, u, u, function(){textbox_create(txt_closing); global.suoting = false});
}
function cl_testtalk2() {
	return new cell(ROOMTYPE.GENERAL, u, u, u, u, function(){textbox_create(txt_kagumoku, global.textnvl); global.suoting = true});
}
function cl_load() {
	return new cell(ROOMTYPE.GENERAL, u, u, u, u, function(){c_loadvn(); global.suoting = false});
}
function cl_end() {
	return new cell(ROOMTYPE.GENERAL, u, u, u, u, function(){textbox_create(txt_bye); global.suoting = false});
}

global.suoting = false;