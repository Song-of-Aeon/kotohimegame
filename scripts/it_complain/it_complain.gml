//gen u items

itemgen({
	ondeathbomb: function() {
		
	},
	onshopgen: function() {
		
	},
	onbomb: function() {
		
	},
	onroomclear: function() {
		
	},
	ondeathbomb: function() {
		
	},
	
	onhit: function(player=global.me) {
		var dudetext = function() {endevent = c_null msg=txt("shouldnt happen|w60")};
		switch irandom(5) {
			case 0:
				dudetext = function() {endevent = c_null msg=txt("Noo!|w60")};
				break;
			case 1:
				dudetext = function() {endevent = c_null msg=txt("So fucking close!|w60")};
				break;
			case 2:
				dudetext = function() {endevent = c_null msg=txt("Nua! The hell!?|w60")};
				break;
			case 3:
				dudetext = function() {endevent = c_null msg=txt("Fuck...|w60")};
				break;
			case 4:
				dudetext = function() {endevent = c_null msg=txt("Dammit!|w60")};
				break;
			case 5:
				dudetext = function() {endevent = c_null msg=txt("God damnit...|w60")};
				break;
		}
		var dude = textbox_create(dudetext, global.textshop, false);
		
		dude.x = player.x + irandom(200)-100;
		dude.y = player.y + irandom(200)-100;
	},
	ondie: function(player=global.me) {
		var dudetext = function() {endevent = c_null msg=txt("shouldnt happen|w60")};
		switch irandom(5) {
			case 0:
				dudetext = function() {endevent = c_null msg=txt("Ow!|w60")};
				break;
			case 1:
				dudetext = function() {endevent = c_null msg=txt("Watch it!|w60")};
				break;
			case 2:
				dudetext = function() {endevent = c_null msg=txt("Shit!|w60")};
				break;
			case 3:
				dudetext = function() {endevent = c_null msg=txt("You're bustin my balls here.|w60")};
				break;
			case 4:
				dudetext = function() {endevent = c_null msg=txt("Fuck off!|w60")};
				break;
			case 5:
				dudetext = function() {endevent = c_null msg=txt("Gah.|w60")};
				break;
		}
		var dude = textbox_create(dudetext, global.textshop, false);
		
		dude.x = player.x + irandom(200)-100;
		dude.y = player.y + irandom(200)-100;
	},
	name: "complain",
	description: "talk up",
	tooltip: "it's boshy time!",
	sprite: s_mistake,
	quality: 1,
	usage: ITTYPE.MECHANIC,
	
	charge: 0,
	chargemax: 0,
	chargereq: 0,
	deathbombable: false,
	used: false,
	activetype: ACTIVES.NULL
}, ITEMS.COMPLAIN);