function textline_next() {
	do {
		skipped = false;
		waiting = 0;
		waited = array_create(20);
		pressing = 0;
		pressed = array_create(20);
		if msg[talkpos].type == "normal" {
			array_push(backlog, msg[talkpos]);
		}
		talkpos++;
		if msg[talkpos].type == "ptxt" {
			backlog = [];
		}
		var dudes = font_get_size(draw_get_font())-1;
		var dudes2 = floor((sprite_width-margin*2)/dudes);
		msg[talkpos].text = lb_auto(msg[talkpos].text, dudes2);
		log(msg[talkpos]);
		talklength = string_length(msg[talkpos].text);
		drawing = "";
		drawchars = 0;
		name = msg[talkpos].name;
		msg[talkpos].event();
		c_charpush(new talkchar(msg[talkpos].sprite, msg[talkpos].name, msg[talkpos].spritepos));
		talkspeed = talker[0].textspeed;
		if msg[talkpos].bg != "UNCHANGED" bg = msg[talkpos].bg;
		didsounds = array_create(999);
		didfuncs = array_create(999);
		atsound = 0;
		atfunc = 0;
	} until msg[talkpos].type == "normal";
}