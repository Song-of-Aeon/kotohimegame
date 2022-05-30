// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
itemgen({
	onpickup: function(player=global.me) {
		player.life++;
		c_removeitem(ITEMS.BREAKFAST, 1);
	},
	//myhooks: {onpickup: true, ondrop: true},
	name: "Branch Shrine",
	description: "Gain one life.",
	tooltip: "Gather faith...?",
	initiallyunlocked : true,
	pools: [POOLS.MICHAEL,POOLS.REISENSHOP,POOLS.RINNOSUKE],
	sprite: s_mistake,
	quality: 5,
	usage: ITTYPE.PASSIVE,
}, ITEMS.BREAKFAST);