// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
makescore = {
	onenemydeath: function(player, enemy){
		score += enemy.maxhp*enemy.life*500;
	},
	//myhooks: {onenemydeath: true},
	name: "Score",
	description: "shoot for a high score",
	sprite: s_highscore,
	quality: 1,
	usage: ITTYPE.MECHANIC,
}
//global.x_itemmanager.BindItem(makescore, ITEMS._SCORE);
itemgen(makescore,ITEMS._SCORE);