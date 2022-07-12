function txt_walking() {
	
	msg = msglang([
	
	txt("..."),
	txt("So, Kotohime, what sort of place are we headed?", KAGUYA2.HAPPY, SPRITEPOS.LEFT, s_path),
	txt("It's a very classy spot, with very classy people.", KOTOHIME.HAPPY, SPRITEPOS.CENTER),
	txt("I've no doubt that you can find a nice lass there.", KOTOHIME.HAPPY),
	txt("It's still hard for me to imagine doing that...", KAGUYA2.DISAPPOINTED),
	txt("It will come to you, surely.", KOTOHIME.WINK),
	txt("The place is called the Twilight Bar.", KOTOHIME.HAPPY),
	txt("Us regulars learned about the place after looking to get a stiff drink after the shrine maiden knocked us out of the sky.", KOTOHIME.HAPPY),
	txt("Most of us, that is. I was quite successful in my legendary battle against her. I'm sure you've heard the stories.", KOTOHIME.SMUG),
	txt("I suppose I must have missed that week's issue...", KAGUYA2.GRIN),
	txt("Anyway, I hear it used to hurt a lot more to lose to her.", KOTOHIME.THINKING),
	txt("Before the spellcard rules, she din't think twice even about exterminating youkai for good.", KOTOHIME.THINKING),
	txt("Plus, you didn't get the sort of fame for starting an incident that you do now.", KOTOHIME.THINKING),
	txt("If you lost, nothing good came of it.", KOTOHIME.THINKING),
	txt("I see...", KAGUYA2.SURPRISED),
	txt("It is true that even my failed plans from long ago moved us at Eientei forward, in regards to social status in Gensokyo.", KAGUYA2.HAPPY),
	txt("Less fortune was spared for those in the back.", KOTOHIME.DISAPPOINTED),
	txt("Almost everybody seems to be over it, but we still meet at the bar.", KOTOHIME.HAPPY),
	txt("The Twilight Bar is an incredible and secluded place, that can block out even fantasy.", KOTOHIME.SMUG),
	txt("Not so different from my current residence, then.", KAGUYA2.GRIN),
	txt("Oh, I guess it isn't.", KOTOHIME.HAPPY),
	txt("..."),
	txt("Oh, one thing-", KOTOHIME.HAPPY, SPRITEPOS.MIDRIGHT),
	txt("...Yes?", KAGUYA2.HAPPY),
	txt("Wait, were you just hovering?", KOTOHIME.THINKING),
	txt("Ah~ Maybe...", KAGUYA2.EXCITED),
	txt("But, you were walking too fast!", KAGUYA2.ANGRY),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {textbox_create(txt_bar)};
}//among us in real life
//lookin sus who do we trust