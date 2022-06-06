/// @description Insert description here
// You can write your code in this editor
global.MenuCursor.disabled = false;
global.count = 0;
evaluatePools();
generateItemMenu()

global.MenuCursor.onBack = munction(function(){
	room = TITLE;
	setCursor();
});