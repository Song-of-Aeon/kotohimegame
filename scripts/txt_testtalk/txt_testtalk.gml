function txt_testtalk() {
	msg = [
	txt("HI GUYS", KOTOHIME.HAPPY, SPRITEPOS.LEFT, s_black),
	txt("works so well. its easy.#its comical how easy it is", KOTOHIME.HAPPY),
	txt("your life is |aNOTHING. you serve |aZERO purpose.", KOTOHIME.HAPPY, u, u, u, [snd_hurt, snd_hurt]),
	txt("you should kill yourself|w0030 |f|aNOW.", KOTOHIME.HAPPY, u, u, u, [snd_enemydeath], [function() {c_flash(global.surfaces.HUD, 60, c_white)}]),
	]
	
	endevent = c_null;
}



function txt_testtalk2() {
	msg = [
	txt("works so well. its easy.#its comical how easy it is 2", KOTOHIME.HAPPY),
	txt("HI GUYS 2", KODOHIMEY.DEF, SPRITEPOS.LEFT, s_black),
	txt("works so well. its easy.#its comical how easy it is 2", KODOHIMEY.DEF,),
	ptxt(),
	txt("or is it?", KODOHIMEY.DEF),
	txt("well. that's for me to know|n#and you to find out", KODOHIMEY.DEF),
	
	txt("get beaned"),
	txt("k")
	]
	endevent = c_null;
}




