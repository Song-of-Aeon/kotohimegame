// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
var o = new consoleCommand("scale", "change resolution scale",function(args){
	global.scale = real(args[0]);
	surfaces_init();
});
o = new consoleCommand("skipframes", "number of frames to skip before drawing a frame ",function(args){global.surfaces.skipmod = real(args[0])});
nu consoleCommand("3dscale", "change background resolution scale",function(args){
	global.surfaces.threedeescale= real(args[0]);
	surfaces_init();
});