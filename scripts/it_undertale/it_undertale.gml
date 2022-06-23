//gen u items

itemgen({
	onstep: function(player=global.me) {
		if battling {
			bordleft = 580/2-60;
			bordright = 580/2+60;
			bordup = 680/2-60;
			borddown = 680/2+60;
			ISAAC.state = st_standard;
			ISAAC.sprite_index = s_soul;
			ISAAC.x = clamp(ISAAC.x, bordleft+8, bordright-8);
			ISAAC.y = clamp(ISAAC.y, bordup+8, borddown-8);
			fightx = 0;
		} else {
			bordleft = 1280/5-350;
			bordright = 1280/5*4-350;
			bordup = 360;
			borddown = 520;
			ISAAC.state = c_null;
			ISAAC.sprite_index = s_null;
			if fighting {
				fightx += 3;
				if (player.select && fightx >= 7) || fightx >= bordright-bordleft {
					//bosshp -= floor(abs(fightx-(bordright-bordleft)/2)/5);
					var middle = bordright-bordleft;
					var dropoff = floor(abs(fightx-middle/5));
					bosshp -= 50-dropoff;
					log(bosshp);
					if bosshp <= 0 {
						textbox_create(txt_hajime);
						c_removeitem(ITEMS.UNDERTALE);
						exit;
					}
					fighting = false;
					battling = true;
					switch c_getitembyid(ITEMS.UNDERTALE).fightpoint {
						case 0:
							textbox_create(txt_fight, global.texttale);
							break;
						case 1:
							textbox_create(txt_fightwo, global.texttale);
							break;
						case 2:
							textbox_create(txt_fighthree, global.texttale);
							break;
						case 3:
							textbox_create(txt_fight4, global.texttale);
							break;
						case 4:
							textbox_create(txt_fight5, global.texttale);
							break;
						case 5:
							textbox_create(txt_fight6, global.texttale);
							break;
					}
					//c_makeboss(global.bosses.chiyuri, [SPELL.NON]);
				}
			}
		}
	},
	ondraw: function() {
		draw_set_color(c_white);
		surface_set_target(global.surfaces.HUD);
		if fighting {
			var middle = (bordright-bordleft)/4;
			var dropoff = floor(abs(fightx-middle)/4);
			var dude = 50-dropoff;
			draw_text_transformed(bordleft+350+fightx, 400, dude, 1, 1, 270);
			
		}
		var myleft = 1280/5;
		var myright = 1280/5*4;
		var myup = 284*2;
		draw_line_width(bordleft+350, bordup+10-2.5, bordleft+350, borddown+10+2.5, 5);
		draw_line_width(bordleft+350, bordup+10, bordright+350, bordup+10, 5);
		draw_line_width(bordright+350, bordup+10-2.5, bordright+350, borddown+10+2.5, 5);
		draw_line_width(bordleft+350, borddown+10, bordright+350, borddown+10, 5);
		draw_set_valign(fa_middle);
		draw_text(myleft, myup, "KOTOHIME");
		draw_text(myleft+160, myup, "LV 1");
		draw_text(myleft+320, myup, "HP");
		draw_set_color(c_red);
		draw_rectangle(myleft+320, myup-16, myleft+320+40, myup+16, false);
		draw_set_color(c_yellow);
		draw_rectangle(myleft+320, myup-16, myleft+320+(40*(ISAAC.hp/ISAAC.maxhp)), myup+16, false);
		draw_set_color(c_white);
		draw_text(myleft+400, myup, string(ISAAC.hp)+" / " + string(ISAAC.maxhp));
		draw_set_valign(fa_top);
		surface_reset_target();
	},
	onpickup: function() {
		battling = true;
		textbox_create(txt_sans, global.texttale);
		c_makeboss(global.bosses.chiyuri, [SPELL.NON]);
	},
	menugen: function() {
		if !sparing {
			textbox_create(txt_chara, global.textchara, false)
		}
		battling = false;
		fighting = false;
		if(!instance_exists(o_uicontroller)){
			instance_create(0,0,o_uicontroller,/*"Instances_ui"*/);
		}
		o_uicontroller.UIElements = [];
		setCursor();
		global.MenuCursor.disabled = false;
		global.MenuCursor.onBack = c_null;
		global.MenuCursor.draw = c_null;
		var fight = makeGenericElement(1280/5, 640, 10, 10, s_null);
		fight.draw = munction(function() {
			draw_sprite(s_undytale, 0+(global.MenuCursor.target==self), x, y);
		})
		fight.onSelect = munction(function() {
			var chiyuri = makeGenericElement(272, 386, 10, 10, s_null);
			chiyuri.draw = munction(function() {
				if global.MenuCursor.target == self {
					draw_text(x, y, "* Chiyuri");
				} else {
					draw_text(x, y, "* Chiyuri?");
				}
			})
			chiyuri.onSelect = munction(function() {
				c_getitembyid(ITEMS.UNDERTALE).fighting = true;
				destroy();
				global.MenuCursor.disabled = true;
			})
			instance_destroy(o_textbox);
			o_uicontroller.UIElements[0].options.selectable = false;
			o_uicontroller.UIElements[1].options.selectable = false;
			o_uicontroller.UIElements[2].options.selectable = false;
			o_uicontroller.UIElements[3].options.selectable = false;
			setCursor();
			global.MenuCursor.disabled = false;
			global.MenuCursor.onBack = c_getitembyid(ITEMS.UNDERTALE).menugen;
		})
		var act = makeGenericElement(1280/5*2, 640, 10, 10, s_null);
		act.draw = munction(function() {
			draw_sprite(s_undytale, 2+(global.MenuCursor.target==self), x, y);
		})
		act.onSelect = munction(function() {
			var check = makeGenericElement(272, 386, 10, 10, s_null);
			check.draw = munction(function() {
				if global.MenuCursor.target == self {
					draw_text(x, y, "* Check!");
				} else {
					draw_text(x, y, "* Check");
				}
			})
			check.onSelect = munction(function() {
				textbox_create(txt_check, global.textchara, true);
				global.MenuCursor.disabled = true;
				//o_uicontroller.UIElements[4].destroy();
				//o_uicontroller.UIElements[5].destroy();
				//o_uicontroller.UIElements[6].destroy();
				//o_uicontroller.UIElements[7].destroy();
			})
			instance_destroy(o_textbox);
			o_uicontroller.UIElements[0].options.selectable = false;
			o_uicontroller.UIElements[1].options.selectable = false;
			o_uicontroller.UIElements[2].options.selectable = false;
			o_uicontroller.UIElements[3].options.selectable = false;
			setCursor();
			global.MenuCursor.disabled = false;
			global.MenuCursor.onBack = c_getitembyid(ITEMS.UNDERTALE).menugen;
		})
		var item = makeGenericElement(1280/5*3, 640, 10, 10, s_null);
		item.draw = munction(function() {
			draw_sprite(s_undytale, 4+(global.MenuCursor.target==self), x, y);
		})
		var mercy = makeGenericElement(1280/5*4, 640, 10, 10, s_null);
		mercy.draw = munction(function() {
			draw_sprite(s_undytale, 6+(global.MenuCursor.target==self), x, y);
		})
		global.MenuCursor.target = fight;
		//textbox_create(txt_yoursins, global.textdefault, false);
		//x = cos(global.count/80)*80;
	},
	
	name: "undertale",
	description: "undertale up",
	tooltip: "one more step right there",
	sprite: s_mistake,
	quality: 1,
	usage: ITTYPE.MECHANIC,
	bordleft: 580/2-60,
	bordright: 580/2+60,
	bordup: 680/2-60,
	borddown: 680/2+60,
	battling: false,
	fightx: 0,
	fighting: false,
	bosshp: 200,
	sparing: false,
	fightpoint: 0,
	actpoint: 0,
	
	charge: 0,
	chargemax: 0,
	chargereq: 0,
	deathbombable: false,
	used: false,
	activetype: ACTIVES.NULL
}, ITEMS.UNDERTALE);