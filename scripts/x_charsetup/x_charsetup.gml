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

#macro ME global.textguy[?"me"]
nu chardata("Me", s_kodohimey);
var z=0;
nu talksprite("DEF", "me", z++);
nu talksprite("DISTANT", "me", z++);
nu talksprite("HEHE", "me", z++);
nu talksprite("KAAAY", "me", z++);
nu talksprite("MIFFED", "me", z++);
nu talksprite("POG", "me", z++);
nu talksprite("POGQMARK", "me", z++);
nu talksprite("SMUG", "me", z++);
nu talksprite("WAAH", "me", z++);
nu talksprite("WHAA", "me", z++);
nu talksprite("WINKY", "me", z++);
nu talksprite("WINKYHEART", "me", z++);
nu talksprite("YAY", "me", z++);
nu talksprite("YAYSWEAT", "me", z++);
nu talksprite("HEHENOTE", "me", z++);
nu talksprite("YAYNOTE", "me", z++);
nu talksprite("TINYSMIRK", "me", z++);
nu talksprite("DISAPOINT", "me", z++);



#macro MARY global.textguy[?"mary"]
nu chardata("Mary", s_mary);
var z=0;
nu talksprite("DEF", "mary", z++);
nu talksprite("OOH", "mary", z++);
nu talksprite("YAY", "mary", z++);
nu talksprite("AWW", "mary", z++);
nu talksprite("SHOCKED", "mary", z++);
nu talksprite("UHH", "mary", z++);
nu talksprite("WAAH", "mary", z++);
nu talksprite("HUH", "mary", z++);
nu talksprite("HAAHH", "mary", z++);
nu talksprite("AHHH", "mary", z++);
nu talksprite("OVERJOYED", "mary", z++);



#macro GIRL global.textguy[?"girl"]
nu chardata("Girl", s_mary);
var z=0
nu talksprite("DEF", "girl", z++);
nu talksprite("OOH", "girl", z++);
nu talksprite("YAY", "girl", z++);
nu talksprite("AWW", "girl", z++);
nu talksprite("ANGERY", "girl", z++);
nu talksprite("UHH", "girl", z++);
nu talksprite("WAAH", "girl", z++);
nu talksprite("HUH", "girl", z++);
nu talksprite("HAAHH", "girl", z++);


#macro MEIRA global.textguy[?"meira"]
nu chardata("Meira", s_meira);
var z=0;
nu talksprite("DEF", "meira", z++);
nu talksprite("SWEAT", "meira", z++);
nu talksprite("ANGERY", "meira", z++);
nu talksprite("DEFEATED", "meira", z++);


#macro LEIMU global.textguy[?"leimu"]
nu chardata("Leimu", s_leimu);
var z=0;
nu talksprite("DEF", "leimu", z++);
nu talksprite("HAHA", "leimu", z++);
nu talksprite("MIFFED", "leimu", z++);
nu talksprite("SWEAT", "leimu", z++);
nu talksprite("YAY", "leimu", z++);





//beans








#macro EIRIN global.textguy[?"eirin"]
nu chardata("Eirin", s_null, se_talkbloop);
nu talksprite("NORMAL", "eirin", 0);

#macro KAGUYA global.textguy[?"kaguya"]
nu chardata("Kaguya", s_kaguya, se_talkbloop);
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