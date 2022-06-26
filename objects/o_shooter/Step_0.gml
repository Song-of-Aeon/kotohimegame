
if !created {
	patterns[currentpattern].create = method(id,patterns[currentpattern].create);
	patterns[currentpattern].step = method(id,patterns[currentpattern].step);
	patterns[currentpattern].draw = method(id,patterns[currentpattern].draw);
	patterns[currentpattern].create();
	created = true;
}
hspd += hgrav*-clamp(x-hgravorigin, -1, 1);
vspd += vgrav*-clamp(x-vgravorigin, -1, 1);
hspd *= acc;
vspd *= acc;
speed *= acc;
if !instance_exists(o_textbox) && !is_oob(escapedistance) {
	armor = false;
	//method(self,patterns[currentpattern].step)();
	method(self,patterns[currentpattern].step)();
} else {
	armor = true;
}
if c_doenemyhook("onstep", id) exit;
x += hspd;
y += vspd;
collidedbullets = ds_list_create();
owlist = collision_circle_list(x, y, hitboxradius, o_bullet, false, false, collidedbullets, false);
with o_hitscan {
	var bitch = collision_line_width(x, y, x+hspd*1000, y+vspd*1000, 300, width, other.id);
	if array_contains(bitch, other.id) && !delay {
		ds_list_add(other.collidedbullets, id);
		other.owlist++;
	}
}
for (i=0; i<owlist; i++) {
	ow = collidedbullets[|i];
	if ow != noone && ow.friendly = true && !ow.intangible {
		if inv {
			//instance_destroy(ow);
		} else {
			//with global.me {
				if c_dohook(ISAAC.hooks.onenemyhit, id, ow) exit;
				/*for (i=0; i<ds_list_size(hooks.onenemyhit); i++) {
					hooks.onenemyhit[|i](global.me,other.id,other.ow);
				}*/
			//}
			takingdamage = ow.damage-defense;
			if armor {
				takingdamage /= 10;
			}
			STATS.damagedealt += takingdamage;
			if c_doenemyhook("onhit", id) exit;
			hp -= takingdamage;
			ds_list_add(nohit,ow);
		}
		if ow.destructible && ow.object_index != o_laser && ow.object_index != o_hitscan {
			instance_destroy(ow);
			audio_play_sound(snd_enemyhurt,0,false);
		}
		
	}
}

inv--;
if hp <= 0 {
	c_dohook(ISAAC.hooks.onenemydeath, global.me, id);
	hp += maxhp;
	if c_doenemyhook("ondie", id) exit;
	instance_destroy();
	while(drops>=5/2) {
		c_spawnpickup(x, y, o_roommanager.rooms[o_roommanager.currentroom][o_roommanager.currentx].pickuptype, .2);
		drops -= 5/2;
	}
	while(drops>=2/2) {
		c_spawnpickup(x, y, o_roommanager.rooms[o_roommanager.currentroom][o_roommanager.currentx].pickuptype+5, .2);
		drops -= 2/2;
	}
	audio_play_sound(snd_enemydeath,0,false);
}
ds_list_destroy(collidedbullets);
if is_oob(300) {
	instance_destroy();
}
