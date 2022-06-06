// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
threedeeprintedbullet = {
	myhooks: {},
	name: "3D printed bullet",
	description: "Usable in 3D printed guns",
	pools:[],
	sprite: s_realbullets,
	quality: 1,
	usage: ITTYPE.PASSIVE,
}
itemgen(threedeeprintedbullet,ITEMS.THREEDEEPRINTEDBULLET);
//global.x_itemmanager.BindItem(threedeeprintedbullet, ITEMS.THREEDEEPRINTEDBULLET);