function menuTransition(_room){
	global.MenuCursor.disabled = true;
	global.MenuCursor.target = noone;
	for(var i = 0; i < array_length(o_uicontroller.UIElements);i++){
		var element = o_uicontroller.UIElements[i]
		element.selectable = false;
		element.disabled = true;
		element.xspd = -10;
		element._room = _room;
		element.update = method(undefined,function(){
			if(x < -50){
				o_uicontroller.UIElements = [];	
				room = _room;
			}
			else{
				x-=xspd;
				xspd++;
			}
		});
	}
}
