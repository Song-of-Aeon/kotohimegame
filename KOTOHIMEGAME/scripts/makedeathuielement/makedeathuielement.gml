function makeDeathUIElement(_x,_y,text,onSelect){
	var element = makeGenericElement(_x,_y,100,30,s_mistake);	
	element.onSelect = onSelect;
	element.text = text;
	element.draw = method(element,function(){
		draw_text(x,y,text);
	});
	return element;
}