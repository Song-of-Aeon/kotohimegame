global.chara = ds_map_create();
global.chara[?"reimu"] = {
	defaultstats: {
		//normal stats
		shotpower:1,
		options:1,
		bulletsize:1,
		bulletspeed:1,
		agility:1,
		radius:1,
		collectionpoint:1,
		
		focusspd:1.0,
		unfocspd:2.5,
		evenspd:1.9,
	
		//bonus stats
		damage: 1,
		firerate: 1,
		defense:1,
		hitboxsize:8,
		critrate:0,
		critdmg:3,
		deathbombwindow:20,
		inventory: 12,
		 
		statcaps: {
			shotpower: 1,
			options: 4,
			agility: 4,
			radius: 4,
			collectionpoint: 4,
		},
		
		statmins:{
			shotpower:1,
			options:1,
			agility:1,
			radius:1,
			collectionpoint:1,
		}
	},
	sprite: s_null,
	startingitems: [ITEMS._STATS, ITEMS.FOCUS,],
	name: "Kotohime",
	desc: "Enigmatic Princess",
	data: ["FIGHT", "ACT"],
	menusprite: s_reimu16,
}
global.chara[?"chiyuri"] = {
	defaultstats: {
		//normal stats
		shotpower:1,
		options:1,
		bulletsize:1,
		bulletspeed:1,
		agility:1,
		radius:1,
		collectionpoint:1,
		
		focusspd:1.6,
		unfocspd:3,
		evenspd:2.3,
	
		//bonus stats
		damage: 1,
		firerate: 1,
		defense:1,
		hitboxsize:2.5,
		critrate:0,
		critdmg:3,
		deathbombwindow:20,
		inventory: 12,
		 
		statcaps: {
			shotpower: 1,
			options: 4,
			agility: 4,
			radius: 4,
			collectionpoint: 4,
		},
		
		statmins:{
			shotpower:1,
			options:1,
			agility:1,
			radius:1,
			collectionpoint:1,
		}
	},
	sprite: s_cforward,
	startingitems: [ITEMS._STATS, ITEMS.FOCUS,
	ITEMS.KAGUYAA,
	],
	name: "Kaguya",
	desc: "Lunatic",
	//data: ["AMEA System", "Bad at magic", "Good at science"],
	data: ["Moon Magic"],
	menusprite: s_scienceteam,
}



/*
global.chara[?"undertale"] = {
	defaultstats: {
		//normal stats
		shotpower:1,
		options:1,
		bulletsize:1,
		bulletspeed:1,
		agility:1,
		radius:1,
		collectionpoint:1,
		
		focusspd:1.6,
		unfocspd:3,
		evenspd:2.3,
	
		//bonus stats
		damage: 1,
		firerate: 1,
		defense:1,
		hitboxsize:2.5,
		critrate:0,
		critdmg:3,
		deathbombwindow:20,
		inventory: 4,
		 
		statcaps: {
			shotpower: 1,
			options: 4,
			agility: 4,
			radius: 4,
			collectionpoint: 4,
		},
		
		statmins:{
			shotpower:1,
			options:1,
			agility:1,
			radius:1,
			collectionpoint:1,
		}
	},
	sprite: s_rforward3,
	startingitems: [ITEMS._DEBUG, ITEMS._STATS, ITEMS._GRAZE, ITEMS._CONSOLE, ITEMS.PAUSE, ITEMS.FOCUS,
	ITEMS.GIVEITEM,
	
	],
	name: "under\ntale",
	desc: "im",
	data: ["giveitem();", "and nothing else"],
	menusprite: s_chungus16,
}*/

/*
global.chara[?"judas"] = {
	defaultstats: {
		//normal stats
		shotpower:3,
		options:5,
		bulletsize:2,
		bulletspeed:14,
		agility:2.4,
		focusspeed:2.4,
		radius:10,
		collectionpoint:50,
	
		//bonus stats
		defense:1,
		hitboxsize:4,
		critrate:0,
		critdmg:5,
		deathbombwindow:8,
	},
	sprite: s_rforward,
	startingitems: [ITEMS._SHOTPOWERNUMBERS, ITEMS.ROCKS]
}