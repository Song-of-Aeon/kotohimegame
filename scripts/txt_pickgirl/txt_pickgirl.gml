function txt_kana() {
	flg.kana = 1;
	msg = msglang([
	txt("|c160160160A girl in a clean dress sits idly by her lonesome.", u, u, s_bar),
	txt("|c160160160She seems to be daydreaming..."),
	txt("|c102137255Could that be...?", KAGUYA2.SURPRISED, SPRITEPOS.MIDRIGHT),
	txt("|c102137255It's subtle, but that person isn't fully tainted by the Earth.", KAGUYA2.DISAPPOINTED),
	txt("|c102137255Are there more refugees from the Lunar Capital in Gensokyo?", KAGUYA2.CONFUSED),
	txt("Kotohime, that person over there...", KAGUYA2.CONFUSED, u, s_thebar),
	txt("Oh, Kana? Yeah, she's neat. Kinda hard to talk to, being a phantom and all.", KOTOHIME.HAPPY, SPRITEPOS.MIDLEFT),
	txt("I see.", KAGUYA2.HAPPY),
	txt("|c102137255A phantom, then. That's fine.", KAGUYA2.HAPPY),
	txt("|c102137255Yet, it would be impossible for us to understand eachother.", KAGUYA2.DISAPPOINTED),
	txt("|c102137255As someone who has died and someone who can never...", KAGUYA2.DISAPPOINTED),
	txt("|c102137255I'll look elsewhere.", KAGUYA2.HAPPY),
	],[txt(""),])
	endevent = c_pickgirl;
}
function txt_gengetsu() {
	flg.gengetsu = 1;
	msg = msglang([
	txt("|c160160160A woman with wide, transluscent wings scratches away at a scroll with ink.", u, u, s_bar),
	txt("|c160160160She seems to be illustrating a chaotic scene."),
	txt("Kotohime, that girl seems interesting.", KAGUYA2.EXCITED, SPRITEPOS.MIDRIGHT, s_thebar),
	txt("Ah, her...", KOTOHIME.DISAPPOINTED, SPRITEPOS.MIDLEFT),
	txt("The name is something-getsu, I believe.", KOTOHIME.THINKING),
	txt("From Makai, she hails. She was a great sparring partner, back when I practiced danmaku.", KOTOHIME.HAPPY),
	txt("And you do not presently?", KAGUYA2.SURPRISED),
	txt("...I do not. Maybe it's because something-getsu here is too IMPATIENT and wouldn't let me breathe for a MOMENT without some impossible pattern!", KOTOHIME.THINKING),
	txt("|c160160160The woman stops her violent ink strokes, and turns toward Kotohime and Kaguya."),
	txt("|c160160160She swiftly constructs an immaculate grin with much finer care than afforded for her illustration."),
	txt("Ha.", GENGETSU.NORMAL),
	txt("|c160160160Work on the scroll continues."),
	txt("|c102137255...It seems she also has good ears.", KAGUYA2.GRIN),
	],[txt(""),])
	endevent = c_pickgirl;
}
function txt_sariel() {
	flg.sariel = 1;
	msg = msglang([
	txt("|c160160160An unusually tall, commanding person is conversing with an average-looking human in a lab coat.", u, u, s_bar),
	txt("|c160160160Six albescent wings radiate from the back of the taller person."),
	txt("Those two don't seem very well-matched.", KAGUYA2.CONFUSED, SPRITEPOS.MIDRIGHT, s_thebar),
	txt("Oh, there's the scientist who made the machine Chiyurii used earlier.", KOTOHIME.HAPPY, SPRITEPOS.MIDLEFT),
	txt("The person she's talking to is Sariel.", KOTOHIME.HAPPY),
	txt("I don't really know what their deal is, but they're nice.", KOTOHIME.LMAO),
	txt("What an interesting being. Surely not human or youkai...", KAGUYA2.CONFUSED),
	txt("Nor a god or of pure lands. Who knows?", KOTOHIME.SMUG),
	txt("Our scientist there used to really have a problem with them.", KOTOHIME.HAPPY),
	txt("Kept shoving evidence that supposedly proved that \"they couldn't exist\" to their face.", KOTOHIME.THINKING),
	txt("Sariel always took it nicely and offered to help in her studies, and eventually they started talking out like this.", KOTOHIME.HAPPY),
	txt("How cute.", KAGUYA2.SMUG),
	txt("|c102137255I suppose I shouldn't interrupt the two.", KAGUYA2.HAPPY),
	],[txt(""),])
	endevent = c_pickgirl;
}
function txt_ruukoto() {
	flg.ruukoto = 1;
	msg = msglang([
	txt("|c160160160A girl in a western maid outfit reads newspapers intently while sipping a dark drink in a mug.", u, u, s_bar),
	txt("|c160160160There are multiple bottles of sake on her table, some empty."),
	txt("|c102137255I can't make it out from here. Is that coffee? It's black enough to be oil...", KAGUYA2.SURPRISED, SPRITEPOS.MIDRIGHT),
	txt("Is that girl alright? She's drinking so much, alone, at this time of day...", KAGUYA2.CONFUSED, u, s_thebar),
	txt("She is quite fine. Ruukoto there isn't like us. She's a living metal doll.", KOTOHIME.THINKING, SPRITEPOS.MIDLEFT),
	txt("To her, alcohol is water. She needs it to survive, as fuel or something.", KOTOHIME.HAPPY),
	txt("Many troubled men say the same things.", KAGUYA2.HAPPY),
	txt("In this case, it's literal.", KOTOHIME.HAPPY),
	txt("I wouldn't talk to her right now, though. She's having trouble keeping a job down, recently.", KOTOHIME.HAPPY),
	txt("Very well.", KAGUYA2.HAPPY),
	],[txt(""),])
	endevent = c_pickgirl;
}
