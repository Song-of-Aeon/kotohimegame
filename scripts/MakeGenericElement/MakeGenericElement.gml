function makeGenericElement(_x,_y,_width,_height,_sprite, _imageIndex = 0,depth = false){
	var element = new MenuElement(_x,_y,_width,_height,depth);
	element.sprite = _sprite; //not a real variable
	element.imageIndex = _imageIndex;
	element.draw = method(element,function(){
		if(self.options.disabled) draw_set_alpha(0.5);
		draw_sprite_ext(sprite,imageIndex,x,y,options.width/32,options.height/32,0,c_white,draw_get_alpha());
		if(global.MenuCursor.target == self){
			draw_outline_better(sprite,imageIndex,1,1,1,0.5,2,x,y);	
		}
		draw_set_alpha(1.0);
	});
	element.onSelect = method(element,function(){
		options.disabled = true
	});
	return element;
}