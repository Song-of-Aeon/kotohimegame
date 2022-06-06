// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
z = {
	sprite: s_pickups,
	index: 4,
	stat: "poc",
	type: "common", //common, hidden
	value: 5,
}
global.x_itemmanager.BindPickup(z, PICKUPS.POC);
z = {
	sprite: s_minipickups,
	index: 4,
	stat: "poc",
	type: "common", //common, hidden
	value: 2,
}
global.x_itemmanager.BindPickup(z, PICKUPS.POCMINI);