// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
z = {
	onstats: function(player=global.me) {
		with ISAAC {
			
				//ISAAC.shotpower = mine;
			/*shotpower = clamp(shotpower, statmins.shotpower, statcaps.shotpower);
			options = clamp(options, statmins.options, statcaps.options);
			agility = clamp(agility, statmins.agility, statcaps.agility);
			radius = clamp(radius, statmins.radius, statcaps.radius);
			collectionpoint = clamp(collectionpoint, statmins.collectionpoint, statcaps.collectionpoint);*/
			//log(shotpower, options);
		}
	},
	//myhooks: {onstats: true, },
	name: "stats",
	description: " ALL STATS UP",
	sprite: s_null,
	quality: 1,
	usage: ITTYPE.MECHANIC,
}
//global.x_itemmanager.BindItem(z, ITEMS._STATS);
itemgen(z,ITEMS._STATS);