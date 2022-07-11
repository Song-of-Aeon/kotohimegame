///@function st_standard();
function st_standard() {
	
	hput = right-left;
	vput = down-up;
	pocpoint = lerp(pocpoint, collectionpoint*30+20, .1);
	if focus {
		
		hspd = hput*lerp(focusspd, evenspd, 1-5*.25);
		vspd = vput*lerp(focusspd, evenspd, 1-5*.25);
		
	} else {
		hspd = hput*lerp(unfocspd, evenspd, 1-agility*.25);
		vspd = vput*lerp(unfocspd, evenspd, 1-agility*.25);
	}
	for (i=0; i<array_length(myactive); i++) {myactive[i].used = false};
	try{
		myactive[0].asactive(id, shoot, shooth, shootr);
	}
	catch(e){
		log("item zero threw exception");
		log(e);
	}
	try{
		myactive[1].asactive(id, bomb, bombh, bombr);
	}
	catch(e){
		log("item one threw exception");
		log(e);
	}
	try{
		myactive[2].asactive(id, special, specialh, specialr);
	}
	catch(e){
		log("item two threw exception");
		log(e);
	}
	
	
	if y <= pocpoint && pocced < .35 {
		with o_pickup pulled = true;
		pocced = 1;
	}
	pocced = lerp(pocced, .3, .05);
	
	c_graze();

	x += hspd;
	y += vspd;
	
	//sprite_collision_mask(sprite_index, false, 2, x-hitboxsize/2, y-hitboxsize/2, x+hitboxsize/2, y+hitboxsize/2, bboxkind_ellipse, 255);
	sprite_set_bbox_mode(sprite_index, bboxmode_manual);
	sprite_set_bbox(sprite_index, sprite_xoffset-hitboxsize/2, sprite_yoffset-hitboxsize/2, sprite_xoffset+hitboxsize/2, sprite_yoffset+hitboxsize/2);
	//bboxkind_ellipse
	
	collidedbullets = ds_list_create();
	owlist = collision_circle_list(x, y, hitboxsize, o_bullet, false, false, collidedbullets, true);
	with o_hitscan {
		var bitch = collision_line_width(x, y, x+hspd*1000, y+vspd*1000, 300, width, ISAAC);
		if array_contains(bitch, ISAAC.id) && !delay {
			ds_list_add(ISAAC.collidedbullets, id);
			ISAAC.owlist++;
		}
	}
	for (i=0; i<owlist; i++) {
		ow = collidedbullets[|i];
		if ow != noone && ow.friendly = false && !ow.intangible {
			if inv {
				//instance_destroy(ow);
				if ow.destructible && ow.object_index != o_laser && ow.object_index != o_hitscan {
					instance_destroy(ow);
				}
			} else {
				takingdamage = ow.damage;
				if takingdamage > hp {
					state = st_deathbomb;
					takingtype = ow.type;
					if ow.destructible && ow.object_index != o_laser && ow.object_index != o_hitscan {
						instance_destroy(ow);
					}
				} else {
					if !c_dohook(hooks.onhit) {
						var osdhufji = max(takingdamage-defense, 1);
						STATS.damagetaken += osdhufji;
						if !global.luying {
							audio_play_sound(snd_hurt,0,false);
						}
						hp -= osdhufji //prevent def from healing, min shotpower is 1
						inv = invtime;
						c_screenshake(4, inv/2);
					}
				}
				break;
			}
		
		}
	}
	//draw_sprite_stretched()
	ds_list_destroy(collidedbullets);
	inv--;
	inv = max(inv, 0);
	hp = min(hp, maxhp);
	if hp <= 0 {
		c_die();
	}
	if inv {image_alpha -= .5}
	
	
	
	x = clamp(x, 2, room_width-2);
	y = clamp(y, 2, room_height-2);
	
	if map && c_getroom().cleared {
		c_clearradius(x, y, 999, true);
		c_clearenemies();
		with o_pickup pulled = true;
		o_roommanager.go = true;
	}
	
	//log(options);
}