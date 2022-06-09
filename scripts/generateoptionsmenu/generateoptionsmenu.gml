function generateOptionsMenu(){
	global.MenuCursor.disabled = true;
	global.MenuCursor.target = noone;
	for(var i = 0; i < array_length(o_uicontroller.UIElements);i++){
		var element = o_uicontroller.UIElements[i]
		element.selectable = false;
		element.disabled = true;
		element.xspd = -10;
		element.update = method(undefined,function(){
			if(x < -50){
				o_uicontroller.UIElements = [];	
				generateOptionsMenu2()
			}
			else{
				x-=xspd;
				xspd++;
			}
		});
	}
}
function generateOptionsMenu2(){
	room_goto(SETTINGS)
	//makeGenericMMElement(x,y,"Music")
}