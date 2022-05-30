c_input();
count++;

if !txtprocessed {
    msgscript();
    txtprocessed = true;
	talksize = array_length(msg);
	talkpos = 0;
	talklength = string_length(msg[talkpos].text)+1;
	drawing = ""
	drawchars = 0;
	msg[talkpos].event();
	c_charpush(new talkchar(msg[talkpos].sprite, msg[talkpos].name, msg[talkpos].spritepos));
	talkspeed = talker[0].textspeed;
	var i;
	for (i=0; i<array_length(talker[0].texteffects); i++) {
		msg[talkpos].text = talker[0].texteffects + msg[talkpos.text];
	}
	if msg[talkpos].bg != "UNCHANGED" bg = msg[talkpos].bg;
}

if wait {
	wait--;
	exit;
}


if ctrlh {
    select = true;
}
if !advance {
	select = false;
}
if selecting {
	select = true;
	selecting = false;
}


if drawchars <= talklength && !skipped {
    skip = select;
    drawchars += talkspeed;
	if ncm(4+round((1/talkspeed)/4)) {
		var guy = audio_play_sound(talker[0].talksound, 0, false);
		audio_sound_gain(guy, .2, 0);
		audio_sound_pitch(guy, random(1)+.5);
	}
    if skip { //yeah almost
		while drawchars <= talklength && string_copy(msg[talkpos].text, drawchars+specialchars, 2) != "|w" {
			//log(string_copy(msg[talkpos].text, drawchars, 2))
			drawchars++;
		}
    }
    message_draw = string_copy(msg[talkpos].text, 0, drawchars);
} else { 
    if select {
        if (talkpos < talksize-1) {
			talkpos++;
			talklength = string_length(msg[talkpos].text);
			drawing = "";
			drawchars = 0;
			name = msg[talkpos].name;
			msg[talkpos].event();
			c_charpush(new talkchar(msg[talkpos].sprite, msg[talkpos].name, msg[talkpos].spritepos));
			talkspeed = talker[0].textspeed;
			if msg[talkpos].bg != "UNCHANGED" bg = msg[talkpos].bg;
        } else {
			endevent();
            instance_destroy();
        }
    }
}