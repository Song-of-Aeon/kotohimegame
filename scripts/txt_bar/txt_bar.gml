function txt_bar() {
	
	msg = msglang([
	
	txt("..."),
	txt("This is it?", KAGUYA2.NORMAL, SPRITEPOS.LEFT),
	txt("A bit...", KAGUYA2.NORMAL),
	txt("Dingy, drab, and inelegant. It does not appear to be fit for a princess.", KOTOHIME.DISAPPOINTED, SPRITEPOS.MIDRIGHT),
	txt("But we are not here as princesses today.", KOTOHIME.SMUG),
	txt("Embrace the lifestyle of the average Gensokyo citizen... is what I would say.", KOTOHIME.DISAPPOINTED),
	txt("In truth, it is actually quite nice inside.", KOTOHIME.THINKING),
	txt("I see...", KAGUYA2.NORMAL),
	txt("..."),
	txt("And here we are!", KOTOHIME.HAPPY, SPRITEPOS.MIDLEFT),
	txt("|c160160160The bar is lined with tables around its edge, with a spacious center area."),
	txt("|c160160160Nobody looks up to greet the newcomers, already absorbed in their conversations and entertainment."),
	txt("There's a small lounge upstairs, but here should be fine for now.", KOTOHIME.HAPPY),
	txt("It is true that this place is nice... but for somewhere to convene during the day, it is unusual.", KAGUYA2.NORMAL),
	txt("It's impossible for one to tell the time here; there's not even any windows.", KAGUYA2.NORMAL),
	txt("That's sort of a policy here.", KOTOHIME.THINKING),
	txt("This place is open to human and youkai alike, as well?", KAGUYA2.NORMAL),
	txt("Of course. That's part of why the time of day is ignored.", KOTOHIME.SMUG),
	txt("For humans who work in the day and youkai who prowl in the night, it's unfair to give credence to one or the other in this place.", KOTOHIME.SMUG, SPRITEPOS.MIDRIGHT),
	txt("I told you, didn't I? This place is unconcerned with the outside's business.", KOTOHIME.LMAO),
	txt("This bar exists in perpetual twilight, never bound to the sun or the moon, to human or youkai. We are equals in the dusk glow.", KOTOHIME.SMUG),
	txt("Hence the name.", KAGUYA2.NORMAL),
	txt("No, I just made that up. It sort of fits, though.", KOTOHIME.LMAO, SPRITEPOS.MIDLEFT),
	txt("Should a princess truly be able to lie as easily as she breathes?", KAGUYA2.NORMAL),
	txt("That's the mark of the poet, dear Kaguya.", KOTOHIME.WINK),
	txt("I hope poetry is all you put such words to use for.", KAGUYA2.NORMAL),
	txt("Yes...#Regardless, shall we venture forth?", KOTOHIME.THINKING),
	txt("I'd like to take some time to get acquainted with the atmosphere, before doing anything.", KAGUYA2.NORMAL),
	txt("I was about to say the same thing.", KOTOHIME.HAPPY),
	txt("HEY, RIKA! GET US SOMETHING LIGHT!", KOTOHIME.EXCITED, SPRITEPOS.CENTER),
	txt("AT LEAST COME OVER TO THE DAMN BAR, KOTOHIME!", CHIYURI.NOTHING),
	txt("A reasonable request. I'll be back in a moment.", KOTOHIME.SMUG),
	ntxt(0, KAGUYA2.NORMAL, SPRITEPOS.HIDDEN),
	ntxt(0, KOTOHIME.SMUG, SPRITEPOS.LEFT),
	txt("|c160160160Kotohime approaches the bar quickly."),
	txt("Also, Rika isn't here today.", CHIYURI.NOTHING, SPRITEPOS.RIGHT),
	txt("So I gather. Hi, Chiyurii!", KOTOHIME.LMAO, SPRITEPOS.MIDLEFT),
	txt("Yo. Who's the new girl?", CHIYURI.NOTHING),
	txt("Just a friend. Well, a fellow princess-in-arms.", KOTOHIME.HAPPY),
	txt("A princess...? I guess they aren't all that uncommon. She does look the part.", CHIYURI.NOTHING),
	txt("Oh, but she is quite a refined lady.", KOTOHIME.SMUG),
	txt("In fact-#Well, Chiyurii, can you keep a secret?", KOTOHIME.HAPPY, SPRITEPOS.CENTER),
	txt("Sure.", CHIYURI.NOTHING, SPRITEPOS.MIDRIGHT),
	txt("|s0.5(She's Kaguya! From, you know!)", KOTOHIME.LMAO),
	txt("|s0.5(!!)#(You mean, that Kaguya?)", CHIYURI.NOTHING),
	txt("|s0.5(Yes!)", KOTOHIME.EXCITED),
	txt("...Oh boy.#We're gonna have a problem.", CHIYURI.NOTHING, SPRITEPOS.RIGHT),
	txt("Kotohime, follow me.", CHIYURI.NOTHING),
	ntxt(0, KOTOHIME.EXCITED, SPRITEPOS.LEFT),
	ntxt(0, CHIYURI.NOTHING, SPRITEPOS.CENTER),
	txt("|c160160160The two go behind the bar, past a storage room in the back, and through the back exit.", CHIYURI.NOTHING),
	txt("Is something wrong?", KOTOHIME.HAPPY),
	txt("Yeah, something's wrong.", CHIYURI.NOTHING, SPRITEPOS.MIDRIGHT),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {
		c_additem(ITEMS.UNDERTALE);
		//textbox_create(txt_itsdemo);
	};
}