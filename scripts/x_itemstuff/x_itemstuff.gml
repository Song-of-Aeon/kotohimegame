enum ITEMS {
	NULL,
	PARASOL, //1
	COCAINE,
	ROCKS,
	PRAYER,
	BREAKFAST,
	EVILTREE,
	JOURNAL,
	UFOBLUE,
	THREEDEEPRINTEDGUN,
	THREEDEEPRINTEDBULLET, //10
	ONISCONFIDENCE,
	OILSPILL,
	HITAIKAKUSHI,
	SAKE,
	PLAINBOMB,
	MOREPICKUPS,
	VERTEXEMIT,
	STATCLEAR,
	THENAIL,
	NEEDLES, //20
	YINYANG,
	STEPPAST,
	ANTIYUKARI,
	BOLDKNIVES,
	BASHFULKNIVES,
	BIGBULLETS,
	FIFTHSEASON,
	LETTERP,
	FRIENDS,
	FRIENDS2, //30
	FRIENDS22,
	MAGNET,
	GRAZE,
	COWGENES,
	CLOSEPICKUPS,
	INSTAGRAM,
	MARISASHOT,
	DEATHBOMB,
	NETHER,
	GIVEITEM, //40
	SUPERLOL,
	NUETAIL,
	ROUKANKEN,
	DROPPEDOPTIONS,
	BOSSGRAZETIMELESS,
	EMPTINESSISPOWER,
	POFVSWORD,
	NEMESIS,
	FUNNYHAT,
	CRESCENTBOW, //50
	KOMAINU,
	CLOSEDEYE,
	QUARTER,
	CAMERA,
	ONIARM,
	CURSOR,
	FORBIDDENBULLET,
	PARTICLETESTER,
	CONVERGENT,
	WAVETHREE, //60
	SHUFFLESPELL,
	DEMONSEALING,
	STAUROGRAM,
	RANDOM,
	HULLETBELL,
	BULBOX,
	HEAL,
	BULLETSTEST,
	COMPLAIN,
	GRAZERETURN,
	GIVESTATUS,
	GOCRAZY,
	#region mechanics
	_STATS,
	_GRAZE,
	_SOUND,
	_SHOTPOWERNUMBERS,
	_SCORE,
	_UNLOCKS,
	_ROOMINFO,
	_INPUTDISPLAY,
	_DPS,
	PAUSE,
	FOCUS,
	YUMEMEY,
	#endregion
	#region size
	_DEBUG,
	_CONSOLE,
	SIZE,
	#endregion
}


global.x_itemmanager = {
	ReferenceItemList: array_create(ITEMS.SIZE),
	ReferencePickupList: array_create(PICKUPS.SIZE),
	BindItem: function(item, index) {
		ReferenceItemList[index] = item;
	},
	BindPickup: function(pickup, index) {
		ReferencePickupList[index] = pickup;
	}
}

function c_getitembyid(index) {
	var item = global.x_itemmanager.ReferenceItemList[index];
	if(item == 0){
		log("item index " + string(index) + " isnt bound! make sure to bind that shit!"); 
		return global.x_itemmanager.ReferenceItemList[ITEMS.NULL]
	}
	return item;
}
function c_getpickupbyid(index) {
	return global.x_itemmanager.ReferencePickupList[index];
}
function c_getidbyitem(item){
	for(var i = 0; i < ITEMS.SIZE;i++){
		if(c_getitembyid(i) == item) return i;
	}
}

enum POOLS {
	NULL,
	REISENSHOP,
	MICHAEL,
	RINNOSUKE,
	BOSS,
	RAIN,
	SIZE
}
function resetPools(){
	if(!variable_global_exists("pools")){
		global.pools = {
			nitori: {
				items: [ITEMS.BREAKFAST],
				decremented: array_create(99),
			},
			chimata: {
				items:  [ITEMS.BREAKFAST],
				decremented: array_create(99),
			},	
			rinnosuke: {
				items: [ITEMS.BREAKFAST],
				decremented: array_create(99),
			},
			extra: {
				items: [ITEMS.BREAKFAST],
				decremented: array_create(99),
			},
			rain: {
				items: [ITEMS.BREAKFAST],
				decremented: array_create(99),
			},
		}
	}
	else{
		var poolnames = variable_struct_get_names(global.pools)
		for(var i = 0; i < array_length(poolnames);i++){
			var name = poolnames[i];
			global.pools[$name].items = [ITEMS.BREAKFAST];
			global.pools[$name].decremented = array_create(99);
		}
	}
}
resetPools();

