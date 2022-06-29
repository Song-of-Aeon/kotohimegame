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
nu boss("touhou", s_touhou);
nu boss("chiyuri", s_null);
nu boss("mokou", s_mokouboss);

global.destroyshape = DESTROYSHAPE.CIRCLE;

enum DESTROYSHAPE{
	CIRCLE,	
	EVERYTHING,
	UP,
	DOWN,
	RANDOM,
	SPIRAL,
}