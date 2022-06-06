surface_set_target(global.surfaces.HUD);
var xpos = 40-scroll;
var ypos = 30;
var xat = 0;
var yat = 0;
var xdif = 220;
var ydif = 60;

draw_text((xat*xdif)+xpos, (yat++*ydif)+ypos, "Game clears:\n    " + string(STATS.runswon));
draw_text((xat*xdif)+xpos, (yat++*ydif)+ypos, "Damage dealt:\n    " + string(STATS.damagedealt));
draw_text((xat*xdif)+xpos, (yat++*ydif)+ypos, "Enemies defeated:\n    " + string(STATS.fairieskilled));
draw_text((xat++*xdif)+xpos, (yat++*ydif)+ypos, "Bosses defeated:\n    " + string(STATS.bosswins));
yat=0;
draw_text((xat*xdif)+xpos, (yat++*ydif)+ypos, "Losses:\n    " + string(STATS.losses));
draw_text((xat*xdif)+xpos, (yat++*ydif)+ypos, "Damage taken:\n    " + string(STATS.damagetaken));
draw_text((xat*xdif)+xpos, (yat++*ydif)+ypos, "Deaths:\n    " + string(STATS.deaths));
var shits = gcd(STATS.bosskd[0], STATS.bosskd[1]);
draw_text((xat++*xdif)+xpos, (yat++*ydif)+ypos, "Boss K:D:\n    " + string(STATS.bosskd[0]/shits) + ":" + string(STATS.bosskd[1]/shits));
yat=0;
draw_text((xat*xdif)+xpos, (yat++*ydif)+ypos, "Items acquired:\n    " + string(STATS.itemsacquired));
draw_text((xat*xdif)+xpos, (yat++*ydif)+ypos, "Items bought:\n    " + string(STATS.itemsbought));
draw_text((xat*xdif)+xpos, (yat++*ydif)+ypos, "Items sold:\n    " + string(STATS.itemssold));
draw_text((xat++*xdif)+xpos, (yat++*ydif)+ypos, "Favorite item:\n    " + c_getitembyid(array_greatest(STATS.favoriteitem)).name);
yat=0;
draw_text((xat*xdif)+xpos, (yat++*ydif)+ypos, "Pickups picked up:\n    " + string(STATS.statsgotten));
draw_text((xat*xdif)+xpos, (yat++*ydif)+ypos, "Stats sold:\n    " + string(STATS.statssold));
draw_text((xat++*xdif)+xpos, (yat++*ydif)+ypos, "Credit spent:\n    " + string(STATS.moneyspent));
yat=0;
draw_text((xat*xdif)+xpos, (yat++*ydif)+ypos, "Playtime:\n    " + format_time(STATS.playtime/60));
draw_text((xat*xdif)+xpos, (yat++*ydif)+ypos, "Amount of inputs:\n    " + string(STATS.inputs));
draw_text((xat*xdif)+xpos, (yat++*ydif)+ypos, "Stats:\n    " + string(STATS.stats));
draw_text((xat*xdif)+xpos, (yat++*ydif)+ypos, "Impostors remaining:\n    " + string(STATS.impostorsremaining));
draw_text((xat*xdif)+xpos, (yat++*ydif)+ypos, "World line:\n    " + STATS.worldline);
//draw_text((xat*xdif)+xpos, (yat++*ydif)+ypos, ":\n    " + string(STATS.));


if scroll > 0 {
	draw_text(40, 330, "<- More");
}
if scroll < scrollmax {
	draw_text(520, 330, "More ->");
}
surface_reset_target();