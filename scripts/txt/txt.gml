function txt(text_=c_errorstring(), sprite_=global.textguy[?""].NOTHING, spritepos_=SPRITEPOS.REPLACE, bg_="UNCHANGED", event_=c_null, sounds_=[], funcs_=[]) {
	return {
		text: text_,
		name: sprite_.char.name,
		sprite: sprite_.val,
		guy: sprite_.char,
		event: event_,
		spritepos: spritepos_,
		bg: bg_,
		sounds: sounds_,
		funcs: funcs_,
		type:"normal",
	};
}//not technically a constructor since dont wanna write new every time

function ntxt(wait=0, sprite_=global.textguy[?""].NOTHING, spritepos_=SPRITEPOS.HIDDEN, bg_="UNCHANGED", event_=c_null) {
	return {
		text: "|w"+ string_format(wait, 4, 0) + "|-",
		name: sprite_.char.name,
		sprite: sprite_.val,
		event: event_,
		spritepos: spritepos_,
		bg: bg_,
		type: "ntxt",
	};
}

function ptxt(wait=0, sprite_=global.textguy[?""].NOTHING, spritepos_=SPRITEPOS.HIDDEN, bg_="UNCHANGED", event_=c_null) {
	return {
		text: "",
		name: sprite_.char.name,
		sprite: sprite_.val,
		event: event_,
		spritepos: spritepos_,
		bg: bg_,
		type: "ptxt",
	};
}

enum SPRITEPOS {
	LEFT,
	MIDLEFT,
	CENTER,
	MIDRIGHT,
	RIGHT,
	HIDDEN,
	REPLACE,
}