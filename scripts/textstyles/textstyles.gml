global.gw = 290;
global.gh = 340;//uh oh

enum TEXTTYPE {
	ADV,
	NVL,
	FREE,
	OUTLINE,
	FACEPIC,
}

global.textdefault = {
	x: 320,
	y: 250,
	width: 420,
	height: 80,
	spriteposx: 210,
	spriteposy: 190,
	sprite: s_spacetext,
	type: TEXTTYPE.ADV,
}
global.textnvl = {
	x: 320,
	y: 30,
	width: 420,
	height: 300,
	spriteposx: 210,
	spriteposy: 190,
	sprite: s_bigtext,
	type: TEXTTYPE.NVL,
}

global.textshop = {
	x: 250,
	y: 40,
	width: 190,
	height: 60,
	spriteposx: 250,
	spriteposy: 180,
	sprite: s_null,
	type: TEXTTYPE.FREE,
}

global.textcalling = {
	x: global.gw-160,
	y: global.gh/2-80,
	width: 200,
	height: 40,
	spriteposx: -90,
	spriteposy: -90,
	sprite: s_null,
	type: TEXTTYPE.FREE,
}

global.textnod = {
	x: 9999,
	y: 9999,
	width: 280,
	height: 60,
	spriteposx: 80,
	spriteposy: 220,
	sprite: s_null,
	type: TEXTTYPE.FREE,
}


