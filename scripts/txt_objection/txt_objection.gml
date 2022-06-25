function txt_objection() {
	
	msg = msglang([
	
	txt("Objection!"),
	txt("Kagyua, you're wrong."),
	txt("There is something for everybody in that place."),
	txt("You are very confident."),
	txt("Do you truly believe this is sustainable? It is inevitable that my identity would come to light."),
	txt("Be it by a slip of the tongue, an accidental use of my powers, or even a knowledgable passerby..."),
	txt("Can you argue that such is not inevitable?"),
	txt(""),
	
	],[
	
	txt(""),
	
	])
	
	endevent = function() {
		textchoice_make(new choice("Yes", textbox_create(txt_evitable)), new choice("No", function() {textbox_create(txt_inevitable)}))
	};
}