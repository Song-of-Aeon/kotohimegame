//gen u items

itemgen({
	onstep: function(player=global.me) {
		if battling {
			ISAAC.state = st_standard;
			ISAAC.sprite_index = s_soul;
			ISAAC.x = clamp(ISAAC.x, bordleft, bordright);
			ISAAC.y = clamp(ISAAC.y, bordup, borddown);
			fightx = 0;
		} else {
			bordleft = 290/2-100;
			bordright = 290/2+100;
			bordup = 340/2-100;
			borddown = 340/2+100;
			ISAAC.state = c_null;
			ISAAC.sprite_index = s_null;
			if fighting {
				fightx++;
				if player.select && fightx >= 2 {
					fighting = false;
					battling = true;
					c_makeboss(global.bosses.chiyuri, [SPELL.NON]);
				}
			}
		}
	},
	ondraw: function() {
		draw_set_color(c_white);
		if fighting {
			draw_text(100+fightx, 130, "IM FIGHTBAR");
		}
		draw_line_width(bordleft, bordup, bordleft, borddown, 5);
		draw_line_width(bordleft, bordup, bordright, bordup, 5);
		draw_line_width(bordright, bordup, bordright, borddown, 5);
		draw_line_width(bordleft, borddown, bordright, borddown, 5);
	},
	onpickup: function() {
		if(!instance_exists(o_uicontroller)){
			instance_create(0,0,o_uicontroller,/*"Instances_ui"*/);
		}
		o_uicontroller.UIElements = [];
		setCursor();
		global.MenuCursor.disabled = false;
		global.MenuCursor.onBack = c_null;
		global.MenuCursor.draw = c_null;
		var fight = makeGenericElement(640/5, 280, 10, 10, s_null);
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
			global.MenuCursor.onBack = c_getitembyid(ITEMS.UNDERTALE).onpickup;
		})
		var act = makeGenericElement(640/5*2, 280, 10, 10, s_null);
		act.draw = munction(function() {
			draw_sprite(s_undytale, 2+(global.MenuCursor.target==self), x, y);
		})
		var item = makeGenericElement(640/5*3, 280, 10, 10, s_null);
		item.draw = munction(function() {
			draw_sprite(s_undytale, 4+(global.MenuCursor.target==self), x, y);
		})
		var mercy = makeGenericElement(640/5*4, 280, 10, 10, s_null);
		mercy.draw = munction(function() {
			draw_sprite(s_undytale, 6+(global.MenuCursor.target==self), x, y);
		})
		global.MenuCursor.target = fight;
	},
	name: "undertale",
	description: "undertale up",
	tooltip: "one more step right there",
	sprite: s_mistake,
	quality: 1,
	usage: ITTYPE.MECHANIC,
	bordleft: 290/2-100,
	bordright: 290/2+100,
	bordup: 340/2-100,
	borddown: 340/2+100,
	battling: false,
	fightx: 0,
	fighting: false,
	
	charge: 0,
	chargemax: 0,
	chargereq: 0,
	deathbombable: false,
	used: false,
	activetype: ACTIVES.NULL
}, ITEMS.UNDERTALE);