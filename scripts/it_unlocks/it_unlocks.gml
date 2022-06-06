// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function doUnlockHooks(){
	//log(debug_get_callstack());
}
global.unlocks = {
	onstep: function(){
		if(ds_list_size(c_getInventory(false)) == 0 && ISAAC.myactive[0] == c_getitembyid(ITEMS.NULL) &&  ISAAC.myactive[1] == c_getitembyid(ITEMS.NULL) && ISAAC.myactive[2] == c_getitembyid(ITEMS.NULL)){
			unlockAchievement(ACHIEVEMENTS.LOSEITEMS);	
		}
		if(ISAAC.myactive[0] != c_getitembyid(ITEMS.NULL) && ISAAC.myactive[1] != c_getitembyid(ITEMS.NULL) && ISAAC.myactive[1] != c_getitembyid(ITEMS.NULL)){
			unlockAchievement(ACHIEVEMENTS.GETACTIVES);
		}
		if(counter > 0){
			if(counter == 1){
				unlockAchievement(ACHIEVEMENTS.CLOSECALL);
			}
			counter--;
		}
		if(counter2 < 0){
			unlockAchievement(ACHIEVEMENTS.SURVIVAL);	
		}
		counter2--;
		if(ISAAC.hp != 1 || ISAAC.life != 0){
			counter2 = 300;
		}
	},
	ondeathbomb: function(){
		unlockAchievement(ACHIEVEMENTS.DEATHBOMB);	
	},
	ongraze: function(){
		if(ISAAC.hp == 1 && ISAAC.life == 0){
			counter = 15;
		}
	},
	myhooks: {
		onstep: true, ondeathbomb:true, ongraze:true, //implemented
	},
	counter: 0,
	counter2: 300,
	name: "Unlocks",
	description: "Tracks unlocks and checks for them, sell this item and you lose the ability to unlock things for this run!",
	sprite: s_mistake,
	quality: 1,
	usage: ITTYPE.MECHANIC,
	charge: 0,
	deathbombable: false,
	used: false,
}

function hookUnlocks(){
	/*var hookList = variable_struct_get_names(global.unlocks.myhooks);
	for(var i = 0; i < ITEMS.SIZE; i++){
		if(variable_struct_exists(c_getitembyid(i),"unlockHooks")){
			var unlockHooksList = variable_struct_get_names(c_getitembyid(i).unlockHooks);
			for(var j = 0; j < array_length(unlockHooksList); j++){
				var unlockHookFunc = variable_struct_get(c_getitembyid(i).unlockHooks,unlockHooksList[j])	
				array_push(global.unlocks[$unlockHooksList[j]],unlockHookFunc);
			}
		}
	}*/
}

//global.x_itemmanager.BindItem(global.unlocks, ITEMS._UNLOCKS);
itemgen(global.unlocks,ITEMS._UNLOCKS);