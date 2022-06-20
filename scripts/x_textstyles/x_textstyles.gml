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
	x: 640,
	y: 520,
	width: 840,
	height: 160,
	spriteposx: 210,
	spriteposy: 400,
	sprite: s_spacetext,
	type: TEXTTYPE.ADV,
	font: FONT.TALK,
}
global.textzpix = {
	x: 640,
	y: 520,
	width: 840,
	height: 160,
	spriteposx: 210,
	spriteposy: 400,
	sprite: s_spacetext,
	type: TEXTTYPE.ADV,
	font: FONT.ZPIX,
}
global.textchara = {
	x: 330,
	y: 195,
	width: 420,
	height: 80,
	spriteposx: 210,
	spriteposy: 190,
	sprite: s_null,
	type: TEXTTYPE.ADV,
	font: FONT.DETERMINATION,
}
global.texttale = {
	x: 420,
	y: 40,
	width: 185,
	height: 120,
	spriteposx: 210,
	spriteposy: 190,
	sprite: s_textbubble,
	type: TEXTTYPE.ADV,
	font: FONT.DETERMINATIONSMALL,
}
global.textfacepic = {
	x: 320,
	y: 250,
	width: 420,
	height: 80,
	spriteposx: 210,
	spriteposy: 190,
	sprite: s_spacetext,
	type: TEXTTYPE.FACEPIC,
	font: FONT.TALK,
}
global.textnvl = {
	x: 640,
	y: 60,
	width: 840,
	height: 600,
	spriteposx: 210,
	spriteposy: 190,
	sprite: s_bigtext,
	type: TEXTTYPE.NVL,
	font: FONT.ZPIX,
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
	font: FONT.TALK,
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
	font: FONT.TALK,
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
	font: FONT.TALK,
}


