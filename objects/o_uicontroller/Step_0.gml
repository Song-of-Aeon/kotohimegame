/// @description Insert description here
// You can write your code in this editor
if(array_length(UIElements) != arrlen){
	arrlen = array_length(UIElements);
	array_sort(UIElements,function(before, after){
		return after.depth - before.depth;
	});
}
if(!global.MenuCursor.disabled){
	global.MenuCursor.update();
}

for(var i = 0; i < array_length(UIElements);i++){
	UIElements[i].update();
}

