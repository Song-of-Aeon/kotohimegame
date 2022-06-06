// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
z = {
	name: "A Nothing",
	description: "Nothing+!",
	sprite: s_null, //currently unused
	color: 1,
	type: "", //common, hidden
	value: 20,
}
global.x_itemmanager.BindPickup(z, PICKUPS.NULL);