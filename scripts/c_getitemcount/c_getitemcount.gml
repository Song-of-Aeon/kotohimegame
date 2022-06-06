// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function c_getitemcount(item){
	with(ISAAC){
		var numb = 0;
		for(var i = 0;i < ds_list_size(myitems); i++){
				if(myitems[|i] == item){
						numb++;
				}
		}
		return numb;
	}
}