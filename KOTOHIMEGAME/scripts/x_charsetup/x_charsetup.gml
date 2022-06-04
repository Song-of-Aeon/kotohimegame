nu chardata("Reimu", s_reimu16, se_talkpew, .5);
nu chardata("Aunn", s_aunn16, se_talkpew, .5);
nu chardata("Mike", s_mike16, se_talkgeneral, .5);
nu chardata("Yukari", s_yukari16, se_talkbloop, .3);
nu chardata("Reisen", s_reisen16, se_talkbloop, .5);
nu chardata("Yumemi", s_yumemi16, se_talkbloop, .8);
nu chardata("Chiyuri", s_chiyuri16, se_talkpew, .5);
nu chardata("", s_null, se_null, 1);
nu chardata("spamton g. spamton", s_drip);
nu chardata();

#macro KOTOHIME global.textguy[?"kotohime"]
nu chardata("Kotohime", s_kotohime, se_talkbloop);
nu talksprite("NORMAL", "kotohime", 0);

#macro EIRIN global.textguy[?"eirin"]
nu chardata("Eirin", s_null, se_talkbloop);
nu talksprite("NORMAL", "eirin", 0);

#macro KAGUYA global.textguy[?"kaguya"]
nu chardata("Kaguya", s_null, se_talkbloop);
nu talksprite("NORMAL", "kaguya", 0);

function chardata(name_="drip", sprite_=s_drip, talksound_=se_null, textspeed_=.5, texteffects_=[]) constructor {
	name = name_;
	sprite = sprite_;
	talksound = talksound_;
	textspeed = textspeed_;
	texteffects = texteffects_;
	
	global.textguy[?string_lower(name)] = self;
}


#macro from var a =
//SORRY LMAO

from s_reimu16;



var z=0;
nu talksprite("HAPPY", "reimu", z++);
nu talksprite("CONCERNED", "reimu", z++);
nu talksprite("UNIMPRESSED", "reimu", z++);
nu talksprite("WINKING", "reimu", z++);
nu talksprite("POG", "reimu", z++);
nu talksprite("ANNOYED", "reimu", z++);
nu talksprite("NOTHING", "reimu", z++);

var z=0;
nu talksprite("NOTHING", "yukari", z++);

var z=0;
nu talksprite("NOTHING", "mike", z++);

var z=0;
nu talksprite("HAPPY", "aunn", z++);
nu talksprite("TALKING", "aunn", z++);
nu talksprite("SERIOUS", "aunn", z++);
nu talksprite("INTENSE", "aunn", z++);
nu talksprite("NOTHING", "aunn", z++);

var z=0;
nu talksprite("BORED", "chiyuri", z++);
nu talksprite("WOAH", "chiyuri", z++);
nu talksprite("DAMN", "chiyuri", z++);
nu talksprite("WHAT", "chiyuri", z++);
nu talksprite("GRIN", "chiyuri", z++);
nu talksprite("CRINGE", "chiyuri", z++);
nu talksprite("WOODMAN", "chiyuri", z++);
nu talksprite("PHONE", "chiyuri", z++);
nu talksprite("PHONECONFUSED", "chiyuri", z++);
nu talksprite("NOTHING", "chiyuri", z++);

var z=0;
nu talksprite("HAPPY", "yumemi", z++);
nu talksprite("HAPPYOPEN", "yumemi", z++);
nu talksprite("PRESSURED", "yumemi", z++);
nu talksprite("PRESSUREDPOINT", "yumemi", z++);
nu talksprite("SMUG", "yumemi", z++);
nu talksprite("EXPLAINING", "yumemi", z++);
nu talksprite("ANNOYED", "yumemi", z++);
nu talksprite("ANNOYEDPOINT", "yumemi", z++);
nu talksprite("ELEMENTARY", "yumemi", z++);
nu talksprite("NERVOUS", "yumemi", z++);
nu talksprite("NERVOUSFIST", "yumemi", z++);
nu talksprite("NOTMYPROBLEM", "yumemi", z++);
nu talksprite("NOTMYPROBLEMPOINT", "yumemi", z++);
nu talksprite("NOTHING", "yumemi", z++);

var z=0;
nu talksprite("HAPPY", "reisen", z++);
nu talksprite("SURPRISED", "reisen", z++);
nu talksprite("SHITSTUFF", "reisen", z++);
nu talksprite("DAMN", "reisen", z++);
nu talksprite("GODDAMN", "reisen", z++);
nu talksprite("PEWPEW", "reisen", z++);
nu talksprite("NOTHING", "reisen", z++);

nu talksprite("NOTHING", "", 0);


function talksprite(name_, char_, val_) constructor {
	val = val_;
	variable_struct_set(global.textguy[?char_], name_, self);
	char = global.textguy[?char_];
}

#macro REIMU global.textguy[?"reimu"]
#macro YUKARI global.textguy[?"yukari"]
#macro AUNN global.textguy[?"aunn"]
#macro MIKE global.textguy[?"mike"]
#macro REISEN global.textguy[?"reisen"]
#macro CHIYURI global.textguy[?"chiyuri"]
#macro YUMEMI global.textguy[?"yumemi"]