function textbox_set_type(style=global.textdefault) {
	log(style);
	log("IM RESTYLING");
	if instance_exists(o_textbox) {
		o_textbox.width = style.width;
		o_textbox.height = style.height;
		o_textbox.spriteposx = style.spriteposx;
		o_textbox.spriteposy = style.spriteposy;
		o_textbox.sprite_index = style.sprite;
		o_textbox.texttype = style.type;
		o_textbox.x = style.x;
		o_textbox.y = style.y
		return true;
	}
	return false;
}