function txt_bar() {
	
	msg = msglang([
	
	txt("..."),
	txt("This is it?"),
	txt("A bit..."),
	txt("Dingy, drab, and inelegant. It does not appear to be fit for a princess."),
	txt("But we are not here as princesses today."),
	txt("Embrace the lifestyle of the average Gensokyo citizen... is what I would say."),
	txt("In truth, it is actually quite nice inside."),
	txt("I see..."),
	txt("..."),
	txt("And here we are!"),
	txt("The bar is lined with tables around its edge, with a spacious center area."),
	txt("Nobody looks up to greet the newcomers, already absorbed in their conversations and entertainment."),
	txt("There's a small lounge upstairs, but here should be fine for now."),
	txt("I'd like to take some time to get acquainted with the atmosphere, before doing anything."),
	txt("I was about to say the same thing."),
	txt("HEY, RIKA! GET US SOMETHING LIGHT!"),
	txt("AT LEAST COME OVER TO THE DAMN BAR, KOTOHIME!"),
	txt("A reasonable request. I'll be back in a moment."),
	txt("Kotohime approaches the bar quickly."),
	txt("Also, Rika isn't here today."),
	txt("So I gather. Hi, Chiyurii!"),
	txt("Yo. Who's the new girl?"),
	txt("Just a friend. Well, a fellow princess-in-arms."),
	txt("A princess...? I guess they aren't all that uncommon. She does look the part."),
	txt("Oh, but she is quite a refined lady."),
	txt("In fact-#Well, Chiyurii, can you keep a secret?"),
	txt("Sure."),
	txt("She's Kaguya! From, you know!"),
	txt("!!#You mean, that Kaguya?"),
	txt("Yes!"),
	txt("...Oh boy.#We're gonna have a problem."),
	txt("Is something wrong?"),
	txt("Yeah, something's wrong."),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {
		c_additem(ITEMS.UNDERTALE);
	};
}