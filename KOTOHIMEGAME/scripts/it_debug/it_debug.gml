// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
z = {
	onstep: function(player=global.me) {
		if keyboard_check_pressed(vk_control) {
			var guy = seed.next(4)+1;
			repeat(20) {
				c_spawnpickup(155, 200, guy, 0);
			}
		}
		c_input();
		if map {
			c_endpattern();
			c_cleartheroom(true);
		}
		if(keyboard_check_pressed(vk_f4)){
			ISAAC.sprite_index = s_null;
		}
		if(keyboard_check_pressed(vk_f7)){
			instance_deactivate_all(false);
			instance_create(0,0,o_fps);
		}
		if(keyboard_check_pressed(vk_f11)){
			room_restart();
			global.replaying = true;
		}
		if(keyboard_check_pressed(vk_f9)){
			//log(bogo_sort([5,34,5,5,67,45,123,5,45,767,4567,34,3,567,7,5,35,457,6,4,67,567,56756,7,67,7457,57,57,57,67,574734,234,34]));
			log(bint_sort([3, 2, 3, 4]));
		}
		//if keyboard_check_pressed(ord("T")) {textbox_create(txt_test, global.textdefault)};
		if keyboard_check_pressed(ord("R")) {
			global.currentstage = 0;
			room_restart();
		}
		if keyboard_check_pressed(ord("T")) {
			textbox_create(txt_test);
		}
		//c_addpickup(PICKUPS.POC, 1);
		//c_addpickup(PICKUPS.AGILITY, 1);
	},
	//myhooks: {onstep: true, },
	seed: new RNG(global.seed),
	name: "debug",
	description: "liar liar pants on fire",
	tooltip: "debug up",
	sprite: s_null,
	quality: 1,
	usage: ITTYPE.MECHANIC,
}
itemgen(z, ITEMS._DEBUG);