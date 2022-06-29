nu bullet("small", s_bulletsmall, 3, true, false, true, 1);
nu bullet("point", s_bulletpoint, 3, true, false, true, 1);
nu bullet("square", s_bulletsquare, 3, true, false, true, 1);
nu bullet("big", s_bullet, 3, false, false, false, 1);
nu bullet("ofuda", s_oneofuda, 1, true, true, false, .4);
nu bullet("familiarshot", s_bullet, 5, true, true, false, .3);
nu bullet("bigshot", s_bullet, 500, true, true, false, 1);
nu bullet("needle", s_needles, 1, true, true, false, .6);
nu bullet("nemesis", s_bullet, 2, true, true, false, .5);
nu bullet("circle", s_bulletcircle, 1, true, false, true, 1);
nu bullet("mycircle", s_bulletcircle, 10, true, true, true, 1);





nu bullet("smolshot", s_bullet, 1, true, false, false, 1);
nu bullet("bigerboolit", s_bigerboolit, 1, true, false, false, 1);
nu bullet("smolerboolit", s_smolerboolit, 1, true, false, false, 1);
nu bullet("naifu", s_naifu, 1, true, false, false, 1);
nu bullet("blunaifu", s_blunaifu, 1, true, false, false, 1);
nu bullet("wideamulet", s_wideamulet, 1, true, false, false, 1);
nu bullet("bluamulet", s_bluamulet, 1, true, false, false, 1);
nu bullet("smoolboolit", s_smoolboolit, 1, true, false, false, 1);

var shootConsoleCommand = function(){
	
}
var a = new consoleCommand("shoot","shoot [presetnum]",shootConsoleCommand)
//new bullet();

#macro gount global.count