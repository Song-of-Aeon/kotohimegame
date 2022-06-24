function txt_reason() {
	msg = msglang([
	txt("* You tell Chiyuri that this is a righteous princess' outing!"),
	],[txt(""),])	
	endevent = function() {
		textbox_create(txt_reasonc, global.texttale);
	};
}
function txt_reasonc() {
	msg = msglang([
	txt("|c000000000I don't care."),
	],[txt(""),])	
	endevent = function() {
		c_getitembyid(ITEMS.UNDERTALE).battling = true;
		c_makeboss(global.bosses.chiyuri, [SPELL.NON]);
	};
}
function txt_reason2() {
	msg = msglang([
	txt("* You remind Chiyuri that Kaguya was#  capable of hiding from the public eye#  for centuries."),
	],[txt(""),])	
	endevent = function() {
		c_getitembyid(ITEMS.UNDERTALE).actpoint++;
		textbox_create(txt_reason2c, global.texttale);
	};
}
function txt_reason2c() {
	msg = msglang([
	txt("|c000000000Yeah, I guess so..."),
	txt("|c000000000But right now, she and her pet bunny are major players, getting wrapped up in every other incident."),
	],[txt(""),])	
	endevent = function() {
		c_getitembyid(ITEMS.UNDERTALE).battling = true;
		c_makeboss(global.bosses.chiyuri, [SPELL.NON]);
	};
}
function txt_reason3() {
	msg = msglang([
	txt("* You tell Chiyuri that Kaguya wants to keep#  her identity a secret while she's here,#  and she wouldn't want to drag anyone else in."),
	],[txt(""),])	
	endevent = function() {
		c_getitembyid(ITEMS.UNDERTALE).actpoint++;
		textbox_create(txt_reason3c, global.texttale);
	};
}
function txt_reason3c() {
	msg = msglang([
	txt("|c000000000Really? Did you just tell me to brag, then?"),
	],[txt(""),])	
	endevent = function() {
		textbox_create(txt_reason32, global.textchara);
	};
}
function txt_reason32() {
	msg = msglang([
	txt("* You confirm this."),
	],[txt(""),])	
	endevent = function() {
		textbox_create(txt_reason32c, global.texttale);
	};
}
function txt_reason32c() {
	msg = msglang([
	txt("|c000000000I guess that's a bit better."),
	txt("|c000000000I still don't think having her here is a good idea."),
	],[txt(""),])	
	endevent = function() {
		c_getitembyid(ITEMS.UNDERTALE).battling = true;
		c_makeboss(global.bosses.chiyuri, [SPELL.NON]);
	};
}