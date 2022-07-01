//gen u items

itemgen({
	ondie: game_end,
	onstep: function(player=global.me) {
		if battling {
			bordleft = 290/2-90;
			bordright = 290/2+90;
			bordup = 340/2-90;
			borddown = 340/2+90;
			ISAAC.state = st_standard;
			ISAAC.sprite_index = s_soul;
			ISAAC.x = clamp(ISAAC.x, bordleft+8, bordright-8);
			ISAAC.y = clamp(ISAAC.y, bordup+8, borddown-8);
			fightx = 0;
		} else {
			bordleft = 1280/5-(350+290);
			bordright = 1280/5*4-(350+290);
			bordup = 360;
			borddown = 520;
			ISAAC.state = c_null;
			ISAAC.sprite_index = s_null;
			if fighting {
				fightx += 3;
				if (player.select && fightx >= 7) || fightx >= bordright-bordleft {
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
					switch fightpoint {
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
						default:
							textbox_create(txt_fight6, global.texttale);
							break;
					}
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
			draw_text_transformed(bordleft+(350+290)+fightx, 400, dude, 1, 1, 270);
			
		}
		var myleft = 1280/5;
		var myright = 1280/5*4;
		var myup = 284*2;
		set_font_style(FONT.DETERMINATION);
		if battling {
			draw_line_width(bordleft+(350+290), bordup+10-2.5, bordleft+(350+290), borddown+10+2.5, 5);
			draw_line_width(bordleft+(350+290), bordup+10, bordright+(350+290), bordup+10, 5);
			draw_line_width(bordright+(350+290), bordup+10-2.5, bordright+(350+290), borddown+10+2.5, 5);
			draw_line_width(bordleft+(350+290), borddown+10, bordright+(350+290), borddown+10, 5);
		} else {
			surface_reset_target();
			draw_line_width(bordleft, bordup, bordleft, borddown, 5);
			draw_line_width(bordleft, bordup, bordright, bordup, 5);
			draw_line_width(bordright, bordup, bordright, borddown, 5);
			draw_line_width(bordleft, borddown, bordright, borddown, 5);
			surface_set_target(global.surfaces.HUD);
		}
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
		c_makeboss(global.bosses.chiyuri, [SPELL.NON]);
		c_removeitem(ITEMS.HIDE);
		music_set(mus.undertale);
	},
	menugen: function() {
		if !sparing {
			textbox_create(sparing ? txt_mercy : choose(txt_battle, txt_battle2, txt_battle3, txt_battle4), global.textchara);
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
			audio_play_sound(se_select, 0, false);
			var chiyuri = makeGenericElement(272, 386, 10, 10, s_null);
			chiyuri.draw = munction(function() {
				if global.MenuCursor.target == self {
					if c_getitembyid(ITEMS.UNDERTALE).sparing draw_set_color(c_yellow) else draw_set_color(c_white);
					draw_text(x, y, "  Chiyuri");
					draw_sprite(s_soul, 0, x+12, y+16);
					draw_set_color(c_white);
				} else {
					if c_getitembyid(ITEMS.UNDERTALE).sparing draw_set_color(c_yellow) else draw_set_color(c_white);
					draw_text(x, y, "* Chiyuri");
					draw_set_color(c_white);
				}
			})
			chiyuri.onSelect = munction(function() {
				c_getitembyid(ITEMS.UNDERTALE).fighting = true;
				audio_play_sound(se_select, 0, false);
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
			audio_play_sound(se_select, 0, false);
			var check = makeGenericElement(272, 386, 10, 10, s_null);
			check.draw = munction(function() {
				if global.MenuCursor.target == self {
					draw_text(x, y, "  Check");
					draw_sprite(s_soul, 0, x+12, y+16);
				} else {
					draw_text(x, y, "* Check");
				}
			})
			check.onSelect = munction(function() {
				textbox_create(txt_check, global.textchara, true);
				global.MenuCursor.disabled = true;
				audio_play_sound(se_select, 0, false);
			})
			var beg = makeGenericElement(572, 386, 10, 10, s_null);
			beg.draw = munction(function() {
				if global.MenuCursor.target == self {
					draw_text(x, y, "  Beg");
					draw_sprite(s_soul, 0, x+12, y+16);
				} else {
					draw_text(x, y, "* Beg");
				}
			})
			beg.onSelect = munction(function() {
				switch c_getitembyid(ITEMS.UNDERTALE).actpoint {
					case 0:
						textbox_create(txt_beg, global.textchara);
						break;
					case 1:
						textbox_create(txt_beg2, global.textchara);
						break;
					case 4:
						textbox_create(txt_beg4, global.textchara);
						break;
					default:
						textbox_create(txt_beg3, global.textchara);
						break;
				}
				audio_play_sound(se_select, 0, false);
				global.MenuCursor.disabled = true;
			})
			var reason = makeGenericElement(272, 446, 10, 10, s_null);
			reason.draw = munction(function() {
				if global.MenuCursor.target == self {
					draw_text(x, y, "  Reason");
					draw_sprite(s_soul, 0, x+12, y+16);
				} else {
					draw_text(x, y, "* Reason");
				}
			})
			reason.onSelect = munction(function() {
				switch c_getitembyid(ITEMS.UNDERTALE).actpoint {
					case 2:
						textbox_create(txt_reason2, global.textchara);
						break;
					case 3:
						textbox_create(txt_reason3, global.textchara);
						break;
					default:
						textbox_create(txt_reason, global.textchara);
						break;
				}
				audio_play_sound(se_select, 0, false);
				global.MenuCursor.disabled = true;
			})
			var order = makeGenericElement(572, 446, 10, 10, s_null);
			order.draw = munction(function() {
				if global.MenuCursor.target == self {
					draw_text(x, y, "  Order");
					draw_sprite(s_soul, 0, x+12, y+16);
				} else {
					draw_text(x, y, "* Order");
				}
			})
			order.onSelect = munction(function() {
				textbox_create(txt_order, global.textchara, true);
				global.MenuCursor.disabled = true;
				audio_play_sound(se_select, 0, false);
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
		item.onSelect = munction(function() {
			audio_play_sound(se_select, 0, false);
		})
		var mercy = makeGenericElement(1280/5*4, 640, 10, 10, s_null);
		mercy.draw = munction(function() {
			draw_sprite(s_undytale, 6+(global.MenuCursor.target==self), x, y);
		})
		mercy.onSelect = munction(function() {
			audio_play_sound(se_select, 0, false);
			var chiyuri = makeGenericElement(272, 386, 10, 10, s_null);
			chiyuri.draw = munction(function() {
				if global.MenuCursor.target == self {
					if c_getitembyid(ITEMS.UNDERTALE).sparing draw_set_color(c_yellow) else draw_set_color(c_white);
					draw_text(x, y, "  Chiyuri");
					draw_sprite(s_soul, 0, x+12, y+16);
					draw_set_color(c_white);
				} else {
					if c_getitembyid(ITEMS.UNDERTALE).sparing draw_set_color(c_yellow) else draw_set_color(c_white);
					draw_text(x, y, "* Chiyuri");
					draw_set_color(c_white);
				}
			})
			chiyuri.onSelect = munction(function() {
				if c_getitembyid(ITEMS.UNDERTALE).sparing {
					c_removeitem(ITEMS.UNDERTALE);
					textbox_create(txt_acceptence);
					audio_play_sound(se_select, 0, false);
				} else {
					c_getitembyid(ITEMS.UNDERTALE).battling = true;
					c_makeboss(global.bosses.chiyuri, [SPELL.NON]);
				}
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
		global.MenuCursor.target = fight;
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
	ordered: false,
	
	charge: 0,
	chargemax: 0,
	chargereq: 0,
	deathbombable: false,
	used: false,
	activetype: ACTIVES.NULL
}, ITEMS.UNDERTALE);