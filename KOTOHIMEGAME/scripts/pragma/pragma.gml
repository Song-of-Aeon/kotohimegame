global.bullets = {};
global.lasers = {};
global.hitscans = {};
global.chains = {};
global.enemies = {};
global.spells = [{},{},{},{},{},{},{},];
global.nonspells = [{},{},{},{},{},{},{},];
global.spellnames = ds_map_create();
global.bosses = {};
global.roomnames = ds_map_create();

nu boss("aunn", s_impossibleaunn);
nu boss("reisen", s_impossiblereisen);
nu boss("yumemi", s_impossibleyumemi);

global.destroyshape = DESTROYSHAPE.CIRCLE;

enum DESTROYSHAPE{
	CIRCLE,	
	EVERYTHING,
	UP,
	DOWN,
	RANDOM,
	SPIRAL,
}