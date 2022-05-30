function cl_testtalk() {
	return new cell(ROOMTYPE.GENERAL, u, u, u, u, function(){textbox_create(txt_testtalk)});
}

function txt_testtalk() {
	msg = [
	txt("HI GUYS", CHIYURI.GRIN, SPRITEPOS.MIDLEFT, c_black),
	txt("works so well. its easy.#its comical how easy it is", CHIYURI.GRIN),
	]
	
	endevent = c_null;
}