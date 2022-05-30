// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
z = {
	sprite: s_pickups,
	index: 2,
	stat: "agility",
	type: "common", //common, hidden
	value: 5,
}
global.x_itemmanager.BindPickup(z, PICKUPS.AGILITY);
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
z = {
	sprite: s_minipickups,
	index: 2,
	stat: "agility",
	type: "common", //common, hidden
	value: 2,
}
global.x_itemmanager.BindPickup(z, PICKUPS.MOVESPEEDMINI);