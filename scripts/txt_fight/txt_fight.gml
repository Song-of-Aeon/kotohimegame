function txt_fight() {
	msg = msglang([
	txt("|c000000000Is this that important to you?"),
	txt("|c000000000Fine, we can fight for it."),
	],[txt(""),])	
	endevent = c_makefightboss;
}
function txt_fightwo() {
	msg = msglang([
	txt("|c000000000I'll have to let it go if you win, but really think about it."),
	txt("|c000000000Bringing someone like HER here isn't just annoying, it's dangerous."),
	],[txt(""),])	
	endevent = c_makefightboss;
}
function txt_fighthree() {
	msg = msglang([
	txt("|c000000000I make a note to check what's happening out there sometimes, Kotohime."),
	txt("|c000000000Whenever a new place shows up on the radar of the Hakurei, or the mountain gods, or whoever, they get wrapped up in some ridiculous business."),
	],[txt(""),])	
	endevent = c_makefightboss;
}
function txt_fight4() {
	msg = msglang([
	txt("|c000000000Hell, there's still that spirit going around, specifically targeting places and people the bigwigs pay attention to."),
	txt("|c000000000If you lead it here..."),
	],[txt(""),])	
	endevent = c_makefightboss;
}
function txt_fight5() {
	msg = msglang([
	txt("|c000000000Ugh. I'm really not getting through to you, am I?"),
	txt("|c000000000You know I don't fight much."),
	txt("|c000000000I don't have to, because of the freedom this place provides."),
	txt("|c000000000But, I can at least do this...!"),
	],[txt(""),])	
	endevent = c_makefightboss;
}
function txt_fight6() {
	msg = msglang([
	txt("|c000000000Damn it. That's enough.", u, u, u, function() {music_set(mus.null)}),
	txt("|c000000000No reason to keep this going."),
	],[txt(""),])	
	endevent = function() {
		c_removeitem(ITEMS.UNDERTALE);
		textbox_create(txt_greed);
	};
}

function c_makefightboss() {
	c_getitembyid(ITEMS.UNDERTALE).battling = true;
	c_getitembyid(ITEMS.UNDERTALE).fightpoint++;
	c_makeboss(global.bosses.chiyuri, [SPELL.NON]);
}