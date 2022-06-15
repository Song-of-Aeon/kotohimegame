function txt_walking() {
	
	msg = msglang([
	
	txt("..."),
	txt("So, Kotohime, what kind of place are we headed?"),
	txt("It's a very classy spot, with very classy people."),
	txt("I've no doubt that you can find a nice lass there."),
	txt("It's still hard for me to imagine doing that..."),
	txt("It will come to you, surely."),
	txt("The place is called the Twilight Bar."),
	txt("Us regulars learned about the place after looking to get a stiff drink after the shrine maiden knocked us out of the sky."),
	txt("Most of us, that is. I was quite successful in my legendary battle against her. I'm sure you've heard the stories."),
	txt("I suppose I must have missed that week's issue..."),
	txt("Anyway, I hear it used to hurt a lot more to lose to her."),
	txt("Before the spellcard rules, she din't think twice even about exterminating youkai for good."),
	txt("Plus, you didn't get the sort of fame for starting an incident that you do now."),
	txt("If you lost, nothing good came of it."),
	txt("I see..."),
	txt("It is true that even my failed plans from long ago moved us at Eientei forward, in regards to social status in Gensokyo."),
	txt("Almost everybody seems to be over it, but we still meet at the bar."),
	txt("The Twilight Bar is an incredible and secluded place, that can block out even fantasy."),
	txt("Not so different from my current residence, then."),
	txt("Oh, I guess it isn't."),
	txt("..."),
	txt("Oh, one thing-"),
	txt("...Yes?"),
	txt("Wait, were you just hovering?"),
	txt("Ah~ Maybe..."),
	txt("But, you were walking too fast!"),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {textbox_create(txt_bar)};
}