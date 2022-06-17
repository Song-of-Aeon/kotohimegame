if !created {
	if patterns[currentpattern].type = SPELL.CARD{
		var spellname = instance_create(290, 340, o_spelltext);
		spellname.name = patterns[currentpattern].name;
		armor = 600;
	} else armor = 0;
	munction(patterns[currentpattern].create)();
	
	time = patterns[currentpattern].time*60;
	patterns[currentpattern].step = method(self,patterns[currentpattern].step);
	//patterns[currentpattern].step = function(){log("NOTHING I AM DOING NOTHING")};
	patterns[currentpattern].draw = munction(patterns[currentpattern].draw);
	log("bossmaking");
	log(patterns[currentpattern].step);
	hp = min(hp+patterns[currentpattern].hp, patterns[currentpattern].hp);
	maxhp = hp;
	log(maxhp);
	created = true;
}
hspd += hgrav*-clamp(x-hgravorigin, -1, 1);
vspd += vgrav*-clamp(x-vgravorigin, -1, 1);
hspd = lerp(hspd, 0, .035);
vspd = lerp(vspd, 0, .035);
spin -= clampneg(spin);
spinny = (abs(hspd)+abs(vspd)+spin);
image_angle += spinny;
if abs(spinny) <= .2 image_angle = lerp(image_angle, 0, .1); spun = -spun;
if !instance_exists(o_textbox) && !delay {
	patterns[currentpattern].count = count;
	repeat(global.ticks){
		patterns[currentpattern].step();
	}
	time--;
	armor--;
} else if delay {
	delay--;
}
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
			if armor && hp <= maxhp/5 {
				takingdamage /= 10;
			}
			STATS.damagedealt += takingdamage;
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
if hp <= 0 || time <= 0 {
	with global.me {
		for (i=0; i<ds_list_size(hooks.onenemydeath); i++) {
			hooks.onenemydeath[|i](global.me, other.id);
		}
	}
	//hp += maxhp;
	c_spellchange(patterns[currentpattern].type = SPELL.CARD);
	if currentpattern >= array_length(patterns) {
		instance_destroy();
		audio_play_sound(snd_enemydeath, 0, false);
	}
}
ds_list_destroy(collidedbullets);
/*if x > 400 || x < -100 || y > 420 || y < -100 {
	instance_destroy();
}*/
