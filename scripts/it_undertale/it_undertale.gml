//gen u items

itemgen({
	onstep: function(player=global.me) {
		if battling {
			bordleft = 290/2-60;
			bordright = 290/2+60;
			bordup = 340/2-60;
			borddown = 340/2+60;
			ISAAC.state = st_standard;
			ISAAC.sprite_index = s_soul;
			ISAAC.x = clamp(ISAAC.x, bordleft+8, bordright-8);
			ISAAC.y = clamp(ISAAC.y, bordup+8, borddown-8);
			fightx = 0;
		} else {
			bordleft = 640/5-175;
			bordright = 640/5*4-175;
			bordup = 180;
			borddown = 260;
			ISAAC.state = c_null;
			ISAAC.sprite_index = s_null;
			if fighting {
				fightx++;
				if (player.select && fightx >= 2) || fightx >= bordright-bordleft {
					bosshp -= floor(abs(fightx-(bordright-bordleft)/2)/5);
					log(bosshp);
					if bosshp <= 0 {
						textbox_create(txt_hajime);
						c_removeitem(ITEMS.UNDERTALE);
						exit;
					}
					fighting = false;
					battling = true;
					textbox_create(txt_sans, global.texttale);
					c_makeboss(global.bosses.chiyuri, [SPELL.NON]);
				}
			}
		}
	},
	ondraw: function() {
		draw_set_color(c_white);
		surface_set_target(global.surfaces.HUD);
		if fighting {
			draw_text_transformed(bordleft+175+fightx, 130, "IM FIGHTBAR", 1, 1, 270);
		}
		draw_line_width(bordleft+175, bordup+10-2.5, bordleft+175, borddown+10+2.5, 5);
		draw_line_width(bordleft+175, bordup+10, bordright+175, bordup+10, 5);
		draw_line_width(bordright+175, bordup+10-2.5, bordright+175, borddown+10+2.5, 5);
		draw_line_width(bordleft+175, borddown+10, bordright+175, borddown+10, 5);
		draw_text(bordleft, 300, "KOTOHIME");
		draw_text(bordleft+80, 300, "LV 1");
		draw_text(bordleft+160, 300, "HP");
		draw_set_color(c_red);
		draw_rectangle(bordleft+180, 300-8, bordleft+20, 300+8, false);
		draw_set_color(c_yellow);
		draw_rectangle(bordleft+180, 300-8, bordleft+20, 300+8, false);
		surface_reset_target();
	},
	onpickup: function() {
		battling = true;
		textbox_create(txt_sans, global.texttale);
		c_makeboss(global.bosses.chiyuri, [SPELL.NON]);
	},
	menugen: function() {
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
		var fight = makeGenericElement(640/5, 320, 10, 10, s_null);
		fight.draw = munction(function() {
			draw_sprite(s_undytale, 0+(global.MenuCursor.target==self), x, y);
		})
		fight.onSelect = munction(function() {
			var chiyuri = makeGenericElement(200, 150, 10, 10, s_null);
			chiyuri.draw = munction(function() {
				if global.MenuCursor.target == self {
					draw_text(x, y, "* chiyuri!");
				} else {
					draw_text(x, y, "* chiyuri");
				}
			})
			chiyuri.onSelect = munction(function() {
				c_getitembyid(ITEMS.UNDERTALE).fighting = true;
				destroy();
				global.MenuCursor.disabled = true;
			})
			o_uicontroller.UIElements[0].options.selectable = false;
			o_uicontroller.UIElements[1].options.selectable = false;
			o_uicontroller.UIElements[2].options.selectable = false;
			o_uicontroller.UIElements[3].options.selectable = false;
			setCursor();
			global.MenuCursor.disabled = false;
			global.MenuCursor.onBack = c_getitembyid(ITEMS.UNDERTALE).menugen;
		})
		var act = makeGenericElement(640/5*2, 320, 10, 10, s_null);
		act.draw = munction(function() {
			draw_sprite(s_undytale, 2+(global.MenuCursor.target==self), x, y);
		})
		var item = makeGenericElement(640/5*3, 320, 10, 10, s_null);
		item.draw = munction(function() {
			draw_sprite(s_undytale, 4+(global.MenuCursor.target==self), x, y);
		})
		var mercy = makeGenericElement(640/5*4, 320, 10, 10, s_null);
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
	bordleft: 290/2-60,
	bordright: 290/2+60,
	bordup: 340/2-60,
	borddown: 340/2+60,
	battling: false,
	fightx: 0,
	fighting: false,
	bosshp: 5,
	
	charge: 0,
	chargemax: 0,
	chargereq: 0,
	deathbombable: false,
	used: false,
	activetype: ACTIVES.NULL
}, ITEMS.UNDERTALE);