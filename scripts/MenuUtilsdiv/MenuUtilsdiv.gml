// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.MenuUtils = {
	distance: function(inst1,inst2,xbias){
		var sens = 10;
		var xdist = abs(inst1.x - inst2.x);
		var ydist = abs(inst1.y - inst2.y);
		if(xbias){
			xdist/=sens;
		}
		else{
			ydist/=sens;
		}
		return sqrt(sqr(xdist)+sqr(ydist));
	}
}