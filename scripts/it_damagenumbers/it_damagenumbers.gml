// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
damagenumbers = {
	onenemyhit: function(enemy,bullet){
		instance_create(enemy.x,enemy.y,o_damagenumber).damage = max(bullet.damage-enemy.defense,1);
	},
	//myhooks: {onenemyhit: true},
	name: "Damage numbers",
	description: "See them.",
	sprite: s_null,
	quality: 1,
	usage: ITTYPE.MECHANIC,
}
itemgen(damagenumbers, ITEMS._SHOTPOWERNUMBERS);