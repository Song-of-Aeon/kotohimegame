function txt_order() {
	msg = msglang([
	txt("* You ask for a drink."),
	],[txt(""),])	
	endevent = function() {
		c_getitembyid(ITEMS.UNDERTALE).ordered = true;
		textbox_create(txt_orderc, global.texttale);
	};
}
function txt_orderc() {
	msg = msglang([
	txt("|c000000000...Fine."),
	],[txt(""),])	
	endevent = function() {
		c_getitembyid(ITEMS.UNDERTALE).ordered = true;
		textbox_create(txt_orderr, global.textchara);
	};
}
function txt_orderr() {
	msg = msglang([
	txt("* Chiyuri hands you something in a glass."),
	txt("* You down it immediately!"),
	],[txt(""),])	
	endevent = function() {
		ISAAC.hp = 20;
		c_getitembyid(ITEMS.UNDERTALE).menugen();
	};
}


function txt_order2() {
	msg = msglang([
	txt("* You ask for a drink, again."),
	],[txt(""),])	
	endevent = function() {
		textbox_create(txt_order2c, global.texttale);
	};
}
function txt_order2c() {
	msg = msglang([
	txt("|c000000000You have no fucking money, deadbeat."),
	],[txt(""),])	
	endevent = function() {
		c_getitembyid(ITEMS.UNDERTALE).battling = true;
		c_makeboss(global.bosses.chiyuri, [SPELL.NON]);
	};
}