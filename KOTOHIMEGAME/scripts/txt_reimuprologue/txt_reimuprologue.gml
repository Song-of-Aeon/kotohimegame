function txt_reimuprologue() {
	msg = msglang([
	
	txt("Reimu.", YUKARI.NOTHING, u, s_reimuintro1b, function() {ISAAC.state = c_null music_set(mus.null)}),
	txt("Tch.#What do you want?", REIMU.NOTHING),
	txt("I have a direct request for you.#I want you to go to the moon.", YUKARI.NOTHING),
	txt("...What?", REIMU.NOTHING),
	txt("This is relevant to your duty#as a shrine maiden.", YUKARI.NOTHING),
	txt("It does not matter how you arrive#or return.#You will understand when you get there.", YUKARI.NOTHING),
	txt("Hey, no, no, no,#I'm not going to the moon!", REIMU.NOTHING),
	txt("And if I have to go,#just take me there yourself!", REIMU.NOTHING),
	txt("I'm terribly busy at the moment.", YUKARI.NOTHING),
	txt("You've done it before, haven't you?", YUKARI.NOTHING),
	txt("That's not the point!#It's a pain!#Get out of here!", REIMU.NOTHING),
	txt("Very well.", YUKARI.NOTHING),
	
	txt("The gap youkai left, just like that.", u, u, s_black, u),
	txt("Reimu would continually annoy herself#by thinking about the encounter#for a few hours..."),
	txt("Before deciding that it would be best#to go after all."),
	
	
	
	txt("\"Direct request\", my ass.", REIMU.NOTHING, u, u),
	txt("Let's just get this over with.", REIMU.NOTHING),
	
	txt("She grabbed her Yin-yang orbs,"),
	txt("her persuasion needles,"),
	txt("and set off for the skies.", u, u, s_reimuintro2b),
	
	],[
	
	txt("霊夢。", REIMU.NOTHING, u, u, function() {ISAAC.state = c_null}),
	txt("げっ。#今度は何。", REIMU.NOTHING),
	txt("簡単頼みがあります。#君が月に行くと欲しいです。", REIMU.NOTHING),
	txt("...えっ。", REIMU.NOTHING),
	txt("博麗の巫女の仕事に関係があるんです。", REIMU.NOTHING),
	txt("着き方か帰り方が構いません。#着いた時に利泰出来る。", REIMU.NOTHING),
	txt("いやいやいや、#月に行かないわ！", REIMU.NOTHING),
	txt("もし行かなきゃ,#君の隙間を使ってでいいだろう！", REIMU.NOTHING),
	txt("今は忙しすぎっています。", REIMU.NOTHING),
	txt("先に行った事があったんですね。", REIMU.NOTHING),
	txt("それより面倒くさい！#出っていて！", REIMU.NOTHING),
	txt("了解しました。", REIMU.NOTHING),
	
	txt("The gap youkai left, just like that."),
	txt("Reimu would continually annoy herself#by thinking about the encounter#for the next day..."),
	txt("Before deciding that it would be best#to go after all."),
	
	
	
	txt("「簡単」って何。", REIMU.NOTHING),
	txt("さっとに終わらせて。", REIMU.NOTHING),
	
	txt("早く陰陽玉と", u, u, u, u, function() {c_additem(ITEMS.YINYANG)}),
	txt("針を取って、", u, u, u, u, function() {c_additem(ITEMS.NEEDLES) c_statthreshold(PICKUPS.OPTIONS) c_additem(ITEMS._UNLOCKS)}),
	txt("に向かった。"),
	
	])
	
	endevent = function() {ISAAC.state = st_standard music_set(mus.thurs1)};
}