// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/*onuidrawtest = {
	onuidraw: function(x,y){
		draw_sprite(sprite, 0, x+20, y+20);
	},
	//myhooks: {onuidraw: true },
	name: "onuidraw",
	description: "test",
	sprite: s_mistake,
	quality: 1,
	usage: ITTYPE.PASSIVE,
}
global.x_itemmanager.BindItem(onuidrawtest, ITEMS.ONUIDRAWTEST);