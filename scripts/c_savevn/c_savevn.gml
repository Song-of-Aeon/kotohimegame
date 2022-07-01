function c_savevn(thescript, textstyle) {
	if global.gameplay thescript = txt_bar;
	var guy = file_text_open_write("hi guys.kotohime");
	file_text_write_string(guy, script_get_name(thescript));
	file_text_close(guy);
	var guy = file_text_open_write("hows it goin.kotohime");
	file_text_write_string(guy, json_stringify(textstyle));
	file_text_close(guy);
	
	
	
}

function c_loadvn() {
	var guy = file_text_open_read("hi guys.kotohime");
	var textscript = file_text_read_string(guy);
	file_text_close(guy);
	var guy = file_text_open_read("hows it goin.kotohime");
	var textstyle = file_text_read_string(guy);
	//var textstyle = global.textdefault;
	file_text_close(guy);
	textbox_create(asset_get_index(textscript), json_parse(textstyle));
}