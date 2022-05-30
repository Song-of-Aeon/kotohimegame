// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//global.AchievementsList = array_create(ACHIEVEMENTS.SIZE);



function Achievement(_id) constructor{
	unlocks = [];
	sprite= s_mistake;
	name = "nullAchievement";
	banner = s_mistake;
	id = _id;
	if(!variable_global_exists("AchievementsList")){
		global.AchievementsList = array_create(ACHIEVEMENTS.SIZE);
	}
	global.AchievementsList[_id] = self;
	//log(global.AchievementsList);
	function isUnlocked(){
		return isAchievementUnlocked(id);	
	}
}

function checkUnlocks(){
	for(var i = 0; i < ITEMS.SIZE; i++){
		var item = c_getitembyid(i);
		item.unlocked = false
	}
	for(var i = 0; i < ITEMS.SIZE; i++){
		try{
			if(c_getitembyid(i).initiallyunlocked){
				c_getitembyid(i).unlocked = true;
			}
		}
		catch(e){
			log("item id " + string(i) + " does not have an initiallyunlocked variable");
		}
	}
	for(var i = 0; i < ACHIEVEMENTS.SIZE;i++){
		if(isAchievementUnlocked(i)){
			log("achievement number " + string(i) + " is unlocked");
			var achievement = c_getachievementbyid(i)
			if(is_struct(achievement)){
				for(var j = 0; j < array_length(achievement.unlocks); j++){
					log(c_getitembyid(achievement.unlocks[j]).name);
					c_getitembyid(achievement.unlocks[j]).unlocked = true;
				}
			}
		}
	}
}

function c_getachievementbyid(achievement){
	return global.AchievementsList[achievement]
}

function unlockAchievement(_id){
	if(!isAchievementUnlocked(_id)){
		global.SaveData.achievements[_id] = true;
		log("unlocked achievement");
		instance_create(0,0,o_achievementNotification).achievement = c_getachievementbyid(_id);	
	}
}


function isAchievementUnlocked(_id){
	return global.SaveData.achievements[_id];
}

enum ACHIEVEMENTS{
	NULL,
	LOSEITEMS,
	DEATHBOMB,
	GETACTIVES,
	CLOSECALL,
	SURVIVAL,
	MESSINGAROUND,
	SIZE,
}