nu chardata("Reimu", s_reimu16, se_talkpew, .5);
nu chardata("Aunn", s_aunn16, se_talkpew, .5);
nu chardata("Mike", s_mike16, se_talkgeneral, .5);
nu chardata("Yukari", s_yukari16, se_talkbloop, .3);
nu chardata("Reisen", s_reisen16, se_ntalk8, .75);
nu chardata("Yumemi", s_yumemi16, se_talkbloop, .8);
nu chardata("Chiyuri", s_chiyurii, se_ntalk5, .5);
nu chardata("", s_null, se_null, .75);
nu chardata("spamton g. spamton", s_drip);
nu chardata();



#macro KOTOHIME global.textguy[?"kotohime"]
nu chardata("Kotohime", s_kotohime, se_ntalk1, .75);
var z=0;
nu talksprite("HAPPY", "kotohime", z++);
nu talksprite("LMAO", "kotohime", z++);
nu talksprite("DISAPPOINTED", "kotohime", z++);
nu talksprite("EXCITED", "kotohime", z++);
nu talksprite("THINKING", "kotohime", z++);
nu talksprite("SMUG", "kotohime", z++);
nu talksprite("NERVOUS", "kotohime", z++);
nu talksprite("WINK", "kotohime", z++);
nu talksprite("STUNNED", "kotohime", z++);
nu talksprite("SOLEMN", "kotohime", z++);
nu talksprite("SILENT", "kotohime", z++);
nu talksprite("NOTHING", "kotohime", z++);

#macro ME global.textguy[?"me"]
nu chardata("Me", s_kodohimey, se_null, .75);
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
nu talksprite("JDGMOKU", "me", z++);
nu talksprite("JDGKAGU", "me", z++);
nu talksprite("JDGALL", "me", z++);

#macro KME global.textguy[?" me "]
nu chardata(" Me ", s_kaguya, se_null, .75);
var z=0;
nu talksprite("NORMAL", " me ", z++);
nu talksprite("DEF", " me ", z++);
nu talksprite("AWW", " me ", z++);
nu talksprite("FUFUFU", " me ", z++);
nu talksprite("YAY", " me ", z++);
nu talksprite("COCKY", " me ", z++);
nu talksprite("NEUTRAL", " me ", z++);
nu talksprite("MAD", " me ", z++);
nu talksprite("MADEARTH", " me ", z++);
nu talksprite("WAAH", " me ", z++);
nu talksprite("SHOCKED", " me ", z++);
nu talksprite("SMUG", " me ", z++);
nu talksprite("WINKY", " me ", z++);
nu talksprite("WINKYHEART", " me ", z++);
nu talksprite("WOAH", " me ", z++);
nu talksprite("CRY", " me ", z++);
nu talksprite("CRYSMILE", " me ", z++);
nu talksprite("LOVEY", " me ", z++);




#macro REIMU global.textguy[?"reimu"]
nu chardata("Reimu", s_reimu, se_null, .75);
var z=0;
nu talksprite("DEF", "reimu", z++);
nu talksprite("HAHA", "reimu", z++);
nu talksprite("MIFFED", "reimu", z++);
nu talksprite("SWEAT", "reimu", z++);
nu talksprite("YAY", "reimu", z++);

#macro KANA global.textguy[?"kana"]
nu chardata("Kana", s_kana, se_null, .75);
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
nu talksprite("LOVEYSHY", "kana", z++);
nu talksprite("LOVEY", "kana", z++);
nu talksprite("JDGMOKU", "kana", z++);
nu talksprite("JDGKAGU", "kana", z++);



#macro KAGUYA global.textguy[?"kaguya"]
nu chardata("Kaguya", s_kaguya, se_null, .75);
var z=0;
nu talksprite("NORMAL", "kaguya", z++);
nu talksprite("DEF", "kaguya", z++);
nu talksprite("AWW", "kaguya", z++);
nu talksprite("FUFUFU", "kaguya", z++);
nu talksprite("YAY", "kaguya", z++);
nu talksprite("COCKY", "kaguya", z++);
nu talksprite("NEUTRAL", "kaguya", z++);
nu talksprite("MAD", "kaguya", z++);
nu talksprite("MADEARTH", "kaguya", z++);
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
nu talksprite("DEF", "reisen", z++);
nu talksprite("HEH", "reisen", z++);
nu talksprite("UGGH", "reisen", z++);
nu talksprite("YAY", "reisen", z++);
nu talksprite("WOAH", "reisen", z++);
nu talksprite("CONFUZZLED", "reisen", z++);
nu talksprite("SMUG", "reisen", z++);
nu talksprite("MAD", "reisen", z++);
nu talksprite("LUNATICEYES", "reisen", z++);
nu talksprite("JDGMOKU", "reisen", z++);
nu talksprite("JDGKAGU", "reisen", z++);



#macro MOKOU global.textguy[?"mokou"]
nu chardata("Mokou", s_mokou, se_null, .75);
var z=0;
nu talksprite("DEF", "mokou", z++);
nu talksprite("NEUTRAL", "mokou", z++);
nu talksprite("HMPH", "mokou", z++);
nu talksprite("YAY", "mokou", z++);
nu talksprite("COCKY", "mokou", z++);
nu talksprite("SMUG", "mokou", z++);
nu talksprite("MAD", "mokou", z++);
nu talksprite("REALLYMAD", "mokou", z++);
nu talksprite("MADMOON", "mokou", z++);
nu talksprite("BRUH", "mokou", z++);
nu talksprite("SAD", "mokou", z++);
nu talksprite("SADSMILE", "mokou", z++);
nu talksprite("SURPRISED", "mokou", z++);
nu talksprite("LOVEYSAD", "mokou", z++);
nu talksprite("CRYLAUGH", "mokou", z++);
nu talksprite("LOVEY", "mokou", z++);




#macro KAGUYA2 global.textguy[?" kaguya "]
nu chardata(" Kaguya ", s_kaguya2, se_ntalk3);
nu talksprite("NORMAL", " kaguya ", 0);


#macro KEINE global.textguy[?"keine"]
nu chardata("Keine", s_keine, se_null, .75);
nu talksprite("DEF", "keine", 0);


#macro EIRIN global.textguy[?"eirin"]
nu chardata("Eirin", s_eirin, se_ntalk1);
nu talksprite("NORMAL", "eirin", 0);

#macro GENGETSU global.textguy[?"gengetsu"]
nu chardata("Gengetsu", s_null, se_ntalk2);
nu talksprite("NORMAL", "gengetsu", 0);

#macro ELLY global.textguy[?"elly"]
nu chardata("Elly", s_elly, se_ntalk4);
var z=0;
nu talksprite("HAPPY", "elly", z++);
nu talksprite("BORED", "elly", z++);
nu talksprite("ANNOYED", "elly", z++);
nu talksprite("CONFUSED", "elly", z++);
nu talksprite("SURPRISED", "elly", z++);
nu talksprite("FAKELAUGH", "elly", z++);
nu talksprite("BLUSH", "elly", z++);



function chardata(name_="drip", sprite_=s_drip, talksound_=se_null, textspeed_=.5, namecolor_=c_white, texteffects_=[]) constructor {
	name = name_;
	sprite = sprite_;
	talksound = talksound_;
	textspeed = textspeed_;
	namecolor = namecolor_;
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