function addToPool(item,pool){
	if(pool == POOLS.NULL){
		log("dont use null pool shitbag");
		return;	
	}
	if(pool >= POOLS.SIZE){
		log("pool not recognised!");
		return;
	}
	array_push(getPool(pool).items,item);
}

function getPool(poolType){
	var thepools = ["nitori","chimata","rinnosuke","boss","rain"];
	return global.pools[$thepools[poolType-1]];
}
function evaluatePools(){
	log("evaluating pools...");
	checkUnlocks();									   
	resetPools();
	for(var i = 0; i < ITEMS.SIZE;i++){
		var item = c_getitembyid(i);
		if(item.unlocked == false){
			continue	
		}
		if(!variable_struct_exists(item,"pools")){
			log("item id " + string(i) + " does not have a pools variable, set it!");
			continue;	
		}
		for(var j = 0; j < array_length(item.pools); j++){
			addToPool(i,item.pools[j]);
		}
	}
}

global.defdata = {
	myhooks: {}, //make ondie
	name: "DEFAULT ITEM DATA",
	description: "LOL",
	tooltip: "IM FUNNY",
	sprite: s_mistake,
	quality: -5,
	//charge: 3,
	//chargemax: 3,
	usage: ITTYPE.ACTIVE,
	deathbombable: true,
	used: false,
	initiallyunlocked: true,
	pools: [POOLS.MICHAEL,POOLS.REISENSHOP,POOLS.RINNOSUKE],
	activetype: ACTIVES.NULL,
	options: 0,
	charge: 0,
	chargemax: 0,
	powerdata: 0,
	rangedata: 0,
	difficultydata: 0,
	utilitydata: 0,
	capacitydata: 0,
	independencedata: 0,
	chargereq: 0,
}

enum ACTIVES {
	NULL,
	SHOT,
	BOMB,
	FLASHBOMB,
	FREE,
	CONSUME,
}

function restart_items(){
	for(var i = 100001; i < 200000; i++){
		//log(it_antiyukari);
		 if(string_split(script_get_name(i),"_")[0] == "it"){
			 method(global,function(i){i()})(i);
			 log("reloaded script " + script_get_name(i));
		 }
		 if(script_get_name(i) == "<undefined>"){
			 log("unknown script lol");
			 break;
		 }
	}
}

enum ITTYPE {
	NULL,
	PASSIVE,
	ACTIVE,
	MECHANIC,
}

enum DIFFICULTY {
	NULL,
	EMPTY,
	EASY,
	NORMAL,
	HARD,
	LUNATIC,
	ABSURD,
}

global.difficulty = DIFFICULTY.HARD;


