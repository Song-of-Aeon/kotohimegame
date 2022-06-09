function MenuElement(_x,_y,_width,_height, depth = 0) constructor {
	self.x = _x;
	self.y = _y;
	//log(self);
	self.depth = depth;
	options = {
		selectable: true, //cursor doesnt even navigate to it
		disabled: false, //doesnt let you select 
		width:_width,
		height:_height,
	}
	draw = function(){};
	update = function(){};
	onSelect = function(){};
	isHovered = function(){return global.MenuCursor == self}
	if(!instance_exists(o_uicontroller)){
		instance_create(0,0,o_uicontroller,/*"Instances_ui"*/);
	}
	array_push(o_uicontroller.UIElements, self);
	destroy = function(){
		
	}
	
}