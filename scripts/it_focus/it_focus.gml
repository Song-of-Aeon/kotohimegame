// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
z = {
	onstep: function(player=global.me) {
		with ISAAC {
			focus = shift;
			grablist = ds_list_create();
			var grabbing = collision_circle_list(x, y, radius*(8+16*focus), o_pickup, false, false, grablist, true);
			for (i=0; i<grabbing; i++) {
				grablist[|i].pulled = true;
			}
			ds_list_destroy(grablist);
		}
		
	},
	ondraw: function(player=global.me) {
		with ISAAC {
			if focus {
				//focusfx = max(focusfx-.1, 0);
				focusfx = lerp(focusfx, 0, .1);
				
			} else {
				//focusfx = min(focusfx+.1, 1);
				focusfx = lerp(focusfx, 1, .1);
			}
			draw_set_color(c_cyan);
				gpu_set_blendmode(bm_add);
				draw_set_alpha(.4-focusfx);
				draw_circle(x, y, radius*4+6+focusfx*12, true);
				draw_circle(x, y, radius*16+8+focusfx*12, true);
				draw_set_alpha(.7-focusfx);
				draw_circle(x, y, radius*4+6.5+focusfx*12, true);
				draw_circle(x, y, radius*16+8.5+focusfx*12, true);
				gpu_set_blendmode(bm_normal);
				draw_set_alpha(1);
			//three rings connected to eachother and rotating hitbox/radius/itemzone
		}
	},
	//myhooks: {onstep: true, ondraw: true},
	name: "focus",
	description: "focus up",
	sprite: s_mistake,
	quality: 1,
	usage: ITTYPE.MECHANIC,
}
//global.x_itemmanager.BindItem(z, ITEMS.FOCUS);
itemgen(z,ITEMS.FOCUS);