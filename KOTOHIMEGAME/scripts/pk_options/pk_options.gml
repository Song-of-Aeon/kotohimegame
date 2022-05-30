// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
z = {
	sprite: s_pickups,
	index: 1,
	stat: "options",
	type: "common", //common, hidden
	value: 5,
}
global.x_itemmanager.BindPickup(z, PICKUPS.OPTIONS);
z = {
	sprite: s_minipickups,
	index: 1,
	stat: "options",
	type: "common", //common, hidden
	value: 2,
}
global.x_itemmanager.BindPickup(z, PICKUPS.OPTIONSMINI);