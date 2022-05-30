/// @description Insert description here
// You can write your code in this editor


var allDisabled = true;
for(var i = 0; i < array_length(o_uicontroller.UIElements); i++){
	if(o_uicontroller.UIElements[i].options.disabled == false){
		allDisabled = false;
	}
}
if(array_length(o_uicontroller.UIElements) == 0){
	allDisabled = false;	
}
if(allDisabled == true) unlockAchievement(ACHIEVEMENTS.MESSINGAROUND)