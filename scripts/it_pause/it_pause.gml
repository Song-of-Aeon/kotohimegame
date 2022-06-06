// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
z = {
	onstep: function(player=global.me) {
		c_input();
		if esc {
			c_pause()
			return "stop";
		}
	},
	//myhooks: {onstep: true, },
	name: "pause",
	description: "pause up",
	sprite: s_null,
	quality: 1,
	usage: ITTYPE.MECHANIC,
}
//global.x_itemmanager.BindItem(z, ITEMS.PAUSE);
itemgen(z,ITEMS.PAUSE);