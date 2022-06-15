nu chardata("Reimu", s_reimu16, se_talkpew, .5);
nu chardata("Aunn", s_aunn16, se_talkpew, .5);
nu chardata("Mike", s_mike16, se_talkgeneral, .5);
nu chardata("Yukari", s_yukari16, se_talkbloop, .3);
nu chardata("Reisen", s_reisen16, u, .5);
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
nu talksprite("NEUTRAL", "me", z++);



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



#macro REIMU global.textguy[?"reimu"]
nu chardata("Reimu", s_reimu);
var z=0;
nu talksprite("DEF", "reimu", z++);
nu talksprite("HAHA", "reimu", z++);
nu talksprite("MIFFED", "reimu", z++);
nu talksprite("SWEAT", "reimu", z++);
nu talksprite("YAY", "reimu", z++);


#macro KANA global.textguy[?"kana"]
nu chardata("Kana", s_kana);
var z=0;
nu talksprite("DEF", "kana", z++);
nu talksprite("AWW", "kana", z++);
nu talksprite("YAY", "kana", z++);
nu talksprite("WINKY", "kana", z++);
nu talksprite("MAD", "kana", z++);
nu talksprite("COCKY", "kana", z++);
nu talksprite("NEUTRAL", "kana", z++);
nu talksprite("SCARED", "kana", z++);
nu talksprite("DISTANT", "kana", z++);
nu talksprite("SADSMILE", "kana", z++);
nu talksprite("BRUH", "kana", z++);



//beans








#macro KAGUYA global.textguy[?"kaguya"]
nu chardata("Kaguya", s_kaguya);
var z=0;
nu talksprite("NORMAL", "kaguya", z++);
nu talksprite("DEF", "kaguya", z++);
nu talksprite("AWW", "kaguya", z++);
nu talksprite("FUFUFU", "kaguya", z++);
nu talksprite("YAY", "kaguya", z++);
nu talksprite("COCKY", "kaguya", z++);
nu talksprite("NEUTRAL", "kaguya", z++);
nu talksprite("WAAH", "kaguya", z++);
nu talksprite("SHOCKED", "kaguya", z++);
nu talksprite("SMUG", "kaguya", z++);
nu talksprite("WINKY", "kaguya", z++);
nu talksprite("WINKYHEART", "kaguya", z++);
nu talksprite("WOAH", "kaguya", z++);
nu talksprite("CRY", "kaguya", z++);
nu talksprite("CRYSMILE", "kaguya", z++);
nu talksprite("LOVEY", "kaguya", z++);


#macro REISEN global.textguy[?"reisen"]
var z=0;
nu talksprite("HAPPY", "reisen", z++);
nu talksprite("SURPRISED", "reisen", z++);
nu talksprite("SHITSTUFF", "reisen", z++);
nu talksprite("DAMN", "reisen", z++);
nu talksprite("GODDAMN", "reisen", z++);
nu talksprite("KABLOOEY", "reisen", z++);
nu talksprite("NEUTRAL", "reisen", z++);
nu talksprite("HEH", "reisen", z++);
nu talksprite("UGGH", "reisen", z++);
nu talksprite("YAY", "reisen", z++);
nu talksprite("WOAH", "reisen", z++);
nu talksprite("CONFUZZLED", "reisen", z++);
nu talksprite("SMUG", "reisen", z++);
nu talksprite("MAD", "reisen", z++);
nu talksprite("LUNATICEYES", "reisen", z++);



#macro MOKOU global.textguy[?"mokou"]
nu chardata("Mokou", s_mokou);
var z=0;
nu talksprite("DEF", "mokou", z++);
nu talksprite("NEUTRAL", "mokou", z++);
nu talksprite("HMPH", "mokou", z++);
nu talksprite("YAY", "mokou", z++);
nu talksprite("COCKY", "mokou", z++);
nu talksprite("SMUG", "mokou", z++);
nu talksprite("MAD", "mokou", z++);
nu talksprite("SAD", "mokou", z++);
nu talksprite("SADSMILE", "mokou", z++);
nu talksprite("SURPRISED", "mokou", z++);
nu talksprite("LOVEY", "mokou", z++);
nu talksprite("LOVEYSAD", "mokou", z++);
nu talksprite("CRYLAUGH", "mokou", z++);




#macro KAGUYA2 global.textguy[?"kaguya2"]
nu chardata("Kaguya2", s_kaguya2);
nu talksprite("NORMAL", "kaguya2", 0);

#macro EIRIN global.textguy[?"eirin"]
nu chardata("Eirin", s_null, se_talkbloop);
nu talksprite("NORMAL", "eirin", 0);



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







nu talksprite("NOTHING", "reisen", z++);

nu talksprite("NOTHING", "", 0);


function talksprite(name_, char_, val_) constructor {
	val = val_;
	variable_struct_set(global.textguy[?char_], name_, self);
	char = global.textguy[?char_];
}

#macro YUKARI global.textguy[?"yukari"]
#macro AUNN global.textguy[?"aunn"]
#macro MIKE global.textguy[?"mike"]
#macro CHIYURI global.textguy[?"chiyuri"]
#macro YUMEMI global.textguy[?"yumemi"]