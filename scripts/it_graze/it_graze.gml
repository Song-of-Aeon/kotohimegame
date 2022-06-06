// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
z = {
	onstep: function(player=global.me) {
		with ISAAC {
			if !inv {
				collidedbullets = ds_list_create();
				var grazelist = collision_circle_list(x, y, hitboxsize, o_bullet, false, false, collidedbullets, true);
				for (i=0; i<grazelist; i++) {
					tk = collidedbullets[|i];
					if tk != noone && tk.friendly = false && !tk.intangible && !tk.grazed {
						if c_dohook(hooks.ongraze) exit;
						tk.grazed = true;
						//log("grazed"+string(random(1)));
					}
				}
			}
		}
	},
	//myhooks: {onstep: true, },
	name: "graze",
	description: "graze up",
	sprite: s_null,
	quality: 1,
	usage: ITTYPE.MECHANIC,
}
//global.x_itemmanager.BindItem(z, ITEMS._GRAZE);
itemgen(z,ITEMS._GRAZE);