function txt_objection() {
	
	msg = msglang([
	
	txt("Objection!", u, u, u, function() {instance_create(640, 360, o_bjection)}),
	txt("Kagyua, you're wrong.", KOTOHIME.DISAPPOINTED, u, u, function() {music_set(mus.kotohime)}),
	txt("There is something for everybody in that place.", KOTOHIME.HAPPY),
	txt("You fool!", u, u, u, function() {instance_create(640, 360, o_bjection)}),
	txt("You are very confident.", KAGUYA2.NORMAL),
	txt("Do you truly believe this is sustainable? It is inevitable that my identity would come to light.", KAGUYA2.NORMAL),
	txt("Be it by a slip of the tongue, an accidental use of my powers, or even a knowledgable passerby...", KAGUYA2.NORMAL),
	txt("Can you argue that such is not inevitable?", KAGUYA2.NORMAL),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {
		textchoice_make([new choice("I can.", function() {textbox_create(txt_evitable)}), new choice("I cannot.", function() {textbox_create(txt_inevitable)})]);
	};
}