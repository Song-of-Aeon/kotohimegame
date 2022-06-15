//gen u items

itemgen({
	onstep: function(player=global.me) {
		if battling {
			ISAAC.state = st_standard;
			ISAAC.sprite_index = s_soul;
			ISAAC.x = clamp(x, bordleft, bordright);
			ISAAC.y = clamp(y, borddown, bordup);
		} else {
			ISAAC.state = c_null;
			ISAAC.sprite_index = s_null;
		}
	},
	onpickup: function() {
		if(!instance_exists(o_uicontroller)){
			instance_create(0,0,o_uicontroller,/*"Instances_ui"*/);
		}
		global.MenuCursor.disabled = false;
		global.MenuCursor.target = noone;
		setCursor();
		o_uicontroller.UIElements = [];
		var fight = makeGenericElement(100, 200, 10, 10, s_null);
		fight.draw = function() {
			if global.MenuCursor.target == self {
				draw_text(x, y, "FIGHT!");
			} else {
				draw_text(x, y, "FIGHT");
			}
		}
		var act = makeGenericElement(200, 200, 10, 10, s_null);
		act.draw = function() {
			if global.MenuCursor.target == self {
				draw_text(x, y, "ACT!");
			} else {
				draw_text(x, y, "ACT");
			}
		}
		var item = makeGenericElement(300, 200, 10, 10, s_null);
		item.draw = function() {
			if global.MenuCursor.target == self {
				draw_text(x, y, "ITEM!");
			} else {
				draw_text(x, y, "ITEM");
			}
		}
		var mercy = makeGenericElement(400, 200, 10, 10, s_null);
		mercy.draw = function() {
			if global.MenuCursor.target == self {
				draw_text(x, y, "MERCY!");
			} else {
				draw_text(x, y, "MERCY");
			}
		}
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
	
	charge: 0,
	chargemax: 0,
	chargereq: 0,
	deathbombable: false,
	used: false,
	activetype: ACTIVES.NULL
}, ITEMS.UNDERTALE);