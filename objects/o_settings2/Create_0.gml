/// @description Insert description here
// You can write your code in this editor

global.count = 0;

//evaluatePools();
//generateItemMenu()
//generateOptionsMenu()
generateSettingsMenu();
setCursor()
global.MenuCursor.update = method(undefined,function(){
	c_input();
		if(target!=noone){
			x = target.x;
			y = target.y;
			width = target.options.width;
			height = target.options.height;
		}
		if(target == noone){
			if(array_length(o_uicontroller.UIElements) > 0){
				log("cursor lost its target, defaulting to id 0");
				target = o_uicontroller.UIElements[0]	
			}
			else{
				log("cursor lost its target, cant find one to default to! cursor disabling...");
				disabled = true;
			}
		}
		if select {
			if(!target.options.disabled){
				target.onSelect();	
			}
		}
		if back {
			try{
				onBack();
			}
			catch(e){
				log(e);	
				
			}
		}
		if rightp {
			target.onSelect(1)
		}
		if leftp {
			target.onSelect(-1)
		}
		if upp {
			move(DIRECTIONS.UP);
		}
		if downp {
			move(DIRECTIONS.DOWN);
		}
		if(options.mouse){
			var closest = noone;
			var mousex = window_mouse_get_x();
			var mousey = window_mouse_get_y();
			for(var i = 0; i < array_length(o_uicontroller.UIElements);i++){
				var guy = o_uicontroller.UIElements[i]
					if(closest == noone || point_distance(mousex,mousey,guy.x,guy.y) < point_distance(mousex,mousey,closest.x,closest.y)){
						closest = guy;	
					}
			}
			if(closest != noone && point_distance(closest.x,closest.y,mousex,mousey) < 50){
				target = closest;	
			}
		}
});
global.MenuCursor.disabled = false;



global.MenuCursor.onBack = munction(function(){
	room = TITLE;
	setCursor();
});