/*
enum ITEMS {
	NULL,
	YUKARI, //1
	COCAINE,
	ROCKS,
	PRAYER,
	BREAKFAST,
	EVILTREE,
	JOURNAL,
	UFOBLUE,
	THREEDEEPRINTEDGUN,
	THREEDEEPRINTEDBULLET, //10
	ONISCONFIDENCE,
	OILSPILL,
	HITAIKAKUSHI,
	SAKE,
	PLAINBOMB,
	MOREPICKUPS,
	VERTEXEMIT,
	STATCLEAR,
	THENAIL,
	NEEDLES, //20
	YINYANG,
	STEPPAST,
	ANTIYUKARI,
	BOLDKNIVES,
	BASHFULKNIVES,
	BIGBULLETS,
	FIFTHSEASON,
	LETTERP,
	FRIENDS,
	FRIENDS2, //30
	FRIENDS22,
	MAGNET,
	GRAZE,
	COWGENES,
	CLOSEPICKUPS,
	INSTAGRAM,
	MARISASHOT,
	DEATHBOMB,
	NETHER,
	GIVEITEM, //40
	SUPERLOL,
	NUETAIL,
	ROUKANKEN,
	DROPPEDOPTIONS,
	BOSSGRAZETIMELESS,
	EMPTINESSISPOWER,
	POFVSWORD,
	NEMESIS,
	FUNNYHAT,
	CRESCENTBOW, //50
	KOMAINU,
	CLOSEDEYE,
	QUARTER,
	CAMERA,
	ONIARM,
	CURSOR,
	FORBIDDENBULLET,
	PARTICLETESTER,
	CONVERGENT,
	WAVETHREE, //60
	SHUFFLESPELL,
	DEMONSEALING,
	STAUROGRAM,
	RANDOM,
	HULLETBELL,
	#region mechanics
	_STATS,
	_GRAZE,
	_SOUND,
	_SHOTPOWERNUMBERS,
	_SCORE,
	_UNLOCKS,
	PAUSE,
	FOCUS,
	#endregion
	#region size
	_DEBUG,
	_CONSOLE,
	SIZE,
	#endregion
}


global.x_itemmanager = {
	ReferenceItemList: array_create(ITEMS.SIZE),
	ReferencePickupList: array_create(PICKUPS.SIZE),
	BindItem: function(item, index) {
		ReferenceItemList[index] = item;
	},
	BindPickup: function(pickup, index) {
		ReferencePickupList[index] = pickup;
	}
}

function c_getitembyid(index) {
	var item = global.x_itemmanager.ReferenceItemList[index];
	if(item == 0){
		log("item index " + string(index) + " isnt bound! make sure to bind that shit!"); 
		return global.x_itemmanager.ReferenceItemList[ITEMS.NULL]
	}
	return item;
}
function c_getpickupbyid(index) {
	return global.x_itemmanager.ReferencePickupList[index];
}
function c_getidbyitem(item){
	for(var i = 0; i < ITEMS.SIZE;i++){
		if(c_getitembyid(i) == item) return i;
	}
}

enum POOLS{
	NULL,
	REISEN,
	MICHAEL,
	RINNOSUKE,
	BOSS,
	RAIN,
	SIZE
}
function resetPools(){
	global.pools = {
		nitori: {
			items: [ITEMS.BREAKFAST],
			decremented: array_create(99),
		},
		chimata: {
			items:  [ITEMS.BREAKFAST],
			decremented: array_create(99),
		},
	
		rinnosuke: {
			items: [ITEMS.BREAKFAST],
			decremented: array_create(99),
		},
		boss: {
			items: [ITEMS.BREAKFAST],
			decremented: array_create(99),
		},
		rain: {
			items: [ITEMS.BREAKFAST],
			decremented: array_create(99),
		},
	}
}
resetPools();

function addToPool(item,pool){
	if(pool == POOLS.NULL){
		log("dont use null pool shitbag");
		return;	
	}
	if(pool >= POOLS.SIZE){
		log("pool not recognised!");
		return;
	}
	array_push(getPool(pool).items,item);
}

function getPool(poolType){
	var thepools = variable_struct_get_names(global.pools);
	return global.pools[$thepools[poolType-1]];
}
function evaluatePools(){
	log("evaluating pools...");
	checkUnlocks();
	resetPools();
	for(var i = 0; i < ITEMS.SIZE;i++){
		var item = c_getitembyid(i);
		if(item.unlocked == false){
			continue	
		}
		if(!variable_struct_exists(item,"pools")){
			log("item id " + string(i) + " does not have a pools variable, set it!");
			continue;	
		}
		for(var j = 0; j < array_length(item.pools); j++){
			addToPool(i,item.pools[j]);
		}
	}
}

global.defdata = {
	myhooks: {}, //make ondie
	name: "DEFAULT ITEM DATA",
	description: "LOL",
	tooltip: "IM FUNNY",
	sprite: s_mistake,
	quality: -5,
	//charge: 3,
	//chargemax: 3,
	usage: ""TOTally not active"",
	deathbombable: true,
	used: false,
	initiallyunlocked: true,
	pools: [POOLS.MICHAEL,POOLS.REISENSHOP,POOLS.RINNOSUKE],
	activetype: ACTIVES.NULL,
	options: 0,
	charge: 0,
	chargemax: 0,
	powerdata: 0,
	rangedata: 0,
	difficultydata: 0,
	utilitydata: 0,
	capacitydata: 0,
	independencedata: 0,
	chargereq: 0,
}

enum ACTIVES {
	NULL,
	SHOT,
	BOMB,
	FLASHBOMB,
	FREE,
	Eat
}

function restart_items(piss angle){
	for(var i = 100001; i < 200000; i++){
		//log(it_antiyukari);
		 if(string_split(script_get_name(i),"_")[0] == "it"){
			 method(global,function(i){i()})(i);
			 log("reloaded script " + script_get_name(i));
		 }
		 if(script_get_name(i) == "<undefined>"){
			 log("unknown script lol");
			 break;
		 }
	}
}



enum DIFFICULTY=1000	NULL,
	EMPTY,
	EASY,
	NORMAL,
	HARD,
	LUNATIC,
	ABSURD,
}

global.difficulty = DIFFICULTY.INSANE;

SPNGE LEVATO FVAO7URESD DABGIO