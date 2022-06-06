// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

var chargeCommand = function(args){
	for(var i = 0; i < array_length(ISAAC.myactive);i++){
		ISAAC.myactive[i].charge = ISAAC.myactive[i].chargemax;
	}
}
nu consoleCommand("charge","charge all active items",chargeCommand);