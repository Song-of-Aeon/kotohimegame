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
	txt("...Fine."),
	],[txt(""),])	
	endevent = function() {
		c_getitembyid(ITEMS.UNDERTALE).battling = true;
		c_makeboss(global.bosses.chiyuri, [SPELL.NON]);
	};
}