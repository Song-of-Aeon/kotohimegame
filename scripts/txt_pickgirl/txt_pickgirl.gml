function txt_kana() {
	flg.kana = 1;
	msg = msglang([
	txt("|c160160160A girl in a clean dress sits idly by her lonesome."),
	txt("|c160160160She seems to be daydreaming..."),
	txt("|c102137255Could that be...?", KAGUYA2.NORMAL, SPRITEPOS.MIDRIGHT),
	txt("|c102137255It's subtle, but that person isn't fully tainted by the Earth.", KAGUYA2.NORMAL),
	txt("|c102137255Are there more refugees from the Lunar Capital in Gensokyo?", KAGUYA2.NORMAL),
	txt("Kotohime, that person over there...", KAGUYA2.NORMAL),
	txt("Oh, Kana? Yeah, she's neat. Kinda hard to talk to, being a phantom and all.", KOTOHIME.NORMAL, SPRITEPOS.MIDLEFT),
	txt("I see.", KAGUYA2.NORMAL),
	txt("|c102137255A phantom, then. That's fine.", KAGUYA2.NORMAL),
	txt("|c102137255Yet, it would be impossible for us to understand eachother.", KAGUYA2.NORMAL),
	txt("|c102137255As someone who has died and someone who can never...", KAGUYA2.NORMAL),
	txt("|c102137255I'll look elsewhere.", KAGUYA2.NORMAL),
	],[txt(""),])
	endevent = c_pickgirl;
}
function txt_gengetsu() {
	flg.gengetsu = 1;
	msg = msglang([
	txt("|c160160160A woman with wide, transluscent wings scratches away at a scroll with ink."),
	txt("|c160160160She seems to be illustrating a chaotic design."),
	txt("Kotohime, that girl seems interesting.", KAGUYA2.NORMAL, SPRITEPOS.MIDRIGHT),
	txt("Ah, her...", KOTOHIME.NORMAL, SPRITEPOS.MIDLEFT),
	txt("I forget her name. Something-getsu.", KOTOHIME.NORMAL),
	txt("From Makai, I think. She was a great sparring partner, back when I practiced danmaku.", KOTOHIME.NORMAL),
	txt("And you do not presently?", KAGUYA2.NORMAL),
	txt("...I do not. Maybe it's because something-getsu here is too IMPATIENT and wouldn't let me breathe for a MOMENT without some impossible pattern!", KOTOHIME.NORMAL),
	txt("|c160160160The woman stops her violent ink strokes, and turns toward Kotohime and Kaguya."),
	txt("|c160160160She swiftly constructs an immaculate grin with much finer detail than her illustration."),
	txt("Ha.", GENGETSU.NORMAL),
	txt("|c160160160Work on the picture continues."),
	txt("|c102137255...It seems she also has good ears.", KAGUYA2.NORMAL),
	],[txt(""),])
	endevent = c_pickgirl;
}
function txt_sariel() {
	flg.sariel = 1;
	msg = msglang([
	txt("|c160160160An unusually tall, commanding person is conversing with an average-looking human in a lab coat."),
	txt("|c160160160Six albescent wings radiate from the back of the taller person."),
	txt("Those two don't seem very well-matched.", KAGUYA2.NORMAL, SPRITEPOS.MIDRIGHT),
	txt("Oh, there's the scientist who made the machine Chiyurii used earlier.", KOTOHIME.NORMAL, SPRITEPOS.MIDLEFT),
	txt("The person she's talking to is Sariel.", KOTOHIME.NORMAL),
	txt("I don't really know what their deal is, but they're nice.", KOTOHIME.NORMAL),
	txt("What an interesting being. Surely not human or youkai...", KAGUYA2.NORMAL),
	txt("Nor a god or of pure lands. Who knows?", KOTOHIME.NORMAL),
	txt("Our scientist there used to really have a problem with them.", KOTOHIME.NORMAL),
	txt("Kept shoving evidence that supposedly proved that \"they couldn't exist\" to their face.", KOTOHIME.NORMAL),
	txt("Sariel always took it nicely and offered to help in her studies, and eventually they started talking out like this.", KOTOHIME.NORMAL),
	txt("How cute.", KAGUYA2.NORMAL),
	txt("|c102137255I suppose I shouldn't interrupt the two.", KAGUYA2.NORMAL),
	],[txt(""),])
	endevent = c_pickgirl;
}
function txt_ruukoto() {
	flg.ruukoto = 1;
	msg = msglang([
	txt("|c160160160A girl in a western maid outfit reads newspapers intently while sipping a dark drink in a mug."),
	txt("|c160160160There are multiple bottles of sake on her table, some empty."),
	txt("|c102137255I can't make it out from here. Is that coffee? It's black enough to be oil...", KAGUYA2.NORMAL),
	txt("Is that girl alright? She's drinking so much, alone, at this time of day...", KAGUYA2.NORMAL),
	txt("She is quite fine. Ruukoto there isn't like us. She's a living metal doll.", KOTOHIME.NORMAL),
	txt("To her, alcohol is water. She needs it to survive, as fuel or something.", KOTOHIME.NORMAL),
	txt("Many sick men say the same things.", KAGUYA2.NORMAL),
	txt("In this case, it's literal.", KOTOHIME.NORMAL),
	txt("I wouldn't talk to her right now, though. She's having trouble keeping a job down, recently.", KOTOHIME.NORMAL),
	txt("Very well.", KAGUYA2.NORMAL),
	],[txt(""),])
	endevent = c_pickgirl;
}
