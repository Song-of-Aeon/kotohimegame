function txt_check() {
	msg = msglang([
	txt("* CHIYURII 3 ATK 2 DEF#* Capable of seeing reflections.#* Not Chiyuri."),
	],[txt(""),])
	endevent = function() {
		c_getitembyid(ITEMS.UNDERTALE).battling = true;
		c_makeboss(global.bosses.chiyuri, [SPELL.NON]);
	};